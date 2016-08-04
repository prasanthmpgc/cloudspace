package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.workreportdao;
import userbean.workreportbean;

public class workreportservlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException{
	workreportbean workreport=new workreportbean();
	workreport.setEmpid(request.getParameter("empid"));
	workreport.setDate3(request.getParameter("date3"));
	workreport.setSubject(request.getParameter("subject"));
	workreport.setMessage(request.getParameter("message"));
	workreportdao.workreport(workreport);
	response.sendRedirect("sucess.jsp");
}
}
