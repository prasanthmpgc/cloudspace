<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee details</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
 <meta name="description" content="">
 <meta name="author" content="">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
 <!-- Favicon -->
 <link href="favicon.html" rel="shortcut icon">
 <!-- Bootstrap Core CSS -->
 <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
 <!-- Template CSS -->
 <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/style.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
 <!-- Google Fonts-->
 <link href="http://fonts.googleapis.com/css?family=Lato:400,300" rel="stylesheet" type="text/css">
 <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div id="pre_header" class="visible-lg"></div>
 <div id="header" class="container">
  <div class="row">
   <!-- Logo -->
   <div class="logo">
   <br>
     <img src="http://www.cloudspacetechnologies.com/img/cloud.png" alt="Logo" />
    <pre class="tab"><h4><a href="login.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.jsp">ABOUTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="tech.jsp">TECHNOLOGIES</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="products.jsp">PRODUCTS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="careers.jsp">CAREERS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="contactus.jsp">CONTACTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;</h4>
    </pre>
   </div>
   <!-- End Logo -->
    <!-- End Top Menu -->
   </div>
  </div>
  <center><br><br><br><br><br><br>
<table border="2" class="hovertable">
<tr>
<th>EmployeeID</th>
<th>Firstname</th>
<th>Lastname</th>
<th>Email</th>
<th>mobile</th>

</tr>
<style type="text/css">
table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}
table.hovertable th {
	background-color:#c3dde0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.hovertable tr {
	background-color:#d4e3e5;
}
table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
	
}
</style>

</center>
 <% 
 try{
	 String id=request.getParameter("id");
	 PreparedStatement pstmt=null;
		  ResultSet rs = null;
		  Connection conn = null;
		 
 		Class.forName("oracle.jdbc.driver.OracleDriver");
 		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
 		pstmt=conn.prepareStatement("select * from employee where empid=?");
 		 pstmt.setString(1, id);
 		rs=pstmt.executeQuery();
 		while(rs.next()){
 			String employeeid=rs.getString("empid");
 			String firstname=rs.getString("fname");
 			String lastname=rs.getString("lname");
 			String email=rs.getString("email");
 			String mobile=rs.getString("mobile");
 			//String password=rs.getString("password");
 			
 			%>
 			<tr class="even pointer">   
 			<td class=" "><%= employeeid %></td>
 			<td class=" "><%= firstname %></td>
 			<td class=" "><%= lastname %></td>
 			<td class=" "><%= email %></td>
 			<td class=" "><%= mobile %></td>
 			
 			</tr>
 			<% 
 		}	
 }catch(SQLException e){
	 System.out.print(e);
 }
  %>
  
  </table>
</body>
</html>