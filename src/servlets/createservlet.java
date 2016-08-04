package servlets;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.createdao;
import userbean.userbean;
public class createservlet extends HttpServlet {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException{
		userbean user=new userbean();
		user.setEmployeeID(request.getParameter("empid"));
		user.setFirstName(request.getParameter("fname"));
		user.setLastName(request.getParameter("lname"));
		user.setEmailID(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));
		user.setPassword(request.getParameter("password"));
		createdao.create(user);
		response.sendRedirect("accountcreated.jsp");
		
	}


}
