/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.dao;

import ph.pup.itech.grillut.model.EmployeeModel;

/**
 *
 * @author Ze Familee
 */
public class EmployeeDao {

    public EmployeeModel getEmployeeDetails(EmployeeModel employee) {
        EmployeeModel empDetails;
        int employeeId = employee.getEmployeeId();
        String firstName = employee.getFirstName();
        String middleName = employee.getMiddleName();
        String lastName = employee.getLastName();
        empDetails = new EmployeeModel(employeeId, firstName, middleName, lastName);
        System.out.println("empDetails: " + empDetails);
        return empDetails;
    }

    public String getEmployeeId() {
        String employeeId = null;
        return employeeId;
    }

}
