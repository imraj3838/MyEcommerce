
package c.mycompany.mavenproject1.entities;
import java.util.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Category {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int cId;
    private String cTitle;
    private String cDescription;
    @OneToMany(mappedBy ="category")
    private List<Product>products = new ArrayList<>();

    public Category(int cId, String cTitle, String cDescription) {
        this.cId = cId;
        this.cTitle = cTitle;
        this.cDescription = cDescription;
    }

    public Category(String cTitle, String cDescription,List<Product>products) {
        this.cTitle = cTitle;
        this.cDescription = cDescription;
        this.products = products;
    }

    public Category() {
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
        return "Category{" + "cId=" + cId + ", cTitle=" + cTitle + ", cDescription=" + cDescription + '}';
    }
    
    
}
