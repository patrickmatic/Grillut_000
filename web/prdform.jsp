<section class="d-flex container justify-content-center align-items-center">

    <form class="container" method="post" onsubmit="return formValidation()" action="${pageContext.request.contextPath}/products">
        <!--        <h1 class="text-center border-bottom">Products Form</h1>-->

        <!-- form input -->
        <div class="form-outline mb-2 row">
            <div class="">
                <label class="form-label" for="PID">Product ID</label>
                <input type="number" id="PID" class="form-control" placeholder="Must be greater than 0" name="productID" required/>
            </div>
            <div class="">
                <label class="form-label" for="PN">Product Name</label>
                <input type="text" id="PN" class="form-control" placeholder="Characters only, min. of 3" name='productName' required/>
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
                <input type="number" id="pprice" class="form-control" placeholder="Must be greater than 0.00" name='productPrice' required/>
            </div>                
            <div class="">
                <label class="form-label" for="pquantity">Quantity</label>
                <input type="number" id="pquantity" class="form-control" placeholder="Must be greater than 0" name='productQuantity' required/>
            </div>
        </div>

        <!-- Submit button -->
        <!--        <button type="submit" class="btn btn-primary btn-block mb-3 col-12">Save</button>-->

        <script>
            var charactersonly = /^[A-Za-z]+$/;

            function formValidation() {
                var PID = $("#PID").val();
                console.log("Product ID " + PID);
                if (PID <= 0) {
                    alert("Product ID must be greater than 0.");
                    return false;
                }

                var PN = $("#PN").val();
                console.log("Product Name " + PN);
                if (!PN.match(charactersonly)) {
                    alert("Product Name must contain characters only.");
                    return false;
                } else if (PN.length < 3) {
                    alert("Product Name must be 3 or more characters.");
                    return false;
                }

                var DSCRP = $("#DSCRP").val();
                console.log("Description " + DSCRP);
                if (!DSCRP.match(charactersonly)) {
                    alert("Description must contain characters only.");
                    return false;
                } else if (DSCRP.length < 3) {
                    alert("Description must be 3 or more characters.");
                    return false;
                }

                var pprice = $("#pprice").val();
                console.log("Price " + pprice);
                if (parseFloat(pprice) <= 0) {
                    alert("Price must be greater than 0.00");
                    return false;
                }

                var pquantity = $("#pquantity").val();
                console.log("Quantity " + pquantity);
                if (parseInt(pquantity) <= 0) {
                    alert("Quantity must be greater than 0");
                    return false;
                }

                // Input fields validated
                alert(PN + " with " + PID + " has been added to inventory.");
                return true;
            }
        </script>
</section>