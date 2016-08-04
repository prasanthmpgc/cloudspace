package dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class editdao {
public static userbean edit(userbean user)throws IOException

{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","system","system");	
		PreparedStatement p=conn.prepareStatement("UPDATE employee SET fname=?,lname=?,email=?,mobile=? where empid=?");
		p.setString(3,user.getEmailID());
		p.setString(1,user.getFirstName());
		p.setString(2,user.getLastName());
		p.setString(4,user.getMobile());
		p.setString(5,user.getEmployeeID());
		
		
		p.executeQuery();
		
	}
	catch(Exception e){
		System.out.println(e);
	}
	return user;
}
}
