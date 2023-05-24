/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.grillut.dao;

import ph.pup.itech.grillut.model.ProductModel;

/**
 *
 * @author Ze Familee
 */
public class ProductDao {

    public ProductModel getProductDetails(ProductModel product) {
        ProductModel prdDetails;
        int productID = product.getproductID();
        String productName = product.getproductName();
        String productDescription = product.getproductDescription();
        String productSize = product.getproductSize();
        double productPrice = product.getproductPrice();
        int productQuantity = product.getproductQuantity();
        prdDetails = new ProductModel(productID, productName, productDescription, productSize, productPrice, productQuantity);
        System.out.println("Customer Details: " + prdDetails);
        return prdDetails;
    }

}
