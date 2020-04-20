package javaBeans;

//servono solo i getters in realta, giusto?

public class Clients {
	private int clientId;	   //or String?
	private String firstName;
	private String lastName;
	private String indirizzo;     //non mi è chiaro cosa si intende per frequenza? 
	private String citta;    //or String?
	private String numeroCell;
	private String mail;
	private String userName;
	private String password;
	
	public Clients(int clientId,String firstName, String lastName,String indirizzo, String citta,String numeroCell, String mail, String userName, String password) {
		super();
		this.clientId= clientId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.indirizzo = indirizzo;
		this.citta = citta;
		this.numeroCell = numeroCell;
		this.mail = mail;
		this.userName = userName;
		this.password = password;
	}
	
	public int getClientId() {
		return clientId;
	}
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setFrequency(String lastName) {
		this.lastName = lastName;
	}
	
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	
	public String getCitta() {
		return citta;
	}
	public void setCitta(String citta) {
		this.citta = citta;
	}
	
	public String getNumeroCell() {
		return numeroCell;
	}
	public void setNumeroCell(String numeroCell) {
		this.numeroCell = numeroCell;
	}
	
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	


}
