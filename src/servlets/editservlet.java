package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.editdao;
import userbean.userbean;

public class editservlet extends HttpServlet  {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException{
	userbean user=new userbean();
	user.setEmployeeID(req.getParameter("empid"));
	user.setFirstName(req.getParameter("fname"));
	user.setLastName(req.getParameter("lname"));
	user.setEmailID(req.getParameter("email"));
	user.setMobile(req.getParameter("mobile"));
	editdao.edit(user);
	res.sendRedirect("view.jsp");
}
}
