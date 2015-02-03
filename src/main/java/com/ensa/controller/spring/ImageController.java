/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.ensa.controller.spring;


import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import com.ensa.form.*;
import com.ensa.model.Image;
import com.ensa.model.controller.CategoryDAO;
import com.ensa.model.controller.ImageDao;
import java.util.Date;
import java.util.List;
import javax.validation.Valid;
import org.apache.shiro.authz.annotation.RequiresUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Iob
 */
@Controller
public class ImageController {

    @Autowired
    ImageDao imageDao;
    
    @Autowired
    CategoryDAO categoryDao;
    
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String getAlldImages(Model m) {
        List<Image> images = imageDao.getAllImages();
        m.addAttribute("images", images);
        m.addAttribute("page", 0);
        return "index";
    }

    @RequestMapping(value = "/index/liked", method = RequestMethod.GET)
    public String getLikedImages(Model m) {
        List<Image> images = imageDao.getLikedImages();
        m.addAttribute("images", images);
        //  m.addAttribute("page", 1);
        return "index";
    }

    @RequestMapping(value = "/index/download", method = RequestMethod.GET)
    public String getDownloadedImages(Model m) {
        List<Image> images = imageDao.getDownloadedImages();
        m.addAttribute("images", images);
        m.addAttribute("page", 1);
        return "index";
    }

//    @RequiresUser
    @RequestMapping(value = "/image/add", method = RequestMethod.GET)
    public String addImage(Model model) {
        model.addAttribute("categories", categoryDao.getAllCategiries());
        return "addImage";
    }

    @RequiresUser
    @RequestMapping(value = "/image/add", method = RequestMethod.POST)
    public String addImageSubmit(@Valid @ModelAttribute("imageAddForm") ImageAddForm imageAddForm, Model model, BindingResult result) {
        if (imageAddForm != null) {
            
                String rootPath = System.getProperty("catalina.home");
                File dir = new File(rootPath + File.separator + "tmpFiles");
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                try {
                    // Create the file on server
                    String url = dir.getAbsolutePath()
                            + File.separator + imageAddForm.getUrl().getOriginalFilename();
                    File serverFile = new File(url);
                    BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
                    stream.write(imageAddForm.getUrl().getBytes());
                    stream.close();
                    
                    Image image = new Image();
                    image.setDate(new Date());
                    image.setDescription(imageAddForm.getDescription());
                    image.setDownloads(0);
                    image.setKeywords(imageAddForm.getKeywords());
                    image.setLikes(0);
                    image.setShares(0);
                    image.setTitle(imageAddForm.getTitle());
                    image.setUrl(url);
                    image.setCategory(imageAddForm.getCategory());
                    
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        return "index";
        }
    

    @RequestMapping(value = "/image/detail/{id}", method = RequestMethod.GET)
    public String getImageById(@PathVariable int id, Model m) {
        m.addAttribute("image", imageDao.getImageById(id));
        return null;
    }

}
