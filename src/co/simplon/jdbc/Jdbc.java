package co.simplon.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import co.simplon.servlet.beans.Reservation;
import co.simplon.servlet.beans.ReservationManager;

public class Jdbc {

	private final static String BDPATH = "jdbc:mysql://localhost:3306/maisonhote";
	// Change name and password for MySQL connection here
	private final static String DBUSER = "admin";
	private final static String DBPASSWORD = "admin";

	private static Connection connection;

	public void connectToDB() throws Exception {


		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(BDPATH, DBUSER, DBPASSWORD);

		}catch(SQLException e){
			System.out.println("An error occured trying access database !");
		}
	}


	public void insertData(String nom, String prenom, String email, String phone, String typeSejour, 
			Boolean Parking, Boolean Fumeur, Boolean Animal, String nbrePersonnes, String dureeSejour, 
			String debutSejour, Integer prix) throws SQLException {
		try {			
			String sql = "INSERT INTO `reservations` (`nom`, `prenom`, `email`, `phone`, `typeSejour`, `parking`, `fumeur`, `animal`, `nbrePersonnes`, `dureeSejour`, `debutSejour`, `prix`) "
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";			
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, nom);
			ps.setString(2, prenom);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, typeSejour);
			ps.setBoolean(6, Parking);
			ps.setBoolean(7, Fumeur);
			ps.setBoolean(8, Animal);
			ps.setString(9, nbrePersonnes);
			ps.setString(10, dureeSejour);
			ps.setString(11, debutSejour);
			ps.setInt(12, prix);
			int rows = ps.executeUpdate();
			ps.close();
		}
		catch(SQLException e){
			System.out.println("An error occured in Jdbc's insertData() method.");
		}
	}

	public List<Reservation> showData() throws SQLException {
		Statement statement = null;
		ResultSet rs = null;

		statement = connection.createStatement();
		String sql = "SELECT * FROM reservations";
		List<Reservation> listeReservations = new ArrayList<Reservation>();

		try {			
			rs = statement.executeQuery(sql);		
			while (rs.next()) {
							
				Reservation resa = new Reservation();
				resa.setNom(rs.getString("nom"));
				resa.setPrenom(rs.getString("prenom"));
				resa.setEmail(rs.getString("email"));
				resa.setPhone(rs.getString("phone"));
				resa.setTypeSejour(rs.getString("typeSejour"));
				resa.setParking(rs.getBoolean("parking"));
				resa.setFumeur(rs.getBoolean("fumeur"));
				resa.setAnimal(rs.getBoolean("animal"));
				resa.setNbrePersonnes(rs.getString("nbrePersonnes"));
				resa.setDureeSejour(rs.getString("dureeSejour"));
				resa.setDebutSejour(rs.getString("debutSejour"));
				resa.setPrix(rs.getInt("prix"));
				
				listeReservations.add(resa);
} 
		} catch (SQLException e) {
			System.out.println("An error occured in Jdbc's showData() method.");
		}
		finally{	 
			statement.close();
		}
		return listeReservations;	
	}

	public void close() {

		try {

			if (connection != null) {
				connection.close();
				System.out.println("Connnexion closed.");
				System.out.println("------------------------------------------------------");
			}
		} catch (Exception e) {
			System.out.println("An error occured trying in Jdbc's close() method.");
		}
	}
}
