/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.model;

/**
 *
 * @author Matic
 */
public class UserModel {

    private String userID;
    private String userFirstName;
    private String userMiddleName;
    private String userLastName;
    private String userRole;

    public UserModel(
            String userID, String userFirstName, String userMiddleName, String userLastName, String userRole) {
        this.userID = userID;
        this.userFirstName = userFirstName;
        this.userMiddleName = userMiddleName;
        this.userLastName = userLastName;
        this.userRole = userRole;
    }

    public String getuserID() {
        return userID;
    }

    public void setuserID(String userID) {
        this.userID = userID;
    }

    public String getuserFirstName() {
        return userFirstName;
    }

    public void setuserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    public String getuserMiddleName() {
        return userMiddleName;
    }

    public void setuserMiddleName(String userMiddleName) {
        this.userMiddleName = userMiddleName;
    }

    public String getuserLastName() {
        return userLastName;
    }

    public void setuserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    public String getuserRole() {
        return userRole;
    }

    public void setuserRole(String userRole) {
        this.userRole = userRole;
    }

}
