package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.leavesdao;
import userbean.leavesbean;

public class leavesservlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException{
	leavesbean leaves=new leavesbean();
	leaves.setEmpid(request.getParameter("empid"));
	leaves.setDate1(request.getParameter("date"));
	leaves.setType(request.getParameter("type"));
	leaves.setReason(request.getParameter("reason"));
	leavesdao.leaves(leaves);
	response.sendRedirect("sucess.jsp");
}
}
