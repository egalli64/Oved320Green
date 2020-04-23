package Dao;


public class Order{  
	private String productName;
	private double price;
	private int quantity;
	
	public Order() {
		
	}
	
	public Order(String productName, double price, int quantity) {
		super();
		this.productName = productName;
		this.setPrice(price);

	}
	
	public Order(String productName, double price) {
		super();
		this.productName = productName;
		this.price = price;

	}
	
	public Order(String productName) {
		super();
		this.productName = productName;

	}
	
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	
}