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
		String user=null;
		try{
			user = session.getAttribute("userid").toString();
			System.out.println(user);
		}
			catch(Exception e){}
	%>
<%
try {
Statement stmt=null;
ResultSet rs=null;
PreparedStatement  Stmt=null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded success");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
String pdat=request.getParameter("sdat");
StringTokenizer tokens=new StringTokenizer(pdat);
String day=tokens.nextToken("/");
String month=tokens.nextToken("/");
String year=tokens.nextToken();
String date=year+"/"+month+"/"+day;
String pname=request.getParameter("scnam");
String pscid=request.getParameter("scid");
String peml=request.getParameter("seml");
java.sql.Timestamp pcdate=new java.sql.Timestamp(new java.util.Date().getTime());
String pcwho=" ";
java.util.Date utilDate = new java.util.Date();
java.sql.Date pedate = new java.sql.Date(utilDate.getTime());
String pewho=" ";
stmt=Conn.createStatement();
rs=stmt.executeQuery("Select Usr_Cust_ID, Usr_UserName from db_caribex.dt_userregistration where Usr_FirstName='"+user+"'");
while(rs.next())
{
	String cid=rs.getString("Usr_Cust_ID");
	System.out.println(cid);
	String name=rs.getString("Usr_UserName");
	System.out.println(name);
System.out.println("INSERT INTO db_caribex.dt_wip (SalesRep_ID, SalesRep_Name, Customer_ID, Customer_Name, Wip_Date, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES('"+cid+"','"+name+"','"+pscid+"','"+pname+"','"+pdat+"','"+pcdate+"','admin','"+pcdate+"','admin')");
Stmt=Conn.prepareStatement("INSERT INTO db_caribex.dt_wip (SalesRep_ID, SalesRep_Name, Customer_ID, Customer_Name, Wip_Date, Created_Date, Created_Who, Edited_Date, Edited_Who)VALUES('"+cid+"','"+name+"','"+pscid+"','"+pname+"','"+pdat+"','"+pcdate+"','admin','"+pcdate+"','admin')");
Stmt.executeUpdate();
System.out.println(pdat);
System.out.println(pname);
System.out.println(pscid);
System.out.println(peml);
}
Stmt.close();
Conn.close();

// Sending confirmation mail that the user has successfully registered


            // do something here
        	String recipients=peml;
        	String subject="CaribEx Worldwide - Registration Link";
        	String body="Welcome to CaribEx Worldwide web portal!\n You have been provided the link to register yourselves with CariBex.\n  Your Customer ID is "+pscid+". Please note it down. \n Click here to Register: http://localhost:8081/CaribEx_Worldwide/register.jsp?name="+pscid+"";
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
        } catch (Exception e) {
            // Report the error using the appropriate name and ID.
          System.out.print(e);

        }
response.sendRedirect("cp.jsp");
%>
</body>
</html>