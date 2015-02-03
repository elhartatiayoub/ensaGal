package com.ensa.exception;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Olayinka
 */
public class UrlException extends Exception {

    public UrlException(String this_question_doesnt_exist) {
        super(this_question_doesnt_exist);
    }
}
