<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="userbean.userbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employeelogined</title>
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
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
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
  </div><br><br><br><br>
  <center>
  <table>
  <tr>
  <td>
  <%userbean user1 = (userbean)session.getAttribute("employeesession");%>
  <h3>WELCOME:<%= user1.getEmployeeID()%></h3>
  </td><td><div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Profile
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
  	<li><a href="Myprofile.jsp?id=<%=user1.getEmployeeID() %>">Myprofile</a></li>
    <li><a href="view1.jsp?id=<%= user1.getEmployeeID()%>">View</a></li>
    <li><a href="workreport.jsp">WorkReport</a></li>
    <li><a href="edit1.jsp?id=<%=user1.getEmployeeID() %>">Edit</a></li>
    <li><a href="leaves.jsp">Leaves</a></li>
    <li><a href="email.jsp">Email</a></li>
  </ul>
</div></td></tr></table>
  </center>
    <%
try{
	String id=request.getParameter("empid");
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","system","system");
			PreparedStatement pstmt=conn.prepareStatement("select * from Employee where empid=?");
			pstmt.setString(1, id);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			String employeeid=rs.getString("empid");
			String firstname=rs.getString("fname");
			String lastname=rs.getString("lname");
			String emailid=rs.getString("email");
			String mobile=rs.getString("mobile");
			
		}catch(Exception e){
			System.out.println(e);
		}%>
		<center>
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="assets/img/1.jpeg" alt="pics" width="460" height="345">
      </div>

      <div class="item">
        <img src="assets/img/2.jpeg" alt="pics" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="assets/img/3.jpeg" alt="pics" width="460" height="345">
      </div>

      <div class="item">
        <img src="assets/img/4.jpeg" alt="pics" width="460" height="345">
      </div>
    </div>
  </div>
</div>
</center>
</body>
</html>