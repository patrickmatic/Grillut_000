<section class="d-flex container justify-content-center align-items-center">

    <form class="container" method="post" onsubmit="return formValidation()" action="${pageContext.request.contextPath}/products">
        <!--        <h1 class="text-center border-bottom">Products Form</h1>-->

        <!-- form input -->
        <div class="form-outline mb-2 row">
            <div class="">
                <label class="form-label" for="UID">User ID</label>
                <input type="number" id="UID" class="form-control" placeholder="" name="userID"/>
            </div>
            <div class="">
                <label class="form-label" for="UFN">First Name</label>
                <input type="text" id="UFN" class="form-control" placeholder="" name="userFN"/>
            </div>
            <div class="">
                <label class="form-label" for="UMN">Middle Name</label>
                <input type="text" id="UMN" class="form-control" placeholder="" name="userMN"/>
            </div>
            <div class="">
                <label class="form-label" for="ULN">Last Name</label>
                <input type="text" id="ULN" class="form-control" name="userLN"/>
            </div>
            <div class="">
                <label class="form-label" for="userR">User Role</label>
                <input type="text" id="userR" class="form-control" placeholder="" name="userRole"/>
            </div>                

        <!-- Submit button -->
        <!--        <button type="submit" class="btn btn-primary btn-block mb-3 col-12">Save</button>-->