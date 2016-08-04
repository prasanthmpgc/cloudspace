package servlets;
 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.employeedao;
import userbean.userbean;
  
public class employeeservlet extends HttpServlet {
  
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Override  
  
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try{
		System.out.println("EMPLOYEEprasanth");
	userbean user=new userbean();
	user.setEmployeeID(request.getParameter("empid"));
	user.setPassword(request.getParameter("password"));
	System.out.println(user.getEmployeeID());
	employeedao.employee(user);
    boolean loginstatus=user.isValid();
    String l_id= user.getEmployeeID();
    System.out.println(l_id);
    
	if(loginstatus){
		
		HttpSession session=request.getSession(true);
		session.setAttribute("employeesession",user);
		response.sendRedirect("Employee.jsp");
		//System.out.println("exit employee");
		}
	else{
		response.sendRedirect("login.jsp");
	}
	
	
	
	
	}
	catch(Exception e){
		System.out.println(e.getMessage());
		System.out.println("employee dao exception");
	}
	
}
}