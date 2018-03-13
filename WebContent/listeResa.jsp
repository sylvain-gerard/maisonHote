<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.simplon.servlet.beans.Reservation"%>
<%@page import="co.simplon.servlet.beans.ReservationManager"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Liste des Reservations</title>

<!-- CSS Materialize -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />

<!-- Mes CSS -->
<link href="css/mystyle.css" type="text/css" rel="stylesheet">

</head>

<body>
	<!-- NAV -->
	<nav class="blue darken-4" role="navigation">
		<div class="nav-wrapper">
			<a href="https://www.luxuryhomemagazine.com/"><img
				src="img/logo.jpg" alt=""></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="index.html"><i class="material-icons">home</i></a></li>
				<li class="active"><a href="index.html">La Villa</a></li>
				<li><a href="region.html">L'ile de Santorin</a></li>
				<li><a href="reservation.html">Réservation</a></li>
			</ul>

			<ul id="nav-mobile" class="side-nav teal">
				<li class="active"><a href="index.html">La Villa Andromède</a></li>
				<li><a href="region.html">L'ile de Santorin</a></li>
				<li><a href="reservation.html">Réservation</a></li>
			</ul>
			<a href="#" data-activates="nav-mobile" class="button-collapse"><i
				class="material-icons">menu</i></a>
		</div>
	</nav>
	<div class="container">
		<div class="section">
			<div class="row">
				<div class="col s12">
					<table>
						<tr>
							<th>Nom</th>
							<th>Prenom</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Type de séjour</th>
							<th>Parking</th>
							<th>Animal</th>
							<th>Fumeur</th>
							<th>Nbre de personnes</th>
							<th>Durée séjour</th>
							<th>Date séjour</th>
							<th>Prix</th>
						</tr>
						<%
			
			Collection<Reservation> listeReservations = (Collection<Reservation>) request.getAttribute("listeReservations");
			if(listeReservations != null){
				Iterator it = listeReservations.iterator() ;
			    while (it.hasNext()){
			    	Reservation resa =(Reservation) it.next() ;
		%>
						<tr>
							<td><%= resa.getNom() %></td>
							<td><%= resa.getPrenom() %></td>
							<td><%= resa.getEmail() %></td>
							<td><%= resa.getPhone() %></td>
							<td><%= resa.getTypeSejour() %></td>
							<td><%= resa.parkingHasString() %></td>
							<td><%= resa.animalHasString()%></td>
							<td><%= resa.fumeurHasString()%></td>
							<td><%= resa.getNbrePersonnes()%></td>
							<td><%= resa.getDureeSejour()%></td>
							<td><%= resa.getDebutSejour()%></td>
							<td><%= resa.calculPrix() %></td>
						</tr>
						<%      }
			}
		%>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col s6">
					<a class="waves-effect waves-light btn" href="index.html">Accueil</a>
				</div>
				<div class="col s6">
					<a class="waves-effect waves-light btn" href="reservation.html">Retour</a>
				</div>
			</div>
		</div>
	</div>

	<!-- BOUTON FLOTTANT -->
	<div class="fixed-action-btn">
		<a class="btn-floating btn-large deep-purple z-depth-5" href="#top"><i
			class="large material-icons">home</i></a>
	</div>
	<!--  Scripts-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"
		type="text/javascript"></script>
	<script src="js/materialize.js" type="text/javascript"></script>
	<script src="js/init.js" type="text/javascript"></script>
	<script src="js/jquery.js" type="text/javascript"></script>


</body>

</html>
