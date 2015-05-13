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
String pid="1";
String pcid=request.getParameter("cid");
String pname=request.getParameter("n1");
String pac=request.getParameter("ac");
String pwca=request.getParameter("r1");
String pwcode=request.getParameter("wcacode");
String padd1=request.getParameter("add1");
String padd2=request.getParameter("add2");
String pcity=request.getParameter("city");
String pstate=request.getParameter("state");
String pzip=request.getParameter("zip");
String pcountry=request.getParameter("country");
String pph=request.getParameter("ph");
String pfax=request.getParameter("fax");
String pein=request.getParameter("ein");
String pweb=request.getParameter("web");
String paddr1=request.getParameter("addr1");
String paddr2=request.getParameter("addr2");
String pcity1=request.getParameter("city1");
String pstate1=request.getParameter("state1");
String pzip1=request.getParameter("zip1");
String pcountry1=request.getParameter("country1");
String pfn=request.getParameter("fn");
String pln=request.getParameter("ln");
String ptitle=request.getParameter("title");
String pphc=request.getParameter("phc");
String pfaxc=request.getParameter("faxc");
String pemail=request.getParameter("email");
String pfn1=request.getParameter("fn1");
String pln1=request.getParameter("ln1");
String ptitle1=request.getParameter("title1");
String pap1=request.getParameter("ap1");
String pap2=request.getParameter("ap2");
String papmail=request.getParameter("apmail");
java.sql.Timestamp pcdate=new java.sql.Timestamp(new java.util.Date().getTime());
String pcwho=" ";
java.util.Date utilDate = new java.util.Date();
java.sql.Date pedate = new java.sql.Date(utilDate.getTime());
String pewho=" ";
System.out.println("INSERT INTO db_caribex.dt_customerinfo VALUES('"+pcid+"','"+pname+"','"+pac+"','"+pwca+"','"+pwcode+"','"+padd1+"','"+padd2+"','"+pcity+"','"+pstate+"','"+pcountry+"','"+pph+"','"+pfax+"','"+pein+"','"+pweb+"','"+paddr1+"','"+paddr2+"','"+pcity1+"','"+pstate1+"','"+pzip1+"','"+pcountry1+"','"+pfn+"','"+pln+"','"+ptitle+"','"+pphc+"','"+pfaxc+"','"+pemail+"','"+pfn1+"','"+pln1+"','"+ptitle1+"','"+pap1+"','"+pap2+"','"+papmail+"','now()','"+pcwho+"','curdate()','"+pewho+"')");
PreparedStatement Stmt=Conn.prepareStatement("INSERT INTO DB_CARIBEX.dt_customerinfo (Cust_ID, Cust_Name, Cust_AffilatedCompany, Cust_WcaMember, Cust_WCACode, Cust_Address1, Cust_Address2, Cust_City, Cust_State, Cust_ZipCode, Cust_Country, Cust_PhoneNum, Cust_FaxNum, Cust_EINNum, Cust_Website, Bill_Address1, Bill_Address2, Bill_City, Bill_State, Bill_ZipCode, Bill_Country, Cont_FirstName, Cont_LastName, Cont_Title, Cont_PhoneNum, Cont_FaxNum, Con_Email, Acct_FirstName, Acct_LastName, Acct_Title, Acct_PhoneNum, Acct_FaxNum, Acct_Email, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES ('"+pcid+"','"+pname+"','"+pac+"','"+pwca+"','"+pwcode+"','"+padd1+"','"+padd2+"','"+pcity+"','"+pstate+"','"+pzip+"','"+pcountry+"','"+pph+"','"+pfax+"','"+pein+"','"+pweb+"','"+paddr1+"','"+paddr2+"','"+pcity1+"','"+pstate1+"','"+pzip1+"','"+pcountry1+"','"+pfn+"','"+pln+"','"+ptitle+"','"+pphc+"','"+pfaxc+"','"+pemail+"','"+pfn1+"','"+pln1+"','"+ptitle1+"','"+pap1+"','"+pap2+"','"+papmail+"','"+pcdate+"','admin','"+pedate+"','admin')");
Stmt.executeUpdate();
String strDirectoy ="C:\\Users\\Banerasoft\\workspace\\CaribEx Worldwide\\WebContent\\Users\\" + pname;
new File(strDirectoy).mkdir();
Stmt.close();
Conn.close();

response.sendRedirect("Credit.jsp");
%>
</body>
</html>