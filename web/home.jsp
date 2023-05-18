<%-- 
    Document   : index
    Created on : Apr 10, 2023, 8:06:53 PM
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
         
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <div class="title container-fluid">
            <div>
                <video autoplay muted loop>
                    <source src="css/media/logovideo.mp4" type="video/mp4">
                </video>
                <div class="title_text">
                    <h1>GRILLUT<br><span>EXOTIC NA, PINALUPIT PA!</span><div class="d-grid col-5 mx-auto"><a   id="aboutUsimg" href="#aboutUsimg" class="btn_all btn btn-outline-primary btn-lg align-top">START</a></div></h1>
                </div>
            </div>
        </div>
        
<!--        About Us-->

        <div class="container-fluid mb-5">
            <div class="row align-items-center  about_us">
                <div class=" col-md-6 rounded  about_img">
                    <img class="img-fluid rounded-3" src="css\media\Aboutimg1.jpg" style=" box-shadow: 0 0 11px rgba(33,33,33,.2); "/> 
                </div>
                <div class="d-flex about_text align-items-center">
                    <div class="col-md-6 offset-md-6 px-3 text-center text-md-start my-5">
                        <stronger>At Grillut</stronger>, we're excited to offer a new and exciting twist on the traditional Filipino delicacy of balut with our grilled balut dish!
                    </div>
                </div>    
            </div>
        </div>

        <div class="container-fluid my-5">
            <div class="row align-items-center  about_us">
                <div class="d-flex about_text align-items-center">
                    <div class="col-md-6 px-3 text-center text-md-end my-5">
                        Our chefs take this classic dish to the next level by grilling the egg to give it a smoky and charred flavor that pairs perfectly with the rich and meaty flavors of the partially foamed duckling inside.
                    </div>
                </div>    
                 <div class=" col-md-6 offset-md-6 about_img rounded">
                    <img class="img-fluid rounded-3" src="css\media\Aboutchef.jpg"style=" box-shadow: 0 0 11px rgba(33,33,33,.2);"/> 
                </div>
            </div>
        </div>

<!--        Sign-in/Register btn-->

<div class="container-sm">
    <div class="col-12 d-flex justify-content-center my-5">
        <img class="mx-auto spinning" style="height: 10em;" src="css\media\balut.png""/>
    </div>
</div>
        
        <jsp:include page="footer.jsp"/>
        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>