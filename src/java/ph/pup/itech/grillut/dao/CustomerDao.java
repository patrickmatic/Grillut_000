/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.dao;

import ph.pup.itech.grillut.model.CustomerModel;

/**
 *
 * @author Ze Familee
 */
public class CustomerDao {

    public CustomerModel getCustomerDetails(CustomerModel employee) {
        CustomerModel cusDetails;
        int customerId = employee.getCustomerId();
        String firstName = employee.getFirstName();
        String middleName = employee.getMiddleName();
        String lastName = employee.getLastName();
        cusDetails = new CustomerModel(customerId, firstName, middleName, lastName);
        System.out.println("cusDetails: " + cusDetails);
        return cusDetails;
    }

    public String getCustomerId() {
        String employeeId = null;
        return employeeId;
    }

}
