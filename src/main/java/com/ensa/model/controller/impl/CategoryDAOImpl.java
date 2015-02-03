/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.model.controller.impl;

import com.ensa.model.Category;
import com.ensa.model.Image;
import com.ensa.model.controller.CategoryDAO;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Iob
 */
@Repository
@Service
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

    private static final Logger logger = LoggerFactory.getLogger(ImageDAOImpl.class);

    @Autowired
    SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    @Override
    public List<Category> getAllCategiries() {
        List<Category> cats = null;
        Transaction tr=null;
        try {
            Session session = this.sessionFactory.getCurrentSession();
            tr = session.beginTransaction();
            cats = session.createQuery("from Category").list();
            tr.commit();
        } catch (Exception e) {
            tr.rollback();
            e.printStackTrace();
        }
        return cats;
    }

    @Override
    public Category getName(String name) {
        Transaction tr=null;
        try {
            Session session = this.sessionFactory.getCurrentSession();
            tr = session.beginTransaction();
            Query q = session.createQuery("from Category c WHERE c.name=:name");
            q.setParameter("name", name);
            List<Category> cats = q.list();
            tr.commit();
            if (!cats.isEmpty()) {
                return cats.get(0);
            }
        } catch (Exception e) {
            tr.rollback();
            e.printStackTrace();
        }
            return null;

    }

}
