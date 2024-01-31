
package c.mycompany.mavenproject1.entities;

import java.util.Locale.Category;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Product {
    
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int pId;
    private String pTitle;
    @Column(length = 3000)
    private String pDescription;
    private String pPhoto;
    private String Pprice;
    private String pDiscount;
    private String pQuantity;
    @ManyToOne
    private Mycategory category;

    public Product(int pId, String pTitle, String pDescription, String pPhoto, String Pprice, String pDiscount, String pQuantity, Mycategory category) {
        this.pId = pId;
        this.pTitle = pTitle;
        this.pDescription = pDescription;
        this.pPhoto = pPhoto;
        this.Pprice = Pprice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
        this.category = category;
    }

    public Product(String pTitle, String pDescription, String pPhoto, String Pprice, String pDiscount, String pQuantity) {
        this.pTitle = pTitle;
        this.pDescription = pDescription;
        this.pPhoto = pPhoto;
        this.Pprice = Pprice;
        this.pDiscount = pDiscount;
        this.pQuantity = pQuantity;
    }

    public Product() {
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpDescription() {
        return pDescription;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public String getpPhoto() {
        return pPhoto;
    }

    public void setpPhoto(String pPhoto) {
        this.pPhoto = pPhoto;
    }

    public String getPprice() {
        return Pprice;
    }

    public void setPprice(String Pprice) {
        this.Pprice = Pprice;
    }

    public String getpDiscount() {
        return pDiscount;
    }

    public void setpDiscount(String pDiscount) {
        this.pDiscount = pDiscount;
    }

    public String getpQuantity() {
        return pQuantity;
    }

    public void setpQuantity(String pQuantity) {
        this.pQuantity = pQuantity;
    }

    public Mycategory getCategory() {
        return category;
    }

    public void setCategory(Mycategory category) {
        this.category = category;
    }

   

    @Override
    public String toString() {
        return "Product{" + "pId=" + pId + ", pTitle=" + pTitle + ", pDescription=" + pDescription + ", pPhoto=" + pPhoto + ", Pprice=" + Pprice + ", pDiscount=" + pDiscount + ", pQuantity=" + pQuantity + '}';
    }
    
    
    
}
