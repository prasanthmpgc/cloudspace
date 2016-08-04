<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
 <meta name="description" content="">
 <meta name="author" content="">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
 <link href="favicon.html" rel="shortcut icon">
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
<body bgcolor=skyblue>
<div id="pre_header" class="visible-lg"></div>
 <div id="header" class="container">
  <div class="row">
   <!-- Logo -->
   <div class="logo">
<img alt="logo" src="http://www.cloudspacetechnologies.com/img/cloud.png">
<pre class="tab"><h4><a href="login.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.jsp">ABOUTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="tech.jsp">TECHNOLOGIES</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="products.jsp">PRODUCTS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="careers.jsp">CAREERS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="contactus.jsp">CONTACTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;</h4>
    </pre>
   </div>
   <!-- End Logo -->
    <!-- End Top Menu -->
   </div>
  </div><br><br><br><br><br><br>
<center>
<div style="width:600px;height:350px;padding:10px;border:1px solid black; ">
<table><tr><td>
<form action="employeeservlet" method="post"><br><br>
<div class="col-md-6" >
<div style="width:200px;height:200px;padding:10px;border:10px solid green; ">
<div class="input-group margin-bottom-20">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input placeholder="EmployeeID" class="form-control" name="empid" type="text">
       </div>
       <div class="input-group margin-bottom-20">
        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        <input placeholder="Password" class="form-control" type="password" name="password">
       </div>
       <div class="row">
        <div class="col-md-6">
         <input type="submit" class="btn btn-primary pull-right" value="Login"/>
        </div>
<a href="create.jsp">Create Account</a>
</div>
</form>
</td>
<td><br>
<form action="adminservlet"method="post"><br>
<div class="col-md-6">
<div style="width:200px;height:200px;padding:10px;border:10px solid blue;">
<div class="input-group margin-bottom-20">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input placeholder="AdminID" class="form-control" name="adminid" type="text">
       </div>
       <div class="input-group margin-bottom-20">
        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
        <input placeholder="Password" class="form-control" type="password" name="password">
       </div>
       <div class="row">
        <div class="col-md-6">
         <input type="submit" class="btn btn-primary pull-right" value="Login"/>
        </div>
<a href="createadmin.jsp">Create Account</a>
</div>
</form>
</td>
</tr>
</table>
</div>
</center>
</body>
</html>



