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

    public CustomerModel getCustomerDetails(CustomerModel customer) {
        CustomerModel cusDetails;
        int productID = customer.getproductID();
        String productName = customer.getproductName();
        String productDescription = customer.getproductDescription();
        String productSize = customer.getproductSize();
        double productPrice = customer.getproductPrice();
        int productQuantity = customer.getproductQuantity();
        cusDetails = new CustomerModel(productID, productName, productDescription, productSize, productPrice, productQuantity);
        System.out.println("Customer Details: " + cusDetails);
        return cusDetails;
    }

}
