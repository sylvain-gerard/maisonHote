<%@page import="co.simplon.servlet.beans.Reservation"%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <title>Récapitulatif</title>

                <!-- CSS Materialize -->
                <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
                <link href="css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection" />
                <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />

                <!-- Mes CSS -->
                <link href="css/mystyle.css" type="text/css" rel="stylesheet">

            </head>

            <body>

                <% Reservation resa = (Reservation) request.getAttribute("resa"); %>

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
                                    <ul class="collection with-header">
                                        <li class="collection-header">${message} ${jour }/${mois }/${annee } :</li>
                                        <li class="collection-item">Nom : ${resa.nom}</li>
                                        <li class="collection-item">Prénom : ${resa.prenom}</li>
                                        <li class="collection-item">Email : ${resa.email}</li>
                                        <li class="collection-item">Téléphone : ${resa.phone}</li>
                                        <li class="collection-item">Type de séjour : ${resa.typeSejour}
                                        </li>
                                        <li class="collection-item">Option Parking : ${resa.parkingHasString()}
                                        </li>
                                        <li class="collection-item">Option Animal : ${resa.animalHasString()}
                                        </li>
                                        <li class="collection-item">Option Fumeur : ${resa.fumeurHasString()}
                                        </li>
                                        <li class="collection-item">Nombre de Personnes : ${resa.nbrePersonnes}
                                        </li>
                                        <li class="collection-item">Durée du séjour : ${resa.dureeSejour} semaine(s)</li>
                                        <li class="collection-item">Début du séjour : ${resa.debutSejour }</li>
                                        <li class="collection-header">Estimation du prix : ${resa.calculPrix() } euros</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <a class="waves-effect waves-light btn" href="reservation.html">Retour</a>
                                </div>                             
                                <div class="col s6">
                                <a class="waves-effect waves-light btn" href="ShowReservation">Liste</a>
                                </div>
                            </div>
                        </div>
                    </div>

               
                    <!--  Scripts-->
                    <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
                    <script src="js/materialize.min.js" type="text/javascript"></script>
                    <script src="js/init.js" type="text/javascript"></script>
                    <script src="js/jquery.js" type="text/javascript"></script>
            </body>

            </html>
