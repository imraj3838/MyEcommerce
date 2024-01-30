
package c.mycompany.mavenproject1.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    @Column(length = 20,name="user_Id")
    private int userId;
    @Column(length = 20,name="user_Name")
    private String userName;
    @Column(length = 200,name="user_Email")
    private String userEmail;
    @Column(length = 20,name="user_Password")
    private String userPassword;
    @Column(length = 20,name="user_Phone")
    private String userPhone;
    @Column(length = 200,name="user_Pic")
    private String UserPic;
    @Column(length = 2000,name="user_Address")
    private String UserAddress;

    public User(int userId, String userName, String userEmail, String userPassword, String userPhone, String UserPic, String UserAddress) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.UserPic = UserPic;
        this.UserAddress = UserAddress;
    }

    public User(String userName, String userEmail, String userPassword, String userPhone, String UserPic, String UserAddress) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.UserPic = UserPic;
        this.UserAddress = UserAddress;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPic() {
        return UserPic;
    }

    public void setUserPic(String UserPic) {
        this.UserPic = UserPic;
    }

    public String getUserAddress() {
        return UserAddress;
    }

    public void setUserAddress(String UserAddress) {
        this.UserAddress = UserAddress;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", userName=" + userName + ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", UserPic=" + UserPic + ", UserAddress=" + UserAddress + '}';
    }
    
    
    
}
