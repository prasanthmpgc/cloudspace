package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.deletedao;
import userbean.userbean;

public class deleteservlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public  void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		userbean user=new userbean();
		user.setEmployeeID(req.getParameter("empid"));
		deletedao.delete(user);	
		res.sendRedirect("deletesuccess.jsp");
	}
}
