<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LIVRES</title>
</head>
<body>

	<div id="nav">
		<ul>
			<li><a href=accueil.jsp>ACCUEIL</a></li>
			<li><a href=livres.jsp>LIVRES</a></li>
			<li><a href=evenements.jsp>SIGN IN</a></li>
			<li><a href=caverne.jsp>LA CAVERNE</a></li>
		</ul>
		<div class="clear"></div>
	</div>

	<HR>

	<H1>RECHERCHE</H1>

	<P>Recherchez un philosophe, un livre ou un courant philosophique
		...
	<form action="livresGet.jsp">

		<table>
			<tr>
				<td>Rentrez votre recherche ici :</td>
				<td><input type="text" name="philosophicSearch"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>

	</form>

	<HR>


	<jsp:include page="footer.html"></jsp:include>

	<HR>



</body>
</html>