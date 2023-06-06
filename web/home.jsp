<%-- 
    Document   : index
    Created on : Apr 10, 2023, 8:06:53 PM
    Author     : Matic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="head.jsp"/>
         
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
                 <div class=" col-md-6 offset-md-6 about_imgchef rounded">
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
        <script> window.addEventListener('scroll', function () {
                var aboutImgElements = document.getElementsByClassName('about_img');
                for (var i = 0; i < aboutImgElements.length; i++) {
                    if (isElementInViewport(aboutImgElements[i])) {
                        aboutImgElements[i].classList.add('animate-fadeInLeft');
                    }
                }
            });

            function isElementInViewport(element) {
                var rect = element.getBoundingClientRect();
                var windowHeight = window.innerHeight || document.documentElement.clientHeight;
                var windowWidth = window.innerWidth || document.documentElement.clientWidth;

                // Define the threshold for determining visibility
                var threshold = 100;

                return (
                        rect.top >= -threshold &&
                        rect.left >= -threshold &&
                        rect.bottom <= (windowHeight + threshold) &&
                        rect.right <= (windowWidth + threshold)
                        );
            }



            window.addEventListener('scroll', function () {
                var aboutImgElements = document.getElementsByClassName('about_imgchef');
                for (var i = 0; i < aboutImgElements.length; i++) {
                    if (isElementInViewport(aboutImgElements[i])) {
                        aboutImgElements[i].classList.add('animate-fadeInRight');
                    }
                }
            });

            function isElementInViewport(element) {
                var rect = element.getBoundingClientRect();
                var windowHeight = window.innerHeight || document.documentElement.clientHeight;
                var windowWidth = window.innerWidth || document.documentElement.clientWidth;

                // Define the threshold for determining visibility
                var threshold = 100;

                return (
                        rect.top >= -threshold &&
                        rect.left >= -threshold &&
                        rect.bottom <= (windowHeight + threshold) &&
                        rect.right <= (windowWidth + threshold)
                        );
            }


        </script>
        <jsp:include page="footer.jsp"/>
        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>