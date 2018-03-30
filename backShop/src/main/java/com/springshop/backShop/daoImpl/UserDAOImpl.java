package com.springshop.backShop.daoImpl;

import com.springshop.backShop.dao.UserDAO;
import com.springshop.backShop.dto.Address;
import com.springshop.backShop.dto.Cart;
import com.springshop.backShop.dto.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userDAO")
@Transactional
public class UserDAOImpl implements UserDAO {
    @Autowired
    private SessionFactory sessionFactory;



    @Override
    public boolean addUser(User user) {
        try{
            sessionFactory.getCurrentSession().persist(user);
            return true;
        }catch(Exception ex) {

            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public User getByEmail(String email) {
        String selectQuery = "FROM User where email= :email";
        try{
            return sessionFactory.getCurrentSession().createQuery(selectQuery,User.class).setParameter("email",email).getSingleResult();
        }catch(Exception ex){
            ex.printStackTrace();
            return null;
        }

    }

    @Override
    public boolean addAddress(Address address) {
        try{
            sessionFactory.getCurrentSession().persist(address);
            return true;
        }catch(Exception ex) {

            ex.printStackTrace();
            return false;
        }

    }

    @Override
    public boolean updateCart(Cart cart) {
        try{
            sessionFactory.getCurrentSession().update(cart);
            return true;
        }catch(Exception ex) {

            ex.printStackTrace();
            return false;
        }
    }
}