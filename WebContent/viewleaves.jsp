<%@page import="userbean.leavesbean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EmployeeLeaves</title>
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
</head>
<body style="background-color:#D1D0CE;">
<div id="pre_header" class="visible-lg"></div>
 <div id="header" class="container">
  <div class="row">
   <!-- Logo -->
   <div class="logo">
   <br>
     <img src="http://www.cloudspacetechnologies.com/img/cloud.png" alt="Logo"  />
    <pre class="tab"><h4><a href="login.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.jsp">ABOUTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="tech.jsp">TECHNOLOGIES</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="products.jsp">PRODUCTS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="careers.jsp">CAREERS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="contactus.jsp">CONTACTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;</h4>
    </pre>
   </div>
   <!-- End Logo -->
    <!-- End Top Menu -->
   </div>
  </div><br><br><br><br><br>

</head>
<body><center>
<h2>Employee Leaves</h2>
<table border="3" style="background-color:white;" ><tr>
<th width="100" style="background-color:skyblue;">EmployeeId</th>&nbsp;&nbsp;&nbsp;
<th width="100" style="background-color:skyblue;">DATE</th>
<th width="100" style="background-color:skyblue;">Type</th>
<th width="500" style="background-color:skyblue;">Reason</th>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
	PreparedStatement p=conn.prepareStatement("select * from leaves");
	ResultSet rs=p.executeQuery();
	while(rs.next()){
		String employeeid=rs.getString("empid");
		String Date1=rs.getString("date1");
		String Type=rs.getString("type");
		String Reason=rs.getString("reason");
		%>
		</tr>
		<tr>
		<td><%=employeeid  %></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td><%=Date1 %></td>
		<td><%=Type%></td>
		<td><%=Reason %></td>
		<td><p><input type="radio" name="radio" value="accepted" >Accept
		<input type="radio" name="radio"value="rejected" >Reject</p></td>
		</tr>
		<%
	}
}catch(Exception e){
	System.out.println(e);
}
	 %>
</table>
</center>
</body>
</html>