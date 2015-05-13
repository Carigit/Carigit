<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page	import="java.sql.*,java.util.*,java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@page import="java.security.Security" %>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.PasswordAuthentication" %>
<%@page import="javax.mail.internet.InternetAddress" %>
<%@page import="javax.mail.Transport" %>
<%@page import="javax.mail.internet.MimeMessage" %>
<%@page import="com.sun.net.ssl.internal.ssl.*" %>
<html lang="en">
<head>
<title>Registration Successful</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded success");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
String pfname=request.getParameter("fn");
String plname=request.getParameter("ln");
String pcid=request.getParameter("cid");
String ppuname=request.getParameter("un");
String ppassword=request.getParameter("pass2");
String putype=request.getParameter("roletype");
String pgender=request.getParameter("gender");
String pemail=request.getParameter("rmail");
String pcontactnum=request.getParameter("rmobile");
String pdob=request.getParameter("dob");
StringTokenizer tokens=new StringTokenizer(pdob);
String day=tokens.nextToken("-");
String month=tokens.nextToken("-");
String year=tokens.nextToken();
String date=year+"-"+month+"-"+day;
java.sql.Timestamp pcdate=new java.sql.Timestamp(new java.util.Date().getTime());
String pcwho=" ";
java.util.Date utilDate = new java.util.Date();
java.sql.Date pedate = new java.sql.Date(utilDate.getTime());
String pewho=" ";
System.out.println("INSERT INTO db_caribex.dt_userregistration(Usr_FirstName, Usr_LastName, Usr_Cust_ID, Usr_UserName, Usr_Password, Usr_Role, Usr_Email, Usr_Mobile, Usr_Gender, Usr_DOB, Created_Date, Created_Who, Edited_Date, Edited_Who)  VALUES('"+pfname+"','"+plname+"','"+pcid+"','"+ppuname+"','"+ppassword+"','"+putype+"','"+pemail+"','"+pcontactnum+"','"+pgender+"','"+pdob+"','"+pcdate+"','admin','"+pedate+"','admin')");
PreparedStatement Stmt=Conn.prepareStatement("INSERT INTO db_caribex.dt_userregistration(Usr_FirstName, Usr_LastName, Usr_Cust_ID, Usr_UserName, Usr_Password, Usr_Role, Usr_Email, Usr_Mobile, Usr_Gender, Usr_DOB, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES('"+pfname+"','"+plname+"','"+pcid+"','"+ppuname+"','"+ppassword+"','"+putype+"','"+pemail+"','"+pcontactnum+"','"+pgender+"','"+pdob+"','"+pcdate+"','admin','"+pedate+"','admin')");
Stmt.executeUpdate();
String strDirectoy ="C:\\Users\\Banerasoft\\workspace\\CaribEx Worldwide\\WebContent\\Users\\" + ppuname;
new File(strDirectoy).mkdir();
Stmt.close();
Conn.close();

//Sending confirmation mail that the user has successfully registered
try{
String recipients=pemail;
String subject="Welcome to CaribEx Worldwide";
String body="Welcome to CaribEx Worldwide web portal!\n Your User Name is "+ppuname+". Please note it down. \n";
String sender="resanth92@gmail.com";
String mailhost = "smtp.gmail.com";
java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
Properties props = new Properties();
props.setProperty("mail.transport.protocol", "smtp");
props.setProperty("mail.host", mailhost);
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.socketFactory.fallback", "false");
props.setProperty("mail.smtp.quitwait", "false");
System.out.print("\nStarted------------>\n");
javax.mail.Session mysession = javax.mail.Session.getInstance(props,new javax.mail.Authenticator()
{
protected PasswordAuthentication getPasswordAuthentication()
{ return new PasswordAuthentication("resanth92","Pianomad1392");	}
});
MimeMessage message = new MimeMessage(mysession);
message.setSender(new InternetAddress(sender));
message.setSubject(subject);
message.setContent(body, "text/plain");
if (recipients.indexOf(',') > 0)
		message.setRecipients(javax.mail.Message.RecipientType.TO, InternetAddress.parse(recipients));
else
		message.setRecipient(javax.mail.Message.RecipientType.TO, new InternetAddress(recipients));

Transport.send(message);
System.out.print("Your mail has been Sent\n"); 
}
catch (Exception e) {
	// Report the error using the appropriate name and ID.
	System.out.print(e);

	}

    response.sendRedirect("home.jsp?name="+ppuname+"");

%>
</body>
</html>