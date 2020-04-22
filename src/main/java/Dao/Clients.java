package Dao;



public class Clients {
	private int clientId;	   
	private String firstName;
	private String lastName;
	private String indirizzo;
	private String num_indirizzo;  
	private String cap;
	private String citta;   
	private String numeroCell;
	private String mail;
	private String userName;
	private String password;
	
	
	public Clients(int clientId,String firstName, String lastName,String indirizzo, String num_indirizzo, String cap, String citta,String numeroCell, String mail, String userName, String password) {
		super();
		this.clientId= clientId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.indirizzo = indirizzo;
		this.num_indirizzo= num_indirizzo;
		this.cap=cap;
		this.citta = citta;
		this.numeroCell = numeroCell;
		this.mail = mail;
		this.userName = userName;
		this.password = password;
	}
	
	//Clients per NewClient
	public Clients(String firstName, String lastName,String indirizzo, String num_indirizzo, String cap, String citta,String numeroCell, String mail, String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.mail = mail;
		this.numeroCell = numeroCell;
		this.indirizzo = indirizzo;
		this.num_indirizzo= num_indirizzo;
		this.cap=cap;
		this.citta = citta;
	}
	
	public Clients (String userName, String password) {
		//super();
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
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getIndirizzo() {
		return indirizzo;
	}
	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}
	
	public String getNumIndirizzo() {
		return num_indirizzo;
	}
	public void setNumIndirizzo(String num_indirizzo) {
		this.num_indirizzo = num_indirizzo;
	}
	
	public String getCity() {
		return citta;
	}
	public void setCity(String citta) {
		this.citta = citta;
	}
	
	public String getCap() {
		return cap;
	}
	public void setCap(String cap) {
		this.cap = cap;
	}
	
	public String getNumber() {
		return numeroCell;
	}
	public void setNumber(String numeroCell) {
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
	
	
	@Override
	public String toString() {
		return "[nome=" + userName + ", password=" + password + "]";
	}

	public static void main(String[] args) {	
		Clients client= new Clients("erica", "password");
		System.out.println(client.toString());
	}

}
