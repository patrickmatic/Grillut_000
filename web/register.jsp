<%-- 
    Document   : register
    Created on : Apr 11, 2023, 7:40:37 PM
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
        <section class="d-flex register container-sm justify-content-center align-items-center px-md-5 col-md-9">

            <form class="container" method="post" onsubmit="return formValidation()" action="${pageContext.request.contextPath}/customer/registration"> 
                <h1 class="text-center border-bottom">SIGN UP</h1>

                <!-- Name input -->
                <div class="form-outline mb-2 row">
                    <div class="col-lg-5">
                        <label class="form-label" for="registerFirstName">First Name</label>
                        <input type="text" id="registerFirstName" name="registerFirstName" class="form-control" placeholder="Characters only, min. of  1" required/>
                    </div>
                    <div class="col-lg-5 col-sm-8">
                        <label class="form-label" for="registerLastName">Last Name</label>
                        <input type="text" id="registerLastName" name="registerLasteName" class="form-control" placeholder="Characters only, min. of  2" required/>
                    </div>
                    <div class="col-lg-2 col-sm-4">
                        <label class="form-label" for="registerMiddleName">Middle Name</label>
                        <input type="text" id="registerMiddleName" name="registerMiddleName" class="form-control" placeholder="Characters only"/>
                    </div>

                </div>

                <!-- Username input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerUsername">Preferred Username</label>
                    <input type="text" id="registerUsername" name="registerUsername" class="form-control" placeholder="Minimum of 4, maximum of 5" required/>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerPassword">Password</label>
                    <input type="password" id="registerPassword" name="registerPassword" class="form-control" placeholder="Type your password" required />
                </div>

                <!-- Repeat Password input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerRepeatPassword">Confirm Password</label>
                    <input type="password" id="registerRepeatPassword" class="form-control" placeholder="Repeat your password" required />

                </div>

                <!-- Address input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerAddress">Complete Address</label>
                    <input type="address" id="registerAddress" name="registerAddress" class="form-control" placeholder="Type your address" required/>

                </div>

                <!-- Birthday input -->
                <div class="form-outline mb-2 row">
                    <div class="col-6">
                        <label class="form-label" for="registerBirthday">Birthday</label>
                        <input type="date" id="registerBrithday" name="registerBirthday" class="form-control" required/>
                    </div>
                    <div class="col-6">
                        <label class="form-label" for="registerNumber">Mobile Number</label>
                        <input type="number" id="registerNumber" name="registerNumber" class="form-control" placeholder="11-digit numbers only." required/>
                    </div>
                </div>


                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-3 col-12 mt-3">REGISTER</button>

                <div class="text-center">
                    <p>Already have an account? <a href=${pageContext.request.contextPath}>LOGIN</a></p>
                </div>

            </form>

            <!--Validation-->
            <script>
                var charactersonly = /^[A-Za-z\s]+$/;
                var uppercase = /[A-Z]/;
                var lowercase = /[a-z]/;
                var number = /[0-9]/;
                var specialChar = /[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?]+/;

                function formValidation() {
                    var registerFirstName = $("#registerFirstName").val();
                    console.log("First Name: " + registerFirstName);
                    if (!registerFirstName.match(charactersonly)) {
                        alert("First name must contain characters only.");
                        return false;
                    }

                    var registerLastName = $("#registerLastName").val();
                    console.log("Last Name: " + registerLastName);
                    if (!registerLastName.match(charactersonly)) {
                        alert("Last name must contain characters only.");
                        return false;
                    }

                    var registerMiddleName = $("#registerMiddleName").val();
                    console.log("Middle Name: " + registerMiddleName);
                    if (registerMiddleName !== '' && !registerMiddleName.match(charactersonly)) {
                        alert("Middle name must contain characters only.");
                        return false;
                    }

                    var registerUsername = $("#registerUsername").val();
                    console.log("Username: " + registerUsername);
                    if (registerUsername.length < 4) {
                        alert("Username must be 4 or more characters.");
                        return false;
                    } else if (registerUsername.length > 5) {
                        alert("Username will not accept characters beyond 5.");
                        return false;
                    }

                    var registerPassword = $("#registerPassword").val();
                    console.log("{Password: " + registerPassword);
                    if (registerPassword.length < 8) {
                        alert("Password must be atleast 8 characters.");
                        return false;
                    } else if (registerPassword.length > 16) {
                        alert("Password will not accept character beyond 16.");
                        return false;
                    } else if (!registerPassword.match(uppercase)) {
                        alert("Password must contain atleast 1 uppercase letter.");
                        return false;
                    } else if (!registerPassword.match(lowercase)) {
                        alert("Password must contain atleast 1 lowercase letter.");
                        return false;
                    } else if (!registerPassword.match(number)) {
                        alert("Password must contain atleast 1 number.");
                        return false;
                    } else if (!registerPassword.match(specialChar)) {
                        alert("Password must contain atleast 1 special character.");
                        return false;
                    }

                    var registerRepeatPassword = $("#registerRepeatPassword").val();
                    console.log("{Repeat Password: " + registerRepeatPassword);
                    if (registerRepeatPassword !== registerPassword) {
                        alert("Password do not match.");
                        return false;
                    }

                    var registerNumber = $("#registerNumber").val();
                    console.log("Number: " + registerNumber);
                    if (registerNumber.length !== 11) {
                        alert("Number must be 11 digits only.");
                        return false;
                    } else if (isNaN(registerNumber)) {
                        alert("Number must be numeric.");
                        return false;
                    }
                    
                    return true;
                }

            </script>

        </section>



        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>