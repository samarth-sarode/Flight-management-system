package Dao;

public class FlightBookedTickits {
	String username ;
	int id ;
	public FlightBookedTickits(String username, int id) {
		super();
		this.username = username;
		this.id = id;
	}
	
	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	@Override
	public String toString() {
		return "FlightBookedTickits [username=" + username + ", id=" + id + "]";
	}
	
	
}
