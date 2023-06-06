<section class="d-flex container justify-content-center align-items-center">

    <form class="container" method="post" onsubmit="return formValidation()" action="${pageContext.request.contextPath}/user">

        <!-- form input -->
        <div class="form-outline mb-2 row">
            <div class="">
                <label class="form-label" for="UID">User ID</label>
                <input type="text" id="UID" class="form-control" name="userID" required="True" maxlength="5"/>
            </div>
            <div class="">
                <label class="form-label" for="UFN">First Name</label>
                <input type="text" id="UFN" class="form-control" placeholder="Characters only." name="userFN" required="True"/>
            </div>
            <div class="">
                <label class="form-label" for="UMN">Middle Name</label>
                <input type="text" id="UMN" class="form-control" placeholder="Characters only." name="userMN"/>
            </div>
            <div class="">
                <label class="form-label" for="ULN">Last Name</label>
                <input type="text" id="ULN" class="form-control" name="userLN" placeholder="Characters only."" required="True"/>
            </div>
            <div class="">
                <label class="form-label" for="userR">User Role</label>
                <input type="text" id="userR" class="form-control" placeholder="" name="userRole" required="True"/>
            </div>
        </div>  

        <script>
            var charactersOnly = /^[a-zA-Z\s]+$/;

            function formValidation() {
                var UFN = $("#UFN").val();
                console.log("First Name" + UFN);
                if (!UFN.match(charactersOnly)) {
                    alert("First Name must contain characters only.");
                    return false;
                }

                var UMN = $("#UMN").val();
                console.log("Middle Name" + UMN);
                if (!UMN.match(charactersOnly)) {
                    alert("Middle Name must contain characters only.");
                    return false;
                }

                var ULN = $("#ULN").val();
                console.log("Last Name" + ULN);
                if (!ULN.match(charactersOnly)) {
                    alert("Last Name must contain characters only.");
                    return false;
                }

                return true;
            }


        </script>
</section>