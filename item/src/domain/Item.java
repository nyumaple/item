package domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Item")
public class Item
	implements Serializable
{
	private static final long serialVersionUID = 48L;

	//item id, unique
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;	
	//kind, such as umbrella, pencil
	private String kind;

	//type, such as a specific style in umbrella
	private String type;
	
	//min orders;
	private Integer minorders;
	
	//lowest price
	private Double price;
	
	//image path
	private String imgpath;
	
	//item describe
	private String describe;

    //Constructor
	public Item(){
		
	}
	
	//Constructor with parameters
	public Item(String kind , String type, 
			Integer minorders, Double price,
			String imgpath, String describe){
		this.kind = kind;
		this.type = type;
		this.imgpath = imgpath;
		this.describe = describe;
		this.minorders = minorders;
		this.price = price;
	}

	public boolean equals(Object obj){
		return true;
	}

	public int hashCode(){
		return 
		kind.hashCode()
			+ type.hashCode() * 17;
	}
}
