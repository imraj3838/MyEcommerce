/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package c.mycompany.mavenproject1.dao;

import c.mycompany.mavenproject1.entities.User;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class UserDao {
    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public User getUserByEmailAndPassword(String email,String password){
        User user = null;
        try{
            String query = ("from User where userEmail = :e and userPassword = :p");
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e",email);
            q.setParameter("p",password);
            user = (User) q.getSingleResult();       
            session.close();
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
