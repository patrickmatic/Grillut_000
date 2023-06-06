<%-- 
    Document   : login
    Created on : Apr 11, 2023, 6:34:16 PM
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
        
        <p hidden id="message"><c:out value="${message}"/></p>

        <section class="d-flex login container-sm justify-content-center align-items-center col-md-6">
            <form class="col-8" method="post" action="${pageContext.request.contextPath}/home">
                <h1 class="text-center border-bottom">LOGIN</h1>
                <fieldset>
                    <!-- Email input -->
                    <div class="form-outline mb-2">
                        <label class="form-label h6" for="login_user">USERNAME</label>
                        <input type="text" id="login_user" class="form-control" placeholder="Username" required="True">

                    </div>

                    <!-- Password input -->
                    <div class="form-outline">
                        <label class="form-label h6" for="login_password">PASSWORD</label>
                        <input type="password" id="login_password" class="form-control"  placeholder="Password" required="True">
                    </div>

                    <!-- 2 column grid layout for inline styling -->
                    <div class="row mb-4">
                        <div class="col d-flex justify-content-center">
                        </div>

                        <div class="col">
                        </div>
                    </div>
                </fieldset>

                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-4 col-12">LOGIN</button>

                <!-- Register buttons -->
                <div class="text-center">
                    <p>Don't have an account? <a href="http://localhost:8080/GrillutNPM/customer/registration">REGISTER</a></p>
                </div>
            </form>

        </section>

        <script>
            console.log($("#message").text());

            if ($("#message").text()) {

                setTimeout(function () {
                    alert($("#message").text());
                }, 500);
            }
        </script>

        <jsp:include page="footer.jsp"/>
        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>