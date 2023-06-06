/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.model;

/**
 *
 * @author Matic
 */
public class RegisterModel {

    private final String registerFirstName;
    private final String registerMiddleName;
    private final String registerLastName;
    private final String registerUsername;
    private final String registerPassword;
    private final String registerAddress;
    private final String registerBirthday;
    private final String registerNumber;

    public RegisterModel(
            String registerFirstName, String registerMiddleName, String registerLastName, String registerUsername, String registerPassword, String registerAddress, String registerBirthday, String registerNumber) {
        this.registerFirstName = registerFirstName;
        this.registerMiddleName = registerMiddleName;
        this.registerLastName = registerLastName;
        this.registerUsername = registerUsername;
        this.registerPassword = registerPassword;
        this.registerAddress = registerAddress;
        this.registerBirthday = registerBirthday;
        this.registerNumber = registerNumber;
    }

    public String getregisterFirstName() {
        return registerFirstName;
    }

    public String getregisterMiddleName() {
        return registerMiddleName;
    }

    public String getregisterLastName() {
        return registerLastName;
    }

    public String getregisterUsername() {
        return registerUsername;
    }

    public String getregisterPassword() {
        return registerPassword;
    }

    public String getregisterAddress() {
        return registerAddress;
    }

    public String getregisterBirthday() {
        return registerBirthday;
    }

    public String getregisterNumber() {
        return registerNumber;
    }

}
