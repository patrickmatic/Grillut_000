/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.pup.itech.grillut.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.grillut.model.CustomerModel;
import ph.pup.itech.grillut.dao.CustomerDao;

public class addProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getCustomer(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getCustomer(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String productDescription = request.getParameter("productDescription");
        String productSize = request.getParameter("productSize");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));

        CustomerModel customer = new CustomerModel(
                productID, productName, productDescription, productSize, productPrice, productQuantity);
        CustomerDao customerDao = new CustomerDao();
        CustomerModel getCustomer = customerDao.getCustomerDetails(customer);
        
        String message = getCustomer.productName + " with " + getCustomer.productID + " has been added to inventory.";
        
        request.setAttribute("customer", getCustomer);
        request.setAttribute("message", message);
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/products.jsp");
        rd.forward(request, response);
    }
}
