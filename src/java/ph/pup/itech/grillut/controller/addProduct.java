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

public class addProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String productName = request.getParameter("productName");
        String productID = request.getParameter("productID");
        String productDescription = request.getParameter("productDescription");
        String productSize = request.getParameter("productSize");
        String productPrice = request.getParameter("productPrice");
        String productQuantity = request.getParameter("productQuantity");
        
        request.setAttribute("productName", productName);
        request.setAttribute("productID", productID);
        request.setAttribute("productDescription", productDescription);
        request.setAttribute("productSize", productSize);
        request.setAttribute("productPrice", productPrice);
        request.setAttribute("productQuantity", productQuantity);

        System.out.println(productName + " with " + productID + " has been added to inventory.");

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/products.jsp");
        rd.forward(request, response);
        
        request.setAttribute("productAdded", true);
        
        
//        response.getWriter().println(productName + " with " + productID + " has been added to inventory.");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
