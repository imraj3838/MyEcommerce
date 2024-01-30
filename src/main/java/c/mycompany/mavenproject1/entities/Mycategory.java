/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package c.mycompany.mavenproject1.entities;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.*;
import javax.persistence.OneToMany;
/**
 *
 * @author rajpr
 */
@Entity
public class Mycategory {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int cId;
    private String cTitle;
    @Column(length = 3000)
    private String cDescription;
    @OneToMany(mappedBy = "Mycategory")
    private List<Product>products = new ArrayList<>();

    public Mycategory(int cId, String cTitle, String cDescription) {
        this.cId = cId;
        this.cTitle = cTitle;
        this.cDescription = cDescription;
    }

    public Mycategory(String cTitle, String cDescription,List<Product>products) {
        this.cTitle = cTitle;
        this.cDescription = cDescription;
        this.products = products;
    }

    public Mycategory() {
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getcTitle() {
        return cTitle;
    }

    public void setcTitle(String cTitle) {
        this.cTitle = cTitle;
    }

    public String getcDescription() {
        return cDescription;
    }

    public void setcDescription(String cDescription) {
        this.cDescription = cDescription;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
    

    @Override
    public String toString() {
        return "Mycategory{" + "cId=" + cId + ", cTitle=" + cTitle + ", cDescription=" + cDescription + '}';
    }
    
    
    
}
