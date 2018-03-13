package co.simplon.servlet.servlet;

import java.io.IOException;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;


import co.simplon.jdbc.Jdbc;
import co.simplon.servlet.beans.Reservation;
import co.simplon.servlet.beans.ReservationManager;


@WebServlet("/RegisterReservation")
public class RegisterReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String typeSejour = request.getParameter("typeSejour");		
		Boolean parking = request.getParameter("Parking")!=null;
		Boolean fumeur = request.getParameter("Fumeur")!=null;
		Boolean animal = request.getParameter("Animal")!=null;
		String nbrePersonnes = request.getParameter("nbrePersonnes");
		String dureeSejour = request.getParameter("dureeSejour");
		String debutSejour = request.getParameter("debutSejour");


		// Message d'erreur ou de succès. 
		String message="";

		if ( nom.trim().isEmpty() || prenom.trim().isEmpty() || phone.trim().isEmpty() || email.trim().isEmpty() || typeSejour == null || 
				nbrePersonnes == null || dureeSejour == null || debutSejour.trim().isEmpty()){
			message = "Désolé, mais vous n'avez pas rempli tous les champs obligatoires.";

			request.setAttribute( "message", message );  		
			this.getServletContext().getRequestDispatcher("/error.jsp").forward(request, response);

		} else {
			message = "Récapitulatif de votre réservation du ";

			// Date de la demande de réservation, affichée dans le message dans showResa.jsp .
			DateTime dt = new DateTime();
			Integer jourDuMois = dt.getDayOfMonth();
			Integer moisDeAnnee = dt.getMonthOfYear();
			Integer annee = dt.getYear();

			Reservation newResa = new Reservation();
			newResa.setNom(nom);
			newResa.setPrenom(prenom);
			newResa.setEmail(email);
			newResa.setPhone(phone);
			newResa.setTypeSejour(typeSejour);
			newResa.setParking(parking);
			newResa.setAnimal(animal);
			newResa.setFumeur(fumeur);
			newResa.setDureeSejour(dureeSejour);
			newResa.setNbrePersonnes(nbrePersonnes);
			newResa.setDebutSejour(debutSejour);

			Integer prix = newResa.calculPrix();

			request.setAttribute("resa", newResa);
			request.setAttribute("message", message );
			request.setAttribute("jour", jourDuMois);
			request.setAttribute("mois", moisDeAnnee);
			request.setAttribute("annee", annee);

			Jdbc resaJdbc = new Jdbc();
			try {
				resaJdbc.connectToDB();
			} catch (Exception e) {
				e.printStackTrace();
			}

			try {
				resaJdbc.insertData(nom, prenom, email, phone, typeSejour, parking, fumeur, animal, nbrePersonnes, dureeSejour, debutSejour, prix);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			finally {
				resaJdbc.close();
			}

			this.getServletContext().getRequestDispatcher("/showResa.jsp").forward(request, response);
		}

	}

}
