/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.dao;

import ph.pup.itech.grillut.model.RegisterModel;

/**
 *
 * @author Matic
 */
public class RegisterDao {

    public RegisterModel getRegisterDetails(RegisterModel register) {
        RegisterModel registerDetails;
        String registerFirstName = register.getregisterFirstName();
        String registerMiddleName = register.getregisterMiddleName();
        String registerLastName = register.getregisterLastName();
        String registerUsername = register.getregisterUsername();
        String registerPassword = register.getregisterPassword();
        String registerAddress = register.getregisterAddress();
        String registerBirthday = register.getregisterBirthday();
        String registerNumber = register.getregisterNumber();
        registerDetails = new RegisterModel(registerFirstName, registerMiddleName, registerLastName, registerUsername, registerPassword, registerAddress, registerBirthday, registerNumber);
        return registerDetails;
    }
}
