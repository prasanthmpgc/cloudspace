package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.leavesbean;

public class leavesdao {
public static leavesbean leaves(leavesbean leaves){
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
		PreparedStatement p=conn.prepareStatement("insert into leaves (empid,date1,type,reason) values (?,?,?,?)");
		p.setString(1, leaves.getEmpid());
		p.setString(2, leaves.getDate1());
		p.setString(3, leaves.getType());
		p.setString(4, leaves.getReason());
		p.executeUpdate();
	}
	catch(Exception e){
		System.out.println(e);
	}
	
	
	
	return leaves;
	
}
}
