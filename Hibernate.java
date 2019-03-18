package login;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Login_Details")
public class Hibernate {

	
	@Id
	@Column(name="ID")
	private int username;
	
	
	@Column(name="Password")
	private String password;

	 

	public int getUsername() {
		return username;
	}


	public void setUsername(int username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	
	
	
	
	
	
}
