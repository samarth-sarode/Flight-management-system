package Dao;

import java.io.ObjectInputFilter.Status;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Model.Flight;
import Utility.JdbcUtil;


public class Flightservice {
	public static int addflight(Flight f) throws SQLException {
		Connection con = JdbcUtil.getConnection();
		int status = 0;
		
		try {
			String query = "insert into flight(id , name , source , destination , date , price) values(? , ? , ? , ? , ? ,?)";
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, f.getId());
			ps.setString(2, f.getName());
			ps.setString(3, f.getSource());
			ps.setString(4, f.getDestination());
			
			String str = f.getDate();
			Date fd = Date.valueOf(str);
			
			ps.setDate(5 , fd);
//			System.out.println(f.getDate());
			ps.setInt(6, f.getPrice());
			
			status = ps.executeUpdate();
			
			if(status > 0) {
				System.out.println("Table inserted");
			}
			else {
				System.out.println("Table not inserted");
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static List<Flight> viewFlight() {
		List<Flight> arr = new ArrayList<Flight>();
 		try {
			int status = 0;
			Connection con =  JdbcUtil.getConnection();
			String query = "select * from flight";
			PreparedStatement ps = con.prepareStatement(query);
			
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String source = rs.getString(3);
				String destination = rs.getString(4);
				Date date = rs.getDate(5);
				String newdate = date.toString();
				int price = rs.getInt(6);
				
				
				Flight flight = new Flight();
				flight.setId(id);
				flight.setName(name);
				flight.setSource(source);
				flight.setDestination(destination);
				flight.setDate(newdate);
				flight.setPrice(price);
				
				arr.add(flight);
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
 		
		return arr;
	}
	
	
	public static Flight getFlight(int flightid) {
		Flight f = null;
		try {
			Connection con = JdbcUtil.getConnection();
			
			
			String query = "select * from flight where id  = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, flightid);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String source = rs.getString(3);
				String destination = rs.getString(4);
				Date date = rs.getDate(5);
				String newdate = date.toString();
				int price = rs.getInt(6);
			
				f = new Flight();
				f.setId(id);
				f.setName(name);
				f.setSource(source);
				f.setDestination(destination);
				f.setDate(newdate);
				f.setPrice(price);
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return f;
	}
	
	
	public static int  update_flight(Flight f) {
		int status = 0 ;
		try {
			
			Connection con = JdbcUtil.getConnection();
			
			String query = "update flight set name = ? , source = ? , destination = ? , date = ? , price = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, f.getName());
			ps.setString(2, f.getSource());
			ps.setString(3, f.getDestination());
			String str = f.getDate();
			Date fd = Date.valueOf(str);
			ps.setDate(4 , fd);
			ps.setInt(5, f.getPrice());
			ps.setInt(6, f.getId());
			
			status = ps.executeUpdate();
			
			if(status > 0) {
				System.out.println("Update Successfully");
			}
			else {
				System.out.println("Not Updated Successfully");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return status ;
	}
	
	
	public static void delete_flight(int flightid) {
		try {
			int status = 0;
			Connection con = JdbcUtil.getConnection();
			String query = "delete from flight where id = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, flightid);
			status = ps.executeUpdate();
			
			if(status > 0) {
				System.out.println("Deleted Successfully");
			}
			else {
				System.out.println("Not deleted Successfully");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public static int signup(String username , String email , String password) {
		int status = 0;
		try {
			
			Connection con = JdbcUtil.getConnection();
			String query = "insert into flightregisteruser values(? , ? , ?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, password);
			status = ps.executeUpdate();
			if(status > 0) {
				System.out.println("User Register Successfully");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return status;
	}
	
	public static int login(String username , String password) {
		int status = 0;
		try {
			Connection con = JdbcUtil.getConnection();
			String query = "Select * from flightregisteruser where username = ? and password = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				status = 1;
				System.out.println("Login Successfully");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return status;
		
	}
	
	public static int bookflighttickit(String username , int id) {
		int status = 0;
		try {
			Connection con = JdbcUtil.getConnection();
			
			String query = "insert into flighttickitbooking(bookinguser , id) values(? ,?)";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, username);
			ps.setInt(2, id);
			status = ps.executeUpdate();
			
			if(status > 0) {
				System.out.println("Flight Book Successfully");
			}
			else {
				System.out.println("Flight Not Book Successfully");
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		return status ;
	}
	
	public static List<FlightBookedTickits> viewbookedtickets() {
		List<FlightBookedTickits> list = new ArrayList<FlightBookedTickits>();
		try {
			Connection con = JdbcUtil.getConnection();
			String query = "select * from flighttickitbooking";
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()) {
				String  username = rs.getString(2);
				int id = rs.getInt(3);
				
				list.add(new FlightBookedTickits(username, id));
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
//		System.out.println(list);
		return list;
	}
}
