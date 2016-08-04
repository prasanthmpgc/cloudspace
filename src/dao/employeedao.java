package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import userbean.userbean;

public class employeedao {
	public static Connection conn;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs=null;
public static userbean employee (userbean user) throws Exception
{
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		 pstmt=conn.prepareStatement("select * from employee where empid=? and password=? ");
		pstmt.setString(1, user.getEmployeeID());
		pstmt.setString(2, user.getPassword());
		System.out.println(user.getEmployeeID());
		System.out.println(user.getPassword());
		ResultSet rs=pstmt.executeQuery();
		boolean reg=rs.next();
		
		 System.out.println(reg);
		if(reg){
			user.setValid(true);
			user.setEmployeeID(rs.getString("EmployeeID"));
			user.setLogin_id(rs.getString("login_id"));
		}else{
			user.setValid(false);
		
		}
		
			
		}catch(SQLException se){
			se.printStackTrace();
			System.out.println("login dao exception");
		}finally{
			if(rs!=null){
				try{
					rs.close();
				}catch(Exception e){
					e.printStackTrace();
				}
			}
		}
		
		
	
	return user;
	

}
}
