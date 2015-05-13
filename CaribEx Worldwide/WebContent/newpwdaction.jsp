<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caribex Worldwide</title>
<link href="stylesheet1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">   
	function validate()
	{
		var user=document.login.un.value;
		var invalid=/\W/; //Alphanumeric characters and Underscore permitted
		if(user==""){
			alert("Enter your username!");
			return false;
		}
		
		var pass1=document.login.pass1.value;
		invalid=/[\W_]/; //Alphabets and digits only allowed
		if(pass1==""){
			alert("Enter your password!");
			return false;
		}
		return true;		
	}
</script>
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
		<form name="login" id="f1" method="post" action="loginchk.jsp" onsubmit="return validate()" >
<%@ page import="java.util.*,java.sql.*,java.io.*,java.io.IOException" %>
<%
String rand=request.getParameter("id");
String uname=request.getParameter("id2");
Class.forName("com.mysql.jdbc.Driver");
	System.out.println("driver loaded success");
	Connection Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
	String query="SELECT * FROM db_caribex.dt_pwd WHERE UserName='"+uname+"'";
	Statement st = Conn.createStatement();
	ResultSet rs = st.executeQuery(query);
	rs.next();
%>	
	<%if(rand.equalsIgnoreCase(rs.getString("RandString"))) { %>
<div id="rcorners2">
<p><b><font face="Helvetica Neue" color="#4F4464" size="5">Password Reset</font></b></p>
<hr style="color: #4F4464; background: #4F4464; width: 100%;" noshade>
<table height="100" class="default">
<tr class="default">
<td><font color="#000000">New Password</font></td>
<td id="text"><input type="password" class="rounded" name="pass1" size="20" /></td>
</tr>
<tr><td><input type="hidden" name="hiddenuname" value=<%= rs.getString("UserName") %> /></td><td></td></tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Confirm Password</font></td>
<td id="text"><input type="password" class="rounded" name="pass2" size="20" maxlength="15" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
</table>
<% } else { %>
	 <b><font face="Helvetica Neue" size="4">Invalid password reset link. Please follow the appropriate link sent to your mail id</font></b>
    <% } %>
    <br>
<input type="image" class="image" src="images/CaribEx_Submit.jpg" alt="Submit" width="116" height="46">
</div>
</form>
</body>
</html>