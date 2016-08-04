package userbean;


public class userbean {
private String EmployeeID;
private String FirstName;
private String LastName;
private String EmailID;
private String Mobile;
private String password;
private boolean valid;
private String login_id;









public  String  getEmployeeID() {
 return EmployeeID;	
}



public  String getPassword() {
	return password;
}
public String setPassword(String password) {
	return this.password = password;
}

public void setEmployeeID(String employeeID) {
	 this.EmployeeID = employeeID;
}
public String getFirstName() {
	return FirstName;
}
public void setFirstName(String firstName) {
	this.FirstName = firstName;
}
public String getLastName() {
	return LastName;
}
public void setLastName(String lastName) {
	this.LastName = lastName;
}
public String getEmailID() {
	return EmailID;
}
public void setEmailID(String emailID) {
	this.EmailID = emailID;
}
public String getMobile() {
	return Mobile;
}
public void setMobile(String mobile) {
	this.Mobile = mobile;
}
public  void setValid(boolean valid) {
	this.valid = valid;
}
public  String getLogin_id() {
	return login_id;
}



public  void setLogin_id(String login_id) {
	this.login_id = login_id;
}
public boolean isValid() {
	
	return valid;
}


	
}
