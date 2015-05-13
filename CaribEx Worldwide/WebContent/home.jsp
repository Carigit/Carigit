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
<form name="login" id="f1" method="post" action="loginchk.jsp" onsubmit="return validate()" >
<div id="rcorners2">
<p><b><font face="Helvetica Neue" color="#4F4464" size="5">Customer Login</font></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="Helvetica Neue" size="2"><a href="forgotpwd.jsp">Forgot your password?</a></font></p>
<hr style="color: #4F4464; background: #4F4464; width: 100%;" noshade>
<table height="100" class="default">
<tr class="default">
<td><font color="#000000">Username</font></td>
<td id="text"><input type="text" class="rounded" name="un" size="20" value="<%= request.getParameter("name")%>"/></td>
</tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Password</font></td>
<td id="text"><input type="password" class="rounded" name="pass1" size="20" maxlength="15" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
</table>
<input type="checkbox" name="check" id="c1"/>&nbsp;&nbsp;&nbsp;&nbsp;
<label for="c1" class="pad"><font color="#000000" size="2">Remember me next time</label><br><br>
<input type="image" class="image" src="images/CaribEx_Login.jpg" alt="Submit" width="116" height="46">
</div>
</form>
</body>
</html>