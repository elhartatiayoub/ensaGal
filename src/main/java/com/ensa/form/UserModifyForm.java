/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ensa.form;

import java.io.File;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;

/**
 *
 * @author Sara
 */
public class UserModifyForm {
    @Size(min = 3, max = 15)
    String nom;
    @Size(min = 3, max = 15)
    String username;
    @Email
    @NotNull
    String email;
    File avatar;
    String description;
    @Size(min = 6, max = 32)
    @NotNull
    String oldpass;
    @Size(min = 6, max = 32)
    @NotNull
    String newpass;
    @Size(min = 6, max = 32)
    @NotNull
    String confNew;

    public String getNom() {
        return nom;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getDescription() {
        return description;
    }

    public String getOldpass() {
        return oldpass;
    }

    public String getNewpass() {
        return newpass;
    }

    public String getConfNew() {
        return confNew;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setOldpass(String oldpass) {
        this.oldpass = oldpass;
    }

    public void setNewpass(String newpass) {
        this.newpass = newpass;
    }

    public void setConfNew(String confPass) {
        this.confNew = confPass;
    }
    
    public File getAvatar() {
        return avatar;
    }

    public void setAvatar(File avatar) {
        this.avatar = avatar;
    }
    
    
    
}
