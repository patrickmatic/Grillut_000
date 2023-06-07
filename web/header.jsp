<%-- 
    Document   : header
    Created on : Apr 10, 2023, 8:26:51?PM
    Author     : Matic
--%>

<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container-lg">
    <a class="navbar-brand" href="http://localhost:8080/GrillutNPM/home"><img src="css/media/logo_header.svg" height="40"/></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="custom-nav">
        <li class="nav_link"><a href="http://localhost:8080/GrillutNPM/home" class="nav-link nav_link px-2 text-decoration-none">HOME</a></li>
        <li class="nav_link"><a href="http://localhost:8080/GrillutNPM/products" class="nav-link nav_link px-2 text-decoration-none">PRODUCTS</a></li>
        <li class="nav_link"><a href="http://localhost:8080/GrillutNPM/user" class="nav-link nav_link px-2 text-decoration-none">USER MANAGEMENT</a></li>
      </ul>

    </div>
  </div>
</nav>
<script>
    $(window).scroll(function() {
      var yOffset = window.pageYOffset;
      var breakpoint = 50;
      if (yOffset > breakpoint) {
        $(".navbar").addClass('active');
      } else {
        $(".navbar").removeClass('active');
      }
    });
  </script>