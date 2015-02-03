/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.controller.spring;

import com.ensa.model.controller.ImageDao;
import com.ensa.model.controller.UserDAO;
import org.apache.shiro.authz.UnauthenticatedException;
import org.hibernate.exception.JDBCConnectionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Iob
 */
@Controller
public class RootController {



    //to be removed
    @RequestMapping("/")
    public String index() {
        //Subject currentUser = SecurityUtils.getSubject();
        return "redirect:/index";
    }


    @RequestMapping("/forgot")
    public String forgot() {
        return "forgot";

    }



    @RequestMapping("/about")
    public String about() {
        return "about";
    }

    @RequestMapping("/404")
    public String erreur() {
        return "404";
    }

    @ExceptionHandler(UnauthenticatedException.class)
    public String shiroUnauthenticatedException() {
        return "index";
    }

    @ExceptionHandler(JDBCConnectionException.class)
    public String handleJDBCError(JDBCConnectionException exception) {
        exception.printStackTrace();
        return "404";
    }

    @ExceptionHandler(Exception.class)
    public String handleGlobalError(Exception exception) {
        exception.printStackTrace();
        return "404";
    }
}
