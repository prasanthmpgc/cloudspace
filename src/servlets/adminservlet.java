package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.admindao;
import userbean.adminbean;


public class adminservlet extends HttpServlet{

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
try{
	adminbean admin=new adminbean();
admin.setAdminId(request.getParameter("adminid"));
admin.setPassword(request.getParameter("password"));
admindao.admin(admin);
boolean loginstatus=admin.isValid();
String a_id=admin.getAdminId();
System.out.println(a_id);
if(loginstatus){
	HttpSession session=request.getSession(true);
	session.setAttribute("adminsession", admin);
	response.sendRedirect("admin.jsp");
}
else{
	response.sendRedirect("login.jsp");
}

}
catch(Exception e){
	System.out.println(e.getMessage());
	System.out.println("admin dao exception");
}
}
}
