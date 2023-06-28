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
import ph.pup.itech.grillut.dao.UserDao;
import ph.pup.itech.grillut.model.UserModel;

public class UserPage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/user/add":
                getUser(request, response);
                break;
            default:
                showForm(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void getUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userID = request.getParameter("userID");
        String userFirstName = request.getParameter("userFN");
        String userMiddleName = request.getParameter("userMN");
        String userLastName = request.getParameter("userLN");
        String userRole = request.getParameter("userRole");

        UserModel user = new UserModel(
                userID, userFirstName, userMiddleName, userLastName, userRole);
        UserDao userDao = new UserDao();
        UserModel getUser = userDao.getUserDetails(user);

        String message = getUser.getuserID() + " user has been added.";

        request.setAttribute("user", getUser);
        request.setAttribute("message", message);

        System.out.println(message);

        RequestDispatcher rd = getServletContext().getRequestDispatcher("/usermng.jsp");
        rd.forward(request, response);
    }

    private void showForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/usermng.jsp");
        rd.forward(request, response);
    }

}
