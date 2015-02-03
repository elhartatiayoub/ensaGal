/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.controller.shiro;

import com.ensa.model.User;
import java.io.Serializable;

/**
 *
 * @author Olayinka
 */
public class UserPrincipal implements Serializable {

    String displayName;
    String email;
    private Integer id;

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public UserPrincipal() {
    }

    public UserPrincipal(User user) {
        displayName = user.getName();
        email = user.getEmail();
        id = user.getID();
    }

    public Integer getId() {
        return id;
    }

}
