package domain;

import java.io.Serializable;
import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Order")
@Getter
@Setter
public class Order
	implements Serializable
{
	private static final long serialVersionUID = 47L;

	//order id, unique
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	//
	@Column(name = "username", length = 20, nullable = false)
	private String username;

	//the unique id for item
	@Column(name = "item_id", nullable = false)
	private Integer item_id;
	
	//quantity
	@Column(name = "quantity", nullable = false)
	private Integer quantity;
	
	//total price of this order
	@Column(name = "price", nullable = false)
	private Double price;
	
	//phone number
	@Column(name = "phone", length = 20, nullable = false)
	private String phone;
	
	//email address
	@Column(name = "email", length = 20, nullable = false)
	private String email;
	
	//mail address
	@Column(name = "address", length = 100, nullable = false)
	private String address;
	
	//Constructor
	public Order()
	{
	}
	
	//Constructor with parameters
	public Order(String username, Integer item_id, 
			Integer quantity, Double price,
			String phone, String email, String address)
	{
		this.username = username;
		this.item_id = item_id;
		this.quantity = quantity;
		this.price = price;
		this.phone = phone;
		this.email = email;
		this.address = address;
	}
	
	//
	public boolean equals(Object obj)
	{
		
		return false;
	}
	
	//hashCode
	public int hashCode()
	{
		return id.hashCode()
			+ username.hashCode() * 17;
	}
}