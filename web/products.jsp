<%-- 
    Document   : products
    Created on : Apr 11, 2023, 6:34:26 PM
    Author     : Matic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Grillut</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--        bootstrap css-->
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap" rel="stylesheet">
        <!--        jquery-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>


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
                    <tbody id='productList' class="mb-3" style='height: 25vh;'>
                        <tr>
                            <td>${productID}</td>
                            <td>${productName}</td>
                            <td>${productDescription}</td>
                            <td>${productSize}</td>
                            <td>${productPrice}</td>
                            <td>${productQuantity}</td>
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
                </div>
            </div>
        </div>

<!--        <script>
            if(${productAdded == 'true'}){
              alert(${productName} + " with " + ${productID} + " has been added to inventory.");
            }
        </script>-->
    </div>



    <jsp:include page="footer.jsp"/>
    <script src = "js/bootstrap.bundle.min.js" ></script>
</body>
</html>