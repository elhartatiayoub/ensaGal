/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.model.controller;

import com.ensa.model.Role;

/**
 *
 * @author Iob
 */
public interface RoleDAO {
    public Role getRoleByID(int id);
    public Role getRoleByName(String name);
    public boolean addRole(Role role);
    
}
