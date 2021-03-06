<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful log in</title>
<link rel="stylesheet" type="text/css" href="css/Page.css" />
<script type="text/javascript" src="js/homePage.js" async="true"></script>
<!--inizio bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<!--fine bootstrap -->
</head>
<body>


	<!-- titolo -->
	<h1 class="MainTitleGreen">Green Taste</h1>


	<!-- carosello immagini cibo -->

	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
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
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<br>
	<br>


	<!--  aggiunta rispetto a pagina prodotti!!!!!!! -->


	<hr>
	<hr>
	<h2 class="subTitleGreen" align="right">Bentornato ${userName} !</h2>
	<hr>
	<hr>


	<!-- fine aggiunta rispetto a pagina prodotti!!!!!!! -->


	
<!-- griglia prodotti-->

<div id="gridproducts" class="grigliaprodotti" >
<h2 class="subTitleGreen">Scopri i nostri prodotti freschi e coltivati in modo sostenibile</h2>
<br> <br>
<hr> 
<p class="introduzione"> Oppure naviga per <a href="./categories.html">categoria</a></p>
<hr>
<div class="container-fluid">
<div class="row">

<div class="col-1"></div>
<div class="col"><a href="./products/carote.html"><img src="./imgs/carote.png" width="70%" height="150" title="carote" alt="Carote"></a></div>
<div class="col"><a href="./products/uova.html"><img src="./imgs/uova.png" width="70%" height="150" title="uova" alt="uova"></a></div>
<div class="col"><a href="./products/lenticchie.html"><img src="./imgs/lentils.jpg" width="70%" height="150"title="lenticchie" alt="lenticchie"></a></div>
</div>
<div class="row-1"> <br> <br> </div>
 <!-- inserire link pagine prodotti -->
<div class="row">
<div class="col-1"></div>
<div class="col"><a href="./products/coffee.html"><img src="./imgs/coffee.png" width="70%" height="150" title="caff�" alt="caff�"></a></div>
<div class="col"><a href="./products/mandorle.html"><img src="./imgs/mandorle.png" width="70%" height="150" title="pasta di mandorle" alt="Pasta di Mandorle"></a></div>
<div class="col"><a href="./products/mele.html"><img src="./imgs/mele.png" width="70%" height="150" title="mele" alt="mele"></a></div>
</div>
<div class="row-1"> <br> <br> </div>
<div class="row">
<div class="col-1"></div>
<div class="col"><a href="./products/pomodori.html"><img src="./imgs/pomodoro.png" width="70%" height="150" title="pomodoro" alt="pomodoro"></a></div>
<div class="col"><a href="./products/riso.html"><img src="./imgs/riso.png" width="70%" height="150" title="riso" alt="riso"></a></div>
<div class="col"><a href="./products/biscotti.html"><img src="./imgs/biscotti.png" width="70%" height="150" title="biscotti" alt="biscotti"></a></div>
</div>
<div class="row-1"> <br> <br> </div>
<div class="row">
<div class="col-1"></div>
<div class="col"><a href="./products/vino.html"><img src="./imgs/wine.png" width="70%" height="150" title="vino" alt="vino"></a></div>
<div class="col"><a href="./products/orecchiette.html"><img src="./imgs/orecc.png" width="70%" height="150" title="orecchiette" alt="orecchiette"></a></div>
<div class="col"><a href="./products/latte.html"><img src="./imgs/latte.png" width="70%" height="150" title="latte" alt="latte"></a></div>
</div>
</div>
<div class="row-1"> <br> <br> </div>
<div class="row">
<div class="col-1"></div>
<div class="col"><a href="./products/yogurt.html"><img src="./imgs/yogurt.png" width="70%" height="150" title="yogurt" alt="yogurt"></a></div>
<div class="col"><a href="./products/integrale.html"><img src="./imgs/int.png" width="70%" height="150" title="pasta integrale" alt="pasta integrale"></a></div>
<div class="col"><a href="./products/cavatelli.html"><img src="./imgs/cavatelli.jpg" width="70%" height="150" title="cavatelli" alt="cavatelli"></a></div>
</div>
</div>
<div class="row-1"> <br> <br> </div>
<div class="row">
<div class="col-1"></div>
<div class="col"><a href="./products/farro.html"><img src="./imgs/farro.png" width="70%" height="150" title="farro" alt="farro"></a></div>
<div class="col"><a href="./products/BacchediGoji.html"><img src="./imgs/bacche di goji.jpg" width="70%" height="150" title="bacche" alt="bacche"></a></div>
<div class="col"><a href="./products/biscottiamarena.html"><img src="./imgs/biscottiam.png" width="70%" height="150" title="biscotti amarena" alt="biscotti amarena"></a></div>
</div>
<div class="row-1"> <br> <br> </div>
<div class="row">
<div class="col-1"></div>
<div class="col"><a href="./products/chips.html"><img src="./imgs/chips.png" width="70%" height="150" title="yogurt" alt="yogurt"></a></div>
<div class="col"><a href="./products/cioccolato.html"><img src="./imgs/ciocc.png" width="70%" height="150" title="cioccolato" alt="cioccolato"></a></div>
<div class="col"><a href="./products/maccheroncinilupini.html"><img src="./imgs/maccheroncini di riso e lupini.jpg" width="70%" height="150" title="maccheroncini e lupini" alt="maccheroncini e lupini"></a></div>
</div>
<br> <br> 
<hr> 


<!-- back to homepage -->  <!-- back to the top?? -->
<p class="generalText">
              Torna alla <a href="./index.html" class="badge badge-success">Homepage</a></p>
<hr> 
<!-- informazioni personali -->	
			<div class="row">
				<div class="col-2"></div>
				<div class="col-0,5">
				<img src="https://img.icons8.com/material-outlined/60/000000/facebook.png"/>
				</div>
				<div class="col-2">
					<p class="personalInfo"> Seguici sul nostro <br>canale Facebook
					</p>
				</div>
				<div class="col-0,5">
				<img src="https://img.icons8.com/ios-glyphs/48/000000/iphone.png"/>
				</div>
				<div class="col-2">
					<p class="personalInfo"> Chiamaci: <br> +39 0395049892
					</p>
				</div>	
				<div class="col-0,5">
				<img src="https://img.icons8.com/ios-glyphs/48/000000/gmail.png"/>
				</div>
				<div class="col-2">
					<p class="personalInfo"> E-mail: <br> greentaste@gmail.com
					</p>
				</div>	
				<div class="col-0,5">
				<img src="https://img.icons8.com/material/48/000000/order-delivered.png"/>
				</div>
				<div class="col-2">
					<p class="personalInfo"> Dove siamo: <br> Via da definire
					</p>
				</div>
			</div>				
			<hr><hr>



</body>
</html>