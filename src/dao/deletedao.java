package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class deletedao  {
	public static userbean delete(userbean user) {
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","system","system");
			PreparedStatement pstmt=conn.prepareStatement("delete from employee where empid=?");
			pstmt.setString(1,user.getEmployeeID());
			pstmt.executeUpdate();
		}
		catch(Exception e){
			System.out.println(e);
		}
		return user;
		
	}
		
	

}
