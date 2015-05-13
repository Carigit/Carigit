<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>forgotpassaction</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR"
	content="Rational® Application Developer for WebSphere® Software">
</head>
<body>
<%@taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@page import="java.security.Security" %>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.PasswordAuthentication" %>
<%@page import="javax.mail.internet.InternetAddress" %>
<%@page import="javax.mail.Transport" %>
<%@page import="javax.mail.internet.MimeMessage" %>
<%@page import="com.sun.net.ssl.internal.ssl.*" %>
<%@ page import="java.util.*,java.sql.*,java.io.*,java.io.IOException" %>
 <%
    String uname=request.getParameter("un");
    int range =8;
	String randString ="";
	StringBuffer sb = new StringBuffer();
	String block = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFIJKLMNOPQRSTUVWXYZ";
	System.out.println(block);
	sb.append(block).append(block.toUpperCase()).append("0123456789");
	block = sb.toString();
	sb = new StringBuffer();
	Random random = new Random();
	try {
		for (int i = 0; i < range; i++) {
			sb.append(Character.toString(block.charAt(random.nextInt(block.length()-1))));
			}
		randString = sb.toString();
		}
		catch (ArrayIndexOutOfBoundsException e) {}
		catch (NumberFormatException e) {}
		catch (Exception e) {}
	//fetching user info
	Class.forName("com.mysql.jdbc.Driver");
	System.out.println("driver loaded success");
	Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
	System.out.println(uname);
	String query="SELECT * FROM db_caribex.dt_userregistration WHERE Usr_UserName='"+uname+"'";
	Statement st = Conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	int flag=0;
	if(rs.next())
	flag=1;
	if(flag==0){
	%>
	<p>Such a user does not exist. Please retry with a different username or Sign up!!!</p>
						
    
    <% } else { %>
       <p>Password reset link has been sent to your mail id.</p>
    <%
    String query2="INSERT INTO dbcaribex.dt_pwd (UserName, RandString) VALUES('"+uname+"','"+randString+"')";
    Statement st1 = Conn.createStatement();
    st1.executeUpdate(query2);
    try {

            String recipients=rs.getString("Usr_Email");
        	String subject="CaribEx Password Reset";
        	String alink="http://localhost:8081/CaribEx_Worldwide/newpwd.jsp?id="+randString+"&id2="+uname;
        	String body="\nYour Password is '"+randString+"'. \nClick on this link to login:\n"+alink;
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
		System.out.print("Your mail has been Sent");
        } catch (Exception e) {
            // Report the error using the appropriate name and ID.
          System.out.print(e);

        }
	}

%>
</body>
</html>