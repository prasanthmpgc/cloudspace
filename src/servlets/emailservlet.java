package servlets;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.emaildao;
public class emailservlet extends HttpServlet {
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req,HttpServletResponse res){
	try{
	Properties properties=System.getProperties();
	properties.put("mail.smtp.port","587");
	properties.put("mail.smtp.auth","true");
	properties.put("mail.smtp.starttls.enable", "true");
	javax.mail.Session session=javax.mail.Session.getDefaultInstance(properties);
	MimeMessage mimeMessage=new MimeMessage(session);
	String email=req.getParameter("email");
	System.out.println(email);
	mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
	mimeMessage.setSubject(req.getParameter("empid"));
	mimeMessage.setContent(req.getParameter("content"), null);
	Transport transport=session.getTransport("smtp");
	transport.connect("smtp.gmail.com","reli.k72@gmail.com","9059565830");
	transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
	res.sendRedirect("sucess.jsp");
	}
	catch(Exception e){
		System.out.println(e);
	}
}
}
