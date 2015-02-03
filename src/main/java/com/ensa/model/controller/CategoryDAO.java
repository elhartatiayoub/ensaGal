package com.ensa.model.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.ensa.model.Category;
import java.util.List;

/**
 *
 * @author Iob
 */
public interface CategoryDAO {
    
    public List<Category> getAllCategiries();
    public Category getName(String name);
}
