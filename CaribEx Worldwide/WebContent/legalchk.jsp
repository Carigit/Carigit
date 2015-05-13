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
Statement Stmt = null;
ResultSet rs = null;
PreparedStatement Stmt1 = null;
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded success");
Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
int pid=6;
String prs=request.getParameter("irs1");
String pname=request.getParameter("nm2");
String pste=request.getParameter("ste1");
String ppob=request.getParameter("pob");
String ppor=request.getParameter("por");
String pwn=request.getParameter("wn1");
String psig=request.getParameter("sig1");
String pcap=request.getParameter("cap1");
String pdat=request.getParameter("dat");
String pwit=request.getParameter("witness");
String pseal=request.getParameter("seal1");
String pscn=request.getParameter("scn1");
String psca=request.getParameter("sca1");
String pstn=request.getParameter("stn1");
String pdatt=request.getParameter("datt");
String pscn2=request.getParameter("scn2");
String ppns=request.getParameter("pns1");
String pptle=request.getParameter("printle");
String psgn=request.getParameter("sign1");
String pwan=request.getParameter("wan1");
String pwasg=request.getParameter("wasig1");
String pn1=request.getParameter("pn1");
String ptitle=request.getParameter("ptitle1");
String pda=request.getParameter("da");
String pshp1=request.getParameter("shp1");
String pshp2=request.getParameter("shp2");
String pshpd=request.getParameter("shpd1");
String pshpp=request.getParameter("shpp1");
String pcsbn=request.getParameter("csbn1");
java.sql.Timestamp pcdate=new java.sql.Timestamp(new java.util.Date().getTime());
String pcwho=" ";
java.util.Date utilDate = new java.util.Date();
java.sql.Date pedate = new java.sql.Date(utilDate.getTime());
String pewho=" ";
Stmt=Conn.createStatement();
rs=Stmt.executeQuery("Select App_ID from db_caribex.dt_creditappl");
while(rs.next())
{
	String cid=rs.getString("App_ID");
	System.out.println(cid);
System.out.println("INSERT INTO db_caribex.dt_basiclegal VALUES('"+cid+"','"+prs+"','"+pname+"','"+pste+"','"+ppob+"','"+ppor+"','"+pwn+"','"+psig+"','"+pcap+"','"+pdat+"','"+pwit+"','"+pseal+"','"+pscn+"','"+psca+"','"+pstn+"','"+pdatt+"','"+pscn2+"','"+ppns+"','"+pptle+"','"+psgn+"','"+pwan+"','"+pwasg+"','"+pn1+"','"+ptitle+"','"+pda+"','"+pshp1+"','"+pshp2+"','"+pshpd+"','"+pshpp+"','"+pcsbn+"','"+pcdate+"','admin','"+pcdate+"','admin')");
Stmt1=Conn.prepareStatement("INSERT INTO DB_CARIBEX.dt_basiclegal (App_ID, Forw_IRSNum, Forw_Name, Forw_State, Forw_BusinessPlace, Forw_ResidencePlace, Witness_Name, Witness_Signature, Witness_Capacity, Witness_Date, Witness, Witness_CoporateSeal, Shipper_CompanyName, Shipper_PhyAddress, Shipper_TelephoneNum, Shipper_NotificationDate, Shipper_Name, Shipper_RepNamePrint, Shipper_RepTitlePrint, Shipper_RepSign, Auth_Name, Auth_Sign, Auth_PrintName, Auth_Title, Auth_Date, Auth_ShipperNum, Auth_ShipperName, Auth_ShipperAddress, Auth_ShipperPhone, Auth_Bnumber, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES ('"+cid+"','"+prs+"','"+pname+"','"+pste+"','"+ppob+"','"+ppor+"','"+pwn+"','"+psig+"','"+pcap+"','"+pdat+"','"+pwit+"','"+pseal+"','"+pscn+"','"+psca+"','"+pstn+"','"+pdatt+"','"+pscn2+"','"+ppns+"','"+pptle+"','"+psgn+"','"+pwan+"','"+pwasg+"','"+pn1+"','"+ptitle+"','"+pda+"','"+pshp1+"','"+pshp2+"','"+pshpd+"','"+pshpp+"','"+pcsbn+"','"+pcdate+"','admin','"+pcdate+"','admin')");
Stmt1.executeUpdate();
}
Stmt.close();
Stmt1.close();
Conn.close();

response.sendRedirect("miscellaneous.jsp");
%>
</body>
</html>