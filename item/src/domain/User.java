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
@Table(name = "User")
@Getter
@Setter
public class User
	implements Serializable
{
	private static final long serialVersionUID = 48L;

	//user id, unique
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	//username
	@Column(name = "name")
	private String name;

	//password
	@Column(name = "pass")
	private String pass;

	//email address
	@Column(name = "email")
	private String email;
	
	//Constructor
	public User()
	{
	}

	//Constructor with parameters
	public User(String name , String pass, String email)
	{
		this.name = name;
		this.pass = pass;
		this.email = email;
	}
	
	//equals function
	public boolean equals(Object obj)
	{
		if (this == obj)
		{
			return true;
		}
		if (obj != null &&
			obj.getClass() == User.class)
		{
			User user = (User)obj;
			return this.getName().equals(user.getName())
				&& this.getPass().equals(user.getPass());
		}
		return false;
	}
	
	public int hashCode()
	{
		return name.hashCode()
			+ pass.hashCode() * 17;
	}
}