package login;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Registration_Details")
public class registration {
     
	@Id
	@Column(name="User")
	private int user;
	
	@Column(name="UName")
	private String name;
	@Column(name="Email")
	private String Email;
	@Column(name="Age")
	private int age;
	@Column(name="Place")
	private String place;

	

	
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

	
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	@Override
	public String toString() {
		return "registration [user=" + user + ", name=" + name + ", Email=" + Email + ", age=" + age + ", place="
				+ place + "]";
	}
	
	
	
	
	
	
	
}
