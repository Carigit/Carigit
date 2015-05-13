<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*,java.sql.*,java.io.*,java.io.IOException" %>
<%
String connURL = "jdbc:mysql://localhost:3306/db_caribex";
 Connection conn = null;
 Statement stmt = null;
ResultSet rs = null;
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 conn = DriverManager.getConnection(connURL, "root","caribex");
 stmt = conn.createStatement();
 String userName=request.getParameter("un");
 String secretWord=request.getParameter("pass1");
 rs =stmt.executeQuery ("SELECT * FROM db_caribex.dt_userregistration WHERE Usr_UserName ='"+userName+"' AND Usr_Password ='"+secretWord+"'"); 
 while(rs.next()){
 String dbUser = rs.getString("Usr_UserName");
 String dbPassword= rs.getString("Usr_Password");
 String name=rs.getString("Usr_FirstName");
 String role=rs.getString("Usr_Role");
 Integer r=Integer.parseInt(role);
 boolean entrance;
 entrance=false;
System.out.println("login");
 if ((userName.equals(dbUser)) && (secretWord.equals(dbPassword))){
 entrance=true;
 System.out.println("true");
 }
 else{
 entrance=false;
 System.out.println("false");
 }
 if (entrance==true){
 session.setAttribute("userid",name);
 if (r == 1){
	 %>
	 <jsp:forward page="Customer.jsp" /> <%
 }
 else if(r == 2){
	 %>
	 <jsp:forward page="salesrep.jsp" /> <%
 }
 else if(r == 3){
	 %>
	 <jsp:forward page="cp.jsp" /> <%
 }
 }
 else{
 session.setAttribute("userid","Guest");
 %><jsp:forward page="home.jsp" /> <%
 }
 }
 } catch (ClassNotFoundException e) {
 System.err.println("Couldn't find the mm " + "database driver: "+ e.getMessage());
 } catch (InstantiationException e) {
 System.err.println(e.getMessage());
 } catch (IllegalAccessException e) {
 System.err.println(e.getMessage());
 } catch (SQLException e) {
 System.err.println("SQL problem: " + e.getMessage());
 System.err.println("SQL state: " + e.getSQLState());
 System.err.println("Vendor error: " + e.getErrorCode());
 } finally {
 try {
 if (conn != null) {
 conn.close();
 }
 } catch (SQLException e) {
 System.err.println(e.getMessage());
 }
 }
 %>
</body>
</html>