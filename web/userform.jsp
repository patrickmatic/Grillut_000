<section class="d-flex container justify-content-center align-items-center">

    <form class="container" method="post" onsubmit="return usrformValidation()" action="${pageContext.request.contextPath}/usermng">

        <!-- form input -->
        <div class="form-outline mb-2 row">
            <div class="">
                <label class="form-label" for="UID">User ID</label>
                <input type="text" id="UID" class="form-control" placeholder="Must be alphanumeric and have atleast 5 characters" name="userID" required="True" maxlength="5"/>
            </div>
            <div class="">
                <label class="form-label" for="UFN">First Name</label>
                <input type="text" id="UFN" class="form-control" placeholder="Must contain letters only and have at least 1 character." name="userFN" required="True"/>
            </div>
            <div class="">
                <label class="form-label" for="UMN">Middle Name</label>
                <input type="text" id="UMN" class="form-control" placeholder="Must contain letters only and have at least 1 character." name="userMN"/>
            </div>
            <div class="">
                <label class="form-label" for="ULN">Last Name</label>
                <input type="text" id="ULN" class="form-control" name="userLN" placeholder="Must contain letters only and have at least 1 character."" required="True"/>
            </div>
            <div class="">
                <label class="form-label" for="userR">User Role</label>
                <input type="text" id="userR" class="form-control" placeholder="" name="userRole" required="True"/>
            </div> 
            
         <script>
                var charactersOnly = /^[a-zA-Z\s]+$/;
          
            function usrformValidation(){
                var UFN = $ ("#UFN").val();
                console.log("User Firstname" + UFN);
                if (!UFN.match(charactersOnly)) {
                    alert("Firstname must contain characters only.");
                } else if (UFN.length < 1 ){
                    return false;
                }       
                
                var UMN = $ ("#UMN").val();
                console.log("Middle Name" + UMN);
                if (!UMN.match(charactersOnly)) {
                    alert("Middle Name must contain characters only.");
                } else if (UMN.length < 1) {
                    return false;
                }
                
                var ULN = $ ("#ULN").val();
                console.log("Last Name" + UMN);
                if (!ULN.match(charactersOnly)) {
                    alert("Last Name must contain characters only.");
                } else if (ULN.length < 1); {           
                    return false;
                }    
                return true;
        }           

        </script>
</section>