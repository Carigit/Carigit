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
		String user=null;
		try{
			user = session.getAttribute("userid").toString();
			System.out.println(user);
		}
			catch(Exception e){}
	%>
<%
   Connection conn = null;
   Statement stmt = null;
  ResultSet rs = null;
  Connection conn1 = null;
  Statement stmt1 = null;
 ResultSet rs1=null;
 ResultSet rs2=null;
   String connURL = "jdbc:mysql://localhost:3306/db_caribex";
   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(connURL, "root","caribex");
   String con = "jdbc:mysql://localhost:3306/db_caribex";
   Class.forName("com.mysql.jdbc.Driver");
   conn1 = DriverManager.getConnection(con, "root","caribex");
   String sql="SELECT count(*) as ID FROM db_caribex.dt_wip";
   stmt1 = conn1.createStatement();
   rs1 = stmt1.executeQuery(sql);
   rs1.next();
   int row=rs1.getInt("ID");
   System.out.println(row);
   String query="SELECT SalesRep_ID, SalesRep_Name, Customer_ID, Customer_Name, Wip_Date, Customer_Status FROM db_caribex.dt_wip";
stmt = conn.createStatement();
rs = stmt.executeQuery(query);
for (int i=0;i<row;i++){
	rs.next();  
%>
<%} %>
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