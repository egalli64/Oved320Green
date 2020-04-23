<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prodotto aggiunto</title>
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
</head>
<body>
<h1 class="MainTitleGreen">Green Taste</h1>


<div class="alert alert-success" role="alert">

 MEX: Grazie! Il prodotto ${Product} è stato aggiunto correttamente al tuo carrello
</div>
<hr> 
<div class="container">
<p class="carrello"> 
 Totale prodotti: <br> 

Totale spedizione: 5 &euro; <br>  </p>
<hr> 



  <div class="row">
    <div class="col">
      <a href="./Products.html"> <button type="button" class="btn btn-outline-secondary"><p class= "carrello"> Continua lo shopping </p></button> </a>
    </div>
    <div class="col">
      <a href="./carrello.html"> <button type="button" class="btn btn-outline-secondary"><p class= "carrello">Vedi il carrello </p> </button> </a>
    </div>
  </div> </div>
	


<p>

</body>
</html>