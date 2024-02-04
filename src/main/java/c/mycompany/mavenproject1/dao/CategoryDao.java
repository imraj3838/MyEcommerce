/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package c.mycompany.mavenproject1.dao;

import c.mycompany.mavenproject1.entities.Mycategory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author rajpr
 */
public class CategoryDao {
    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    public  int saveCategory(Mycategory cat){
        int temp = 0;
        try{
             Session session = this.factory.openSession();
    Transaction tx = session.beginTransaction();
    int catId = (int)session.save(cat);
    tx.commit();
    session.close();
    temp = catId;
        }catch(Exception e){
           e.printStackTrace();
        }
     return temp;  
    }
    
    
}
