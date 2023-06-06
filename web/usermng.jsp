<%-- 
    Document   : usermng
    Created on : Jun 4, 2023, 5:09:37 PM
    Author     : Ze Familee
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <div class="container" style="padding-top: 100px;">
            <h1>User Management</h1>
            <form id="searchForm">
                <div class="form-group mb-2">
                    <label for="inputProductID">User ID:</label>
                    <input type="text" class="form-control" id="inputUserID" name="uuid">
                </div>
                <div class="form-group mb-2">
                    <label for="inputProductName">Username:</label>
                    <input type="text" class="form-control" id="inputUserName" name="unname">
                </div>
                <button type="submit" class="btn btn-primary">SEARCH</button>
            </form>
        </div>



        <section class="d-flex container-lg justify-content-center">
            <!-- Table List -->
            <div class="container mt-5">
                <p class='text-center'><c:out value="${message}"/></p>
                <h2 class="text-center">User List</h2>
                <table id="userTable" class="table">
                    <thead>
                        <tr>
                            <th>User ID</th>        
                            <th>Username</th>
                            <th>Description</th>
                            <th>User Role</th>
                            <th>Login Status</th>
                            <th>Account Status</th>
                        </tr>
                    </thead>
                    <tbody id='userList' class="mb-3" style='height: 45vh;'>
                        <tr>
                            <td><c:out value="${user.userID}"/></td>
                            <td></td>
                            <td></td>
                            <td><c:out value="${user.userRole}"/></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <!-- Add table rows dynamically using JavaScript or server-side code -->
                    </tbody>
                </table>
                <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#userformModal">ADD USER</button>
            </div>
        </section>

        <!-- Modal -->
        <div class="modal fade" id="userformModal" tabindex="-1" aria-labelledby="userformModalLabel" aria-hidden="true" >
            <div class="modal-dialog">
                <div class="modal-content">

                    <form class="container" method="post" onsubmit="return userformValidation()" action="${pageContext.request.contextPath}/user">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="userformModalLabel">User Form</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <jsp:include page="userform.jsp"/>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                        
                </div>
            </div>
        </div>


        <jsp:include page="footer.jsp"/>
        <script src = "js/bootstrap.bundle.min.js" ></script>
    </body>
</html>