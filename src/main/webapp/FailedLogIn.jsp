<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>
<link rel="stylesheet" type="text/css" href="css/Page.css" />
<script type="text/javascript" src="js/homePage.js" async="true"></script>
<!--inizio bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
    crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
<!--fine bootstrap -->

</head>
<body>


    <!-- titolo -->
    <h1 class="MainTitleGreen">Green Taste</h1>


    <!-- carosello immagini cibo -->

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="imgs/veg.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="imgs/veg4.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="imgs/pasta.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
        </a> <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
        </a>
    </div>


	<!-- inizio pagina login sbagliato -->
	<hr> <hr>
	<div class="row">
        <div class="col-2"></div>
        <div class="col-12">
            <p class="introduzione">
                Ops! Qualcosa nel tuo login � andato storto... torna <a href="index.html"> indietro </a> per riprovare!
               <br>
            </p>
        </div>
    </div>
    <hr> <hr>
	<br> <br>



</body>
</html>