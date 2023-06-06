<%-- 
    Document   : products
    Created on : Apr 11, 2023, 6:34:26 PM
    Author     : Matic
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
            <h1>Product Search</h1>
            <form id="searchForm">
                <div class="form-group mb-2">
                    <label for="inputProductID">Product ID:</label>
                    <input type="text" class="form-control" id="inputProductID" name="id">
                </div>
                <div class="form-group mb-2">
                    <label for="inputProductName">Product Name:</label>
                    <input type="text" class="form-control" id="inputProductName" name="name">
                </div>
                <button type="submit" class="btn btn-primary">SEARCH</button>
            </form>
        </div>



        <section class="d-flex container-lg justify-content-center">
            <!-- Table List -->
            <div class="container mt-5">
                <p class='text-center'><c:out value="${message}"/></p>
                <h2 class="text-center">Product List</h2>
                <table id="productTable" class="table">
                    <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Description</th>
                            <th>Size</th>
                            <th>Price</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>
                    <tbody id='productList' class="mb-3" style='height: 45vh;'>
                        <tr>
                            <td><c:out value="${product.productID}"/></td>
                            <td><c:out value="${product.productName}"/></td>
                            <td><c:out value="${product.productDescription}"/></td>
                            <td><c:out value="${product.productSize}"/></td>
                            <td><c:out value="${product.productPrice}"/></td>
                            <td><c:out value="${product.productQuantity}"/></td>
                        </tr>
                        <!-- Add table rows dynamically using JavaScript or server-side code -->
                    </tbody>
                </table>
                <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#prdformModal">ADD PRODUCT</button>
            </div>
        </section>

        <!-- Modal -->
        <div class="modal fade" id="prdformModal" tabindex="-1" aria-labelledby="prdformModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <form class="container" method="post" onsubmit="return prdformValidation()" action="${pageContext.request.contextPath}/products">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="prdformModalLabel">Product Form</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <div class="modal-body">
                            <jsp:include page="prdform.jsp"/>
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