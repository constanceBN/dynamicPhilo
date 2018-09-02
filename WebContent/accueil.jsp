<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ACCUEIL</title>
</head>
<body>

	<CENTER>
		<h1>Bienvenue dans le monde merveilleux de la philosophie!</h1>
	</CENTER>

	<CENTER>
		<IMG SRC="image/philosophie.jpg" width=500 " height="200"
			ALIGN="BOTTOM">
	</CENTER>

	<marquee dir="ltr">
		<font style="color: navy;">"Je pense, donc je suis." ;-)</font>
	</marquee>

	<div id="nav">
		<ul>
			<li><a href=register.jsp>ACCUEIL</a></li>
			<li><a href=livres.jsp>LIVRES</a></li>
			<li><a href=evenements.jsp>SIGN IN</a></li>
			<li><a href=contact.jsp>LA CAVERNE</a></li>
		</ul>
		<div class="clear"></div>
	</div>
	<hr>

	<center>
		<div>
			<h1>LE PHILOSOPHE DE LA SEMAINE</h1>
			<h2>
				<a href="https://fr.wikipedia.org/wiki/Platon" Platon.jsp>PLATON</a>
			</h2>
			<IMG SRC="image/260px-Plato_Pio-Clemetino_Inv305.jpg" width="250px"
				height="400px" ALIGN="BOTTOM">


		</div>
	</center>

	<hr>

	<jsp:include page="footer.html"></jsp:include>

	<hr>

</body>
</html>