/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.exception;

/**
 *
 * @author Olayinka
 */
public class UserAlreadyExistException extends Exception {

    public UserAlreadyExistException(String email) {
        super("User with email " + email + " already exists in the database.");
    }

}
