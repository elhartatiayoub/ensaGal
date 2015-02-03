/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ensa.model.controller.impl;

import com.ensa.model.Role;
import com.ensa.model.controller.RoleDAO;
import java.util.List;
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
public class RoleDAOImpl implements RoleDAO {

    private static final Logger logger = LoggerFactory.getLogger(RoleDAOImpl.class);

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }

    @Override
    public Role getRoleByID(int id) {
        String hql = "FROM Role I WHERE I.id=:id";
        Role role = null;
        Session session = sessionFactory.getCurrentSession();
        Transaction t = session.beginTransaction();
        Query q = session.createQuery(hql);
        q.setParameter("id", id);
        List<Role> l = q.list();
        if (!l.isEmpty()) {
            return l.get(0);
        } else {
            return null;
        }
    }

    @Override
    public Role getRoleByName(String name) {
        String hql = "FROM Role I WHERE I.name=:name";
        Role role = null;
        Transaction t = null;
        try {
            Session session = sessionFactory.getCurrentSession();
            t = session.beginTransaction();
            Query q = session.createQuery(hql);
            q.setParameter("name", name);
            List<Role> l = q.list();
            t.commit();
            if (!l.isEmpty()) {
                return l.get(0);
            } else {
                return null;
            }
        } catch (RuntimeException e) {
            t.rollback();
            throw e;
        }

    }

    @Override
    public boolean addRole(Role role) {
        Session session = sessionFactory.getCurrentSession();
        Transaction t = session.beginTransaction();
        try {
            session.persist(role);
            t.commit();
            return true;
        } catch (Exception e) {
            logger.warn("Role not added successfully, Role Details=" + role);
            return false;
        }

    }

}
