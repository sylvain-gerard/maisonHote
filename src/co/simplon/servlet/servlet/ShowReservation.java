package co.simplon.servlet.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.simplon.jdbc.Jdbc;
import co.simplon.servlet.beans.Reservation;
import co.simplon.servlet.beans.ReservationManager;


@WebServlet("/ShowReservation")
public class ShowReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Reservation> listeReservations = new ArrayList<>();
    
    public ShowReservation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Jdbc listeJdbc = new Jdbc();
		try {
			listeJdbc.connectToDB();
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			listeReservations = listeJdbc.showData();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			listeJdbc.close();
		}
		request.setAttribute("listeReservations", listeReservations);
		this.getServletContext().getRequestDispatcher("/listeResa.jsp").forward(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
