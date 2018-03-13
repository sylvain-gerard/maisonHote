<%@ page pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Recapitulation Reservation</title>

        <!-- CSS Materialize -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection" />
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />

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
        <!-- CONTAINER -->
        <div class="container">
            <div class="section">
                <div class="row">
                    <div class="col s12 m6">
                        <div class="icon-block">

                            <h5>Un problème est survenu durant la saisie.</h5>
                            <p>L'erreur ci-dessous s'est produite durant l'enregistrement de votre réservation :</p>
                            <p class="error">
                                <%=request.getAttribute("message") %>
                            </p>
                            <p>Merci de vérifier que toutes les informations sont saisies.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12">
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
        <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script src="js/init.js" type="text/javascript"></script>
        <script src="js/jquery.js" type="text/javascript"></script>

    </body>

    </html>
