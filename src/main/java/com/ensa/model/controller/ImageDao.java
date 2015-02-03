package com.ensa.model.controller;


import com.ensa.model.Image;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


public interface ImageDao {
        public void addImage(Image img);
	public void updateImage(Image img);
        public Image getImageById(int id);
        public List<Image> getAllImages();
        public List<Image> getPublicImages(); 
	public void removeImage(int id);
        public List<Image> getDownloadedImages();
        public List<Image> getLikedImages();
    
}
