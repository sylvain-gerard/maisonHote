package co.simplon.servlet.beans;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class ReservationManager {
	private static final ReservationManager INSTANCE = new ReservationManager();
	private final  ArrayList<Reservation> listeReservation = new ArrayList<Reservation>();
	
	private ReservationManager() {
		
	}

	public static ReservationManager getInstance() {
		return INSTANCE;
	}

	public  ArrayList<Reservation> getListeReservation() {
		return listeReservation;
	}

	public void addResa (Reservation resa) {
		
		this.listeReservation.add(resa);
		
	}
}
