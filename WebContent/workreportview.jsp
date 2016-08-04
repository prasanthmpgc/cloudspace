<%@page import="userbean.workreportbean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="userbean.userbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>workreportview.jsp</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
 <meta name="description" content="">
 <meta name="author" content="">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
 <!-- Favicon -->
 <link href="favicon.html" rel="shortcut icon">
 <!-- Bootstrap Core CSS -->
 <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
 <!-- Template CSS -->
 <link rel="stylesheet" href="assets/css/break.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/style.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
 <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/a.css" rel="stylesheet">
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
  </div><br><br><br><br><br><br>
  <%try{
	  	Class.forName("oracle.jdbc.driver.OracleDriver");
	  	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Xe","system","system");
	  	PreparedStatement p=conn.prepareStatement("select * from workreport");
	  	ResultSet rs=p.executeQuery();
		while(rs.next()){
			String employeeid=rs.getString("EMPID");
			String date=rs.getString("DATE3");
			String subject=rs.getString("subject");
			String message=rs.getString("message");
			
  		%>
  		<span class="break"style="width:1240px ; max-width:1240px; max-width:1551px; height:802px; max-height:800px;">
	<div class="newtab-grid">
	<div class="newtab-site">
	<div class="newtab-cell">
	<ul >
	  <li >
    <a href="#" >
      <h2><%=employeeid %></h2>
      <h5><%=date %></h5>
      <h5><%=subject %></h5>
      <h5><%=message %></h5>
    </a>
  </li>
</ul></div></div></span>
<%
}
}  catch(Exception e){
  			System.out.println(e);
  		}
	  %>
</body>
</html>