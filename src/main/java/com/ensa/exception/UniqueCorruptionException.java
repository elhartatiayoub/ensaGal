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
public class UniqueCorruptionException extends Exception {

    public UniqueCorruptionException(String table, String column) {
        super("Unique identifier of  " + table + "." + column + " is corrupted.");
    }

}
