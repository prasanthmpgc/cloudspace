package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import userbean.adminbean;

public class admindao {
	public static Connection conn;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs=null;
	public static adminbean admin(adminbean admin) throws Exception {
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		PreparedStatement p=conn.prepareStatement("select * from admin where adminid=? and password=?");
		p.setString(1,admin.getAdminId());
		p.setString(2, admin.getPassword());
		ResultSet rs=p.executeQuery();
		boolean reg1=rs.next();
		System.out.println(reg1);
		if(reg1){
			admin.setvalid(true);
			admin.setAdminId(rs.getString("adminid"));
			
			
		}
		else{
			admin.setvalid(false);
		}
	}
	catch(SQLException sqle){
		sqle.printStackTrace();
		System.out.println(sqle);
	}
	finally{
		if(rs!=null){
			try{
				rs.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	return admin;
}


}
