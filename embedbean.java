package login;

import javax.persistence.Embeddable;

@Embeddable
public class embedbean {

	
	private String street;
    private String area;
    private  String state;
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
    
    
    
    
    
    
	
}
