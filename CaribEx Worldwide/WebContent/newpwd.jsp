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
<form name="login" id="f1" method="post" action="newpwdaction.jsp" onsubmit="return validate()" >
<div id="rcorners2">
<center><p><b><font face="Helvetica Neue" color="#4F4464" size="5">Login to Reset Password</font></b></p></center>
<hr style="color: #4F4464; background: #4F4464; width: 100%;" noshade>
<table height="100" class="default">
<tr class="default">
<td><font color="#000000">Username</font></td>
<td id="text"><input type="text" class="rounded" name="id2" size="20" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Password</font></td>
<td id="text"><input type="password" class="rounded" name="id" size="20" maxlength="15" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
</table>

<input type="image" class="image" src="images/CaribEx_Submit.jpg" alt="Submit" width="116" height="46">
</div>
</form>
</body>
</html>