package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.workreportbean;

public class workreportdao {
public static workreportbean workreport(workreportbean workreport){
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
	PreparedStatement p=conn.prepareStatement("insert into workreport (empid,DATE3,subject,message) values (?,?,?,?)");
	p.setString(1, workreport.getEmpid());
	p.setString(2, workreport.getDate3());
	p.setString(3, workreport.getSubject());
	p.setString(4, workreport.getMessage());
	p.executeUpdate();
}catch(Exception e){
	System.out.println(e);
}
	return workreport;
}
}
