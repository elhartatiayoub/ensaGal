package com.ensa.model.controller.impl;



import com.ensa.controller.shiro.UserPrincipal;
import com.ensa.model.User;
import com.ensa.model.controller.UserDAO;
import java.util.List;
import org.apache.shiro.SecurityUtils;
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

@Repository
@Service
@Transactional
public class UserDAOImpl implements UserDAO {

    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);

    private final SessionFactory sessionFactory;

    @Autowired
    public UserDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addUser(User u) {
        Transaction t = null;
        try {
            Session session = this.sessionFactory.getCurrentSession();
            t = session.beginTransaction();
            session.persist(u);
            t.commit();
        } catch (RuntimeException e) {
            t.rollback();
            throw e;
        }
    }

    @Override
    public void updateUser(User p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
        logger.info("Person updated successfully, Person Details=" + p);
    }

    @Override
    public User getUser(String email, String pass) {
        String hql = "FROM User E WHERE E.email = :email";
        Query query = sessionFactory.openSession().createQuery(hql);

        query.setParameter("email", email);
        List results = query.list();
        if (results.isEmpty()) {
            return null;
        } else {
            return (User) results.get(0);
        }
    }

    @Override
    public List<User> getUserByName(String name) {
        String hql = "FROM User E WHERE E.name = :name";
        Query query = sessionFactory.openSession().createQuery(hql);
        query.setParameter("name", name);
        List results = query.list();
        return results;
    }

    @Override
    public void removeUser(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<User> getAllUsers() {
        Transaction t = null;
        try {
            Session session = this.sessionFactory.getCurrentSession();
            t = session.beginTransaction();
            List<User> personsList = session.createQuery("from User").list();
            t.commit();
            return personsList;
        } catch (RuntimeException e) {
            t.rollback();
            throw e;
        }
    }

    @Override
    public User getCurrentUser() {
        UserPrincipal principal = (UserPrincipal) SecurityUtils.getSubject().getPrincipal();
        if (principal == null) {
            return null;
        }
        User user = (User) getCurrentSession().get(User.class, principal.getId());
        if (user == null) {
            SecurityUtils.getSubject().logout();
        }
        return user;
    }
}
