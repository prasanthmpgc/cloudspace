<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EmployeeRegistrationForm</title>
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
</head>

<body>
<div id="pre_header" class="visible-lg"></div>
 <div id="header" class="container">
  <div class="row">
<!-- Logo -->
   <div class="logo">
   <br>
<pre class="tab"><h4><a href="login.jsp">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.jsp">ABOUTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="tech.jsp">TECHNOLOGIES</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="products.jsp">PRODUCTS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="careers.jsp">CAREERS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="contactus.jsp">CONTACTUS</a>&nbsp;&nbsp;&nbsp;&nbsp;</h4>
    </pre>
<center>
<h2>CreateAccount</h2>
<div style="width:600px;height:460px;padding:10px;border:10px solid orange;">
<form action="createservlet" method="post" onsubmit="return ValidateForm(this)";>
<script type="text/javascript">
function ValidateForm(frm) {
if(frm.empid.value == ""){ alert('employeeid is required'); frm.empid.focus(); return false; }
if (frm.fname.value == "") { alert('First name is required.'); frm.fname.focus(); return false; }
if(frm.lname.value == ""){ alert('lastname is required.'); frm.lname.focus(); return false;}
if (frm.email.value == "") { alert('Email address is required.'); frm.email.focus(); return false; }
if (frm.email.value.indexOf("@") < 1 || frm.email.value.indexOf(".com") < 1) { alert('Please enter a valid email address.'); frm.email.focus(); return false; }
if (frm.mobile.value == "") { alert('Phone is required.'); frm.mobile.focus(); return false; }

{ if(frm.password.value.length < 6) { alert("Error: Password must contain at least six characters!"); frm.password.focus(); return false; }
if(!re.test(frm.password.value)) { alert("Error: password must contain at least one number (0-9)!"); frm.password.focus(); return false; } re = /[a-z]/; 
if(!re.test(frm.password.value)) { alert("Error: password must contain at least one lowercase letter (a-z)!"); frm.password.focus(); return false; } re = /[A-Z]/; 
if(!re.test(frm.password.value)) { alert("Error: password must contain at least one uppercase letter (A-Z)!"); frm.password.focus(); return false; } 
} 
return true; 
}
</script>
<table  border="0" cellpadding="5" cellspacing="0">
<tr>
	<td>
		EmployeeID:
	</td>
	<td>
		<input type="text"name="empid"><br><br>
	</td>
</tr>
<tr>
	<td>
		FirstName:
	</td>
	<td>
	<input type="text" name="fname"><br><br>
	</td>
</tr>
<tr>
	<td>
		LastName:
	</td>
	<td>
		<input type="text" name="lname"><br> <br>
	</td>
</tr>
<tr>
	<td>
		EmailID:
	</td>
	<td>
		<input type="text"name="email"><br><br>
	</td>
</tr>
<tr>
	<td>
		Mobile:
	</td>
	<td>
		<input type="text" name="mobile"><br><br>
	</td>
</tr>
<tr>
	<td>
		Password:
	</td>	
	<td>
		<input type="password" name="password"><br><br>
	</td>
</tr>
<tr>
	<td>
		UploadPhoto:
	</td>	
	<td>
		<input type="file" name="Photo"><br><br>
	</td>
</tr>
<tr>
	<td colspan="2" >
		<input type="submit" value="Register" >
		
	</td>
</tr>
</table>
</form>
</div>
</center>
</body>
</html>