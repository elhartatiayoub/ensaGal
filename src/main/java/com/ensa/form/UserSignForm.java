/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.ensa.form;

import java.util.logging.Logger;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Sara
 */
public class UserSignForm {
    @NotNull
    String username;
    @NotNull
    String pass;
    @AssertTrue
    boolean field;

    public void setField(boolean field) {
        this.field = field;
    }

    public boolean isField() {
        return field;
    }

    public String getUsername() {
        return username;
    }

    public String getPass() {
        return pass;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}
