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
CallableStatement Stmt = null;
Connection Conn = null;
try{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded success");
Conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
String pid="1";
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
System.out.println("{call sp_userRegistrationInsertUpdate('"+pfname+"','"+plname+"','"+ppuname+"','"+ppassword+"','"+putype+"','"+pemail+"','"+pcontactnum+"','"+pdob+"','"+pgender+"','"+pcdate+"','admin','"+pedate+"','admin')}");
Stmt=Conn.prepareCall("{call sp_userRegistrationInsertUpdate(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
System.out.println("Call executed");
Stmt.setString(1, pfname);
System.out.println(pfname);
Stmt.setString(2, plname);
System.out.println(plname);
Stmt.setString(3, ppuname);
System.out.println(ppuname);
Stmt.setString(4, ppassword);
System.out.println(ppassword);
Stmt.setString(5, putype);
System.out.println(putype);
Stmt.setString(6, pemail);
System.out.println(pemail);
Stmt.setString(7, pcontactnum);
System.out.println(pcontactnum);
Stmt.setString(8, pdob);
System.out.println(pdob);
Stmt.setString(9, pgender);
System.out.println(pgender);
Stmt.setTimestamp(10, pcdate);
System.out.println(pcdate);
Stmt.setString(11, pcwho);
System.out.println(pcwho);
Stmt.setDate(12, pedate);
System.out.println(pedate);
Stmt.setString(13, pewho);
System.out.println(pewho);
Stmt.registerOutParameter(14, java.sql.Types.VARCHAR);
Stmt.execute();
System.out.println("Executed");  
String result = Stmt.getString(14);
System.out.println("Records Saved Successfully::"+result);
//Conn.commit();
//Conn.close();
while (Stmt.getUpdateCount() != -1)   {    int i=0; i++;     
System.out.println("Update Count " +  i   + Stmt.getUpdateCount());    
Stmt.getMoreResults();           }    
String strDirectoy ="C:\\Users\\Banerasoft\\workspace\\CaribEx Worldwide\\WebContent\\Users\\" + ppuname;
new File(strDirectoy).mkdir();
}catch(Exception e){
    e.printStackTrace();
}finally{
    try {
        Stmt.close();
        Conn.close();
        response.sendRedirect("home.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

%>
</body>
</html>