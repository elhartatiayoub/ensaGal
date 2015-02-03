package com.ensa.model.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.ensa.model.Comment;
import com.ensa.model.Image;
import java.util.List;

/**
 *
 * @author Iob
 */
public interface CommentDAO {

    public List<Comment> getCommentByImage(Image image);

    public boolean addComment(String text, int imageID);

    public boolean deleteComment(int commentID);

}
