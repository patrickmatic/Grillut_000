/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.dao;

import ph.pup.itech.grillut.model.UserModel;

/**
 *
 * @author Matic
 */
public class UserDao {

    public UserModel getUserDetails(UserModel user) {
        UserModel userDetails;

        String userID = user.getuserID();
        String userFirstName = user.getuserFirstName();
        String userMiddleName = user.getuserMiddleName();
        String userLastName = user.getuserLastName();
        String userRole = user.getuserRole();
        userDetails = new UserModel(userID, userFirstName, userMiddleName, userLastName, userRole);
        return userDetails;
    }
}
