/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.model;

/**
 *
 * @author Ze Familee
 */
public class CustomerModel {

    private int productID;
    private String productName;
    private String productDescription;
    private String productSize;
    private double productPrice;
    private int productQuantity;

    public CustomerModel(
            int productID, String productName, String productDescription, String productSize, double productPrice, int productQuantity) {
        this.productID = productID;
        this.productName = productName;
        this.productDescription = productDescription;
        this.productSize = productSize;
        this.productPrice = productPrice;
        this.productQuantity = productQuantity;
    }

    public int getproductID() {
        return productID;
    }

    public void setproductID(int productID) {
        this.productID = productID;
    }

    public String getproductName() {
        return productName;
    }

    public void setproductName(String productName) {
        this.productName = productName;
    }

    public String getproductDescription() {
        return productDescription;
    }

    public void setproductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public String getproductSize() {
        return productSize;
    }

    public void setproductSize(String productSize) {
        this.productSize = productSize;
    }

    public double getproductPrice() {
        return productPrice;
    }

    public void setproductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public int getproductQuantity() {
        return productQuantity;
    }

    public void setproductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

}
