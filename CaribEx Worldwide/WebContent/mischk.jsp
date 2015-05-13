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
try{
Statement Stmt = null;
ResultSet rs = null;
PreparedStatement  Stmt1 = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded success");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
int pid=1;
String pname1=request.getParameter("nan1");
String pname2=request.getParameter("nan2");
String psgn=request.getParameter("nasgn1");
String ptle=request.getParameter("natitle");
String pdat=request.getParameter("nadate");
java.sql.Timestamp pcdate=new java.sql.Timestamp(new java.util.Date().getTime());
String pcwho=" ";
java.util.Date utilDate = new java.util.Date();
java.sql.Date pedate = new java.sql.Date(utilDate.getTime());
String pewho=" ";
Stmt=Conn.createStatement();
rs=Stmt.executeQuery("Select Cust_ID from db_caribex.dt_customerinfo where Cust_Name='"+user+"'");
while(rs.next())
{
	String cid=rs.getString("Cust_ID");
	System.out.println(cid);
System.out.println("INSERT INTO db_caribex.dt_miscellaneous VALUES('"+pid+"','"+cid+"','"+pname1+"','"+pname2+"','"+psgn+"','"+ptle+"','"+pdat+"','"+pcdate+"','admin','"+pedate+"','admin')");
Stmt1=Conn.prepareStatement("INSERT INTO DB_CARIBEX.dt_miscellaneous  (App_ID, Ins_Name, Ins_PrintedName, Ins_Signature, Ins_Title, Ins_Date, Created_Date, Created_Who, Edited_Date, Edited_who)  VALUES('"+cid+"','"+pname1+"','"+pname2+"','"+psgn+"','"+ptle+"','"+pdat+"','"+pcdate+"','admin','"+pedate+"','admin')");
Stmt1.executeUpdate();
}
Stmt1.close();
Conn.close();
}
catch (Exception e) {
    e.printStackTrace();
}
response.sendRedirect("submit.jsp");
%>
</body>
</html>