package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class createdao {
public static userbean create(userbean user){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		PreparedStatement p=conn.prepareStatement("insert into Employee (empid,fname,lname,email,mobile,password) values (?,?,?,?,?,?)");
		p.setString(1, user.getEmployeeID());
		p.setString(2, user.getFirstName());
		p.setString(3, user.getLastName());
		p.setString(4, user.getEmailID());
		p.setString(5, user.getMobile());
		p.setString(6, user.getPassword());
		
		
		p.executeUpdate();
	}
	catch(Exception e){
		System.out.println(e);
	}
	return user;
	
}
}
