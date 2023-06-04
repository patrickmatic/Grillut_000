<section class="d-flex container justify-content-center align-items-center">

    <form class="container" method="post" onsubmit="return formValidation()" action="${pageContext.request.contextPath}/products">
        <!--        <h1 class="text-center border-bottom">Products Form</h1>-->

        <!-- form input -->
        <div class="form-outline mb-2 row">
            <div class="">
                <label class="form-label" for="UID">User ID</label>
                <input type="number" id="UID" class="form-control" placeholder="Must be greater than 0" name="userID" required/>
            </div>
            <div class="">
                <label class="form-label" for="UN">Product Name</label>
                <input type="text" id="UN" class="form-control" placeholder="Characters only, min. of 3" name='productName' required/>
            </div>
            <div class="">
                <label class="form-label" for="DSCRP">Description</label>
                <input type="text" id="DSCRP" class="form-control" placeholder="Characters only, min. of 3" name='productDescription' required/>
            </div>
            <div class="">
                <label class="form-label" for="pfsize">Size</label>
                <input type="text" id="pfsize" class="form-control" name='productSize'/>
            </div>
            <div class="">
                <label class="form-label" for="pprice">Price</label>
                <input type="text" id="pprice" class="form-control" placeholder="Must be greater than 0.00" name='productPrice' required/>
            </div>                
            <div class="">
                <label class="form-label" for="pquantity">Quantity</label>
                <input type="text" id="pquantity" class="form-control" placeholder="Must be greater than 0" name='productQuantity' required/>
            </div>
        </div>

        <!-- Submit button -->
        <!--        <button type="submit" class="btn btn-primary btn-block mb-3 col-12">Save</button>-->