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
<title>Welcome CloudSpace</title>
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
<title>Editpage</title>
</head>
<body>
<div id="pre_header" class="visible-lg"></div>
 <div id="header" class="container">
  <div class="row">
   <!-- Logo -->
   <div class="logo">
   <br>
     <img src="http://www.cloudspacetechnologies.com/img/cloud.png" alt="Logo" />
    <pre class="tab"><h4><a href="login.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.jsp">ABOUTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="tech.jsp">TECHNOLOGIES</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="products.jsp">PRODUCTS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="careers.jsp">CAREERS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="contactus.jsp">CONTACTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp">LOGIN</a></h4>
    </pre>
   </div>
   <!-- End Logo -->
    <!-- End Top Menu -->
   </div>
  </div><br><br><br><br><br><br>
  <%
  try{
	  
 
  String id=request.getParameter("id");
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");
  PreparedStatement pstmt=conn.prepareStatement("select * from employee where empid=?");
  pstmt.setString(1, id);
  ResultSet rs=pstmt.executeQuery();
  rs.next();
  String firstname=rs.getString("fname");
  String lastname=rs.getString("lname");
  String email=rs.getString("email");
  String mobile=rs.getString("mobile");
  String empid=rs.getString("empid");
  
  %>
  <form action="editservlet1" method="post">
  <tr>
	<td>
		FirstName:
	</td>
	<td>
	<input type="text" name="fname" value=<%=firstname %>><br><br>
	</td>
</tr>
<tr>
	<td>
		LastName:
	</td>
	<td>
		<input type="text" name="lname" value=<%=lastname %>><br> <br>
	</td>
</tr>
<tr>
	<td>
		EmailID:
	</td>
	<td>
		<input type="text"name="email" value=<%=email %>><br><br>
	</td>
</tr>
<tr>
	<td>
		Mobile:
	</td>
	<td>
		<input type="text" name="mobile" value=<%=mobile %>><br><br>
	</td>
</tr>

		<input type="hidden" name="empid" value=<%=empid %>><br><br>
	
<input type="submit" value="change">
</td></tr>
<tr>
  </form>
  <%
  }catch(Exception e){
	  System.out.println(e);
  }%>
</body>
</html>