<%-- 
    Document   : login
    Created on : Apr 11, 2023, 6:34:16 PM
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
                  <p>Don't have an account? <a href="register.jsp">REGISTER</a></p>
                </div>
            </form>
            
        </section>
        
        <jsp:include page="footer.jsp"/>
        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>