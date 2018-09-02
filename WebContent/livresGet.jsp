<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dynamicPhilo.Philosophe"%>

<%
	ArrayList<Philosophe> philoList = new ArrayList<Philosophe>();

	try {

		Class.forName("com.mysql.jdbc.Driver");

		String url = "jdbc:mysql://localhost:3306/philosophy";
		String user = "root";
		String pwd = "19My10SQL81";

		Connection con = DriverManager.getConnection(url, user, pwd);

		String search = request.getParameter("philosophicSearch");
		String sqlRequete = "SELECT * FROM philosophe WHERE philosophe.nom LIKE '%" + search
				+ "%' OR philosophe.prenom LIKE '%" + search + "%' OR philosophe.courant LIKE '%" + search
				+ "%'";

		Statement st = con.createStatement();

		ResultSet result = st.executeQuery(sqlRequete);

		String nom;
		String prenom;
		String courant;

		while (result.next()) {

			Philosophe philosophe1 = new Philosophe();

			philosophe1.setNom(result.getString("nom"));
			philosophe1.setPrenom(result.getString("prenom"));
			philosophe1.setNationalite(result.getString("nationalité"));
			philosophe1.setCourant(result.getString("courant"));

			philoList.add(philosophe1);

		}

		for (int i = 0; i < philoList.size(); i++) {

			out.print(philoList.get(i).getNom());
			out.print(" ");
			out.print(philoList.get(i).getPrenom());
			out.print(" ");
			out.print(philoList.get(i).getNationalite());
			out.print(" ");
			out.println(philoList.get(i).getCourant());
			out.print("<br>");

		}
	} catch (Exception e) {
		e.printStackTrace();
		out.print("sorry!please fill correct detail and try again");
	}
%>