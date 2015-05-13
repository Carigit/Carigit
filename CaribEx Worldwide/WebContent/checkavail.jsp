<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><%@page
	import="java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>checkavail</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR"
	content="Rational® Application Developer for WebSphere® Software">
</head>
<body>

<%
String ppuname = request.getParameter("un").toString();
System.out.println(ppuname);
String data ="";
try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from db_caribex.dt_userregistration where Usr_UserName='"+ppuname+"' AND '"+ppuname+"'!=' ' ");
int count=0;
          while(rs.next())
          {

                   count++;
          }
session.setAttribute("usercount",count);
                    if(count>0)
          {
             data="Not Available";
          }
          else
          {
                      data="Available";
          }
out.println(data);
System.out.println(data);
}
catch (Exception e) {
System.out.println(e);
}
%>

</body>
</html>