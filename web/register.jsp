<%-- 
    Document   : register
    Created on : Apr 11, 2023, 7:40:37 PM
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
        <section class="d-flex register container-sm justify-content-center align-items-center px-md-5 col-md-9">

            <form class="container" method="post" onsubmit="return formValidation()"> 
                <h1 class="text-center border-bottom">SIGN UP</h1>

                <!-- Name input -->
                <div class="form-outline mb-2 row">
                    <div class="col-lg-5">
                        <label class="form-label" for="registerFirstName">First Name</label>
                        <input type="text" id="registerFirstName" class="form-control" placeholder="Characters only, min. of  1" required/>
                    </div>
                    <div class="col-lg-5 col-sm-8">
                        <label class="form-label" for="registerLastName">Last Name</label>
                        <input type="text" id="registerLastName" class="form-control" placeholder="Characters only, min. of  2" required/>
                    </div>
                    <div class="col-lg-2 col-sm-4">
                        <label class="form-label" for="registerMiddleName">Middle Name</label>
                        <input type="text" id="registerMiddleName" class="form-control" placeholder="Characters only"/>
                    </div>

                </div>

                <!-- Username input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerUsername">Username</label>
                    <input type="text" id="registerUsername" class="form-control" placeholder="Minimum of 4, maximum of 12" required/>
                </div>

                <!-- Password input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerPassword">Password</label>
                    <input type="password" id="registerPassword" class="form-control" placeholder="Type your password" required />
                </div>

                <!-- Repeat Password input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerRepeatPassword">Repeat password</label>
                    <input type="password" id="registerRepeatPassword" class="form-control" placeholder="Repeat your password" required />

                </div>

                <!-- Address input -->
                <div class="form-outline mb-2">
                    <label class="form-label" for="registerAddress">Complete Address</label>
                    <input type="address" id="registerAddress" class="form-control" placeholder="Type your address" required/>

                </div>

                <!-- Birthday input -->
                <div class="form-outline mb-2 row">
                    <div class="col-6">
                        <label class="form-label" for="registerBirthday">Birthday</label>
                        <input type="date" id="registerBrithday" class="form-control" required/>
                    </div>
                    <div class="col-6">
                        <label class="form-label" for="registerNumber">Mobile Number</label>
                        <input type="number" id="registerNumber" class="form-control" placeholder="11-digit numbers only." required/>
                    </div>


                </div>


                <!-- Submit button -->
                <button type="submit" class="btn btn-primary btn-block mb-3 col-12 mt-3">REGISTER</button>

                <div class="text-center">
                    <p>Already have an account? <a href="index.jsp">LOGIN</a></p>
                </div>

            </form>

            <script>
                var charactersonly = /^[A-Za-z]+$/;

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
                    } else if (registerLastName.length < 2) {
                        alert("Last name must be 2 or more characters.");
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
                    } else if (registerUsername.length > 12) {
                        alert("Username will not accept characters beyond 12.");
                        return false;
                    }

                    $(document).ready(function () {
                        $("#registerAddress").on("input", function () {
                            var inputVal = $(this).val();
                            var regex = /^[a-zA-Z0-9\s]+$/;
                            if (!regex.test(inputVal)) {
                                $(this).val(inputVal.replace(/[^a-zA-Z0-9\s]/g, ''));
                            }
                        });
                    });

                    var registerNumber = $("#registerNumber").val();
                    console.log("Number: " + registerNumber);
                    if (registerNumber.length !== 11) {
                        alert("Number must be 11 digits only.");
                        return false;
                    } else if (isNaN(registerNumber)) {
                        alert("Number must be numeric.");
                        return false;
                    }
                    // Input fields validated
                    alert("Success!");
                    return true;
                }

            </script>

        </section>

        <jsp:include page="footer.jsp"/>
        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>