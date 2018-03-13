package co.simplon.servlet.beans;


public class Reservation {
	
	private String nom;
	private String prenom;
	private String email;
	private String phone;
	private String typeSejour;
	private Boolean Parking;
	private Boolean Animal;
	private Boolean Fumeur;
	private String nbrePersonnes;
	private String dureeSejour;
	private String debutSejour;
	private Integer prix;
	
	public String getDebutSejour() {
		return debutSejour;
	}
	public void setDebutSejour(String debutSejour) {
		this.debutSejour = debutSejour;
	}
	public Boolean getParking() {
		return Parking;
	}
	public void setParking(Boolean parking) {
		Parking = parking;
	}	
	public String parkingHasString() {
		String result="";
		if(this.getParking())
			result="oui";
		else
			result="non";
		return result;
	}
	
	public Boolean getAnimal() {
		return Animal;
	}
	public void setAnimal(Boolean animal) {
		Animal = animal;
	}
	public String animalHasString() {
		String result="";
		if(this.getAnimal())
			result="oui";
		else
			result="non";
		return result;			
	}
	
	public Boolean getFumeur() {
		return Fumeur;
	}
	public void setFumeur(Boolean fumeur) {
		Fumeur = fumeur;
	}
	public String fumeurHasString() {
		String result="";
		if(this.getFumeur())
			result="oui";
		else
			result="non";
		return result;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTypeSejour() {
		return typeSejour;
	}
	public void setTypeSejour(String typeSejour) {
		this.typeSejour = typeSejour;
	}
	public String getNbrePersonnes() {
		return nbrePersonnes;
	}
	public void setNbrePersonnes(String nbrePersonnes) {
		this.nbrePersonnes = nbrePersonnes;
	}
	public String getDureeSejour() {
		return dureeSejour;
	}
	public void setDureeSejour(String dureeSejour) {
		this.dureeSejour = dureeSejour;
	}
	public Integer getPrix() {
		return prix;
	}
	public void setPrix(Integer prix) {
		this.prix = calculPrix();
	}
	
	// Le prix du séjour est calculé ici puis récupéré
	
	public int calculPrix() {
		int prixSejour=0;
		int type=0;
		int optionF=0;
		int optionP=0;
		int optionA=0;
		int nombreP=0;
		int duree=0;
						
		if(this.getTypeSejour()=="Loisir")
			type = 600;
		else
			type=500;
		
		if(this.getParking())
			optionP=100;
		else 
			optionP=0;
		
		if (this.getAnimal())
			optionA=100;
		else
			optionA=0;
		
		if (this.getFumeur())
			optionF=50;
		else 
			optionF=0;
		
		duree =Integer.parseInt(dureeSejour);
		nombreP=Integer.parseInt(nbrePersonnes);
		
		prixSejour = nombreP*duree*(type+optionA+optionF+optionP);
		return prixSejour;
		
	}
	
	
}
