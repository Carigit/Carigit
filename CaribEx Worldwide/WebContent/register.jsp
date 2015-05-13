<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caribex Worldwide</title>
<link href="stylesheet1.css" rel="stylesheet" type="text/css" />
 <!--<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
  <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>-->
<script type="text/javascript">   
function checkEmail() {
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(reg.rmail.value)){
    return true;
    }
    return false; 
  }
  function checkName(str){
      var re = /[^a-zA-Z]/g;
      if (re.test(str)) return false;
      return true;
    }
	function validate()
	{
		var cid=document.reg.cid;
		var fn=document.reg.fn;
		var ln=document.reg.ln;
		var un=document.reg.un;
		 var pass1=document.reg.pass1;
         var pass2=document.reg.pass2;
         var dob=document.reg.dob;
         var email = document.reg.rmail;
         var mob = document.reg.rmobile;
         if((cid.value==null) || (cid.value=="")){
	            window.alert("Please Enter your Customer ID");
	            cid.focus();
	            return false;
	            }
		 if((fn.value==null) || (fn.value=="")){
	            window.alert("Please Enter your first name");
	            fn.focus();
	            return false;
	            }
	            if((ln.value==null) || (ln.value=="")){
	            window.alert("Please Enter your last name");
	            ln.focus();
	            return false;
	            }
	            if((un.value==null)||(un.value=="")){
	            window.alert("Please Enter your Name!");
	            un.focus();
	            return false;
	            }
	            if((un.value.length < 5) || (un.value.length > 15)){ //username must be 6 - 15 letters length
				window.alert("Username must be 5 - 15 characters length!");
				un.select();
				return false;
				}
	            if(checkName(un.value)==false){
	            un.value="";
	            window.alert("Invalid Name!");
	            un.focus();
	            return false;
	            }		
	            if((pass1.value==null)||(pass1.value=="")){
	            window.alert("Please Enter your password!");
	            pass1.focus();
	            return false;
	            }
	            if((pass1.value.length < 4) || (pass1.value.length > 14)){
	            window.alert("Enter password between 4 and 14");
	            pass1.select();
	            return false;
	            }
	            if((pass2.value==null) || (pass2.value==""))
	            {
	            window.alert("Please conform your password");
	            pass2.focus();
	            return false;
	            }
	            if(pass1.value != pass2.value){
	            window.alert("Your passwords does not match");
	            pass1.focus();
	            return false;
	            }
	            if((document.reg.gender[0].checked==false) && (document.reg.gender[1].checked==false)) 
	 	            {
	 	            window.alert("Please select Gender");
	 	            return false;
	 	            }
	            if(dob.value==""){
	            window.alert("Enter your date of birth");
	            dob.focus();
	            return false;
	            }
	            if((document.reg.role.selectedIndex=="") || (document.reg.role.selectedIndex==null)){
	     			alert("Please select your Category");
	     			return false;
	     			}
	            if (email.value == ""){
				window.alert("Please enter a valid e-mail address.");
	 			email.focus();
	 			return false;
	 			}
	 			if (email.value.indexOf("@", 0) < 0){
				window.alert("Please enter a valid e-mail address.");
	 			email.focus();
	 			return false;
	 			}
	 			if (email.value.indexOf(".", 0) < 0){
	 			window.alert("Please enter a valid e-mail address.");
	 			email.focus();
	 			return false;
	 			}
				if(mob==""){
	 			window.alert("please Enter the Contact Number");
	 			mob.focus();
	 			return false;
	 			}
	 			if(mob.value.length != 10){
	            window.alert("Enter 10-digit mobile no");
	            mob.value="";
	            mob.focus();
	 			return false;
	 			}
	 			alert("Successfully Registered");
		return true;		
	}
	function isempty(){
		if ((document.reg.cid.value=="")||
				(document.reg.fn.value=="")||
		(document.reg.ln.value=="")||
		(document.reg.un.value=="")||
		(document.reg.pass1.value=="")||
		(document.reg.pass2.value=="")||
		(document.reg.gender.value=="")||
		(document.reg.dob.value=="")||
		(document.reg.roletype.value=="")||
		(document.reg.rmail.value=="")||
		(document.reg.rmobile.value=="")){
		alert ("You must fill in all of the required fields!");
		return false;
		}
		 else
		 return true;
		}
</script>
<script type="text/javascript">
var showdata;
function check(value){ 
if (value.length==0)
  {
   return;
  }
xmlHttp=GetXmlHttpObject();
var url="checkavail.jsp";
url=url+"?un="+value;
xmlHttp.onreadystatechange=stateChanged;
xmlHttp.open("GET",url,true);
xmlHttp.send(null);
}
function stateChanged(){ 
if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){ 
    showdata = xmlHttp.responseText; 
    document.getElementById("myp").innerHTML= showdata;
    
    } 
}
function GetXmlHttpObject(){
var xmlHttp=null;
try{
  xmlHttp=new XMLHttpRequest();
 }
catch (e) {
 try {
  xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
  }
 catch (e){
  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
 }
return xmlHttp;
}
</script>
<script>
$(function() {
    $( "#dob1" ).datepicker();
});
</script>
</head>
<body>
<form name="reg" id="rform" method="post" action="regdb.jsp" onsubmit="return validate()" >
<div id="reg2">
<p><b><font face="Helvetica Neue" color="#4F4464" size="5"><center>Registration</center></font></b><br>
<hr style="color: #4F4464; background: #4F4464; width: 100%;" noshade>
<table height="100" class="default1">
<tr class="default">
<td><font color="#000000">Customer ID</font></td>
<td id="text"><input type="text" class="rounded" name="cid" size="20" value="<%= request.getParameter("name")%>"/></td>
<tr><td></td><td></td></tr>
</tr>
<tr class="default">
<td><font color="#000000">First Name</font></td>
<td id="text"><input type="text" class="rounded" name="fn" size="20" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Last Name</font></td>
<td id="text"><input type="text" class="rounded" name="ln" size="20" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">User Name</font></td>
<td id="text"><input type="text" class="rounded" name="un" size="20" onchange="check(this.value);"/></td><td id="myp"></td>
</tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Password</font></td>
<td id="text"><input type="password" class="rounded" name="pass1" size="20" maxlength="15" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Confirm Password</font></td>
<td id="text"><input type="password" class="rounded" name="pass2" size="20" maxlength="15" /></td>
</tr>
<tr><td></td><td></td></tr>
<tr class="default">
<tr><td><label>Gender</label></td>
<td><label>Male</label><input type="radio" name="gender" id="male" value="M" />
<label>Female</label><input type="radio" name="gender" id="female" value="F" /></td></tr>
<tr><td></td><td></td></tr>
<tr class="default">
<tr><td><label for="dob1">DOB</label></td>
<td><input type="date" id="dob1" name="dob" class="rounded" placeholder="YYYY-MM-DD" size="20" /></td></tr>
<tr><td></td><td></td></tr>
<tr class="default">
<tr>
<td><font color="#000000">Category</font></td>
<td><select name="roletype" style="width: 155px" class="select1" id="role">
<option value="">select</option>
<option value="1">Customer</option>
<option value="2">Sales Rep</option>
<option value="3">Admin/WIP</option>
</select></td></tr>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">E-Mail</font></td>
<td><input type="text" class="rounded" name="rmail" /></td>
<tr><td></td><td></td></tr>
<tr class="default">
<td><font color="#000000">Mobile</font></td>
<td><input type="text" class="rounded" name="rmobile" onblur="isempty()"/></td></tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
</table>
<input type="image" class="image" src="images/CaribEx_RegisterButton.jpg" alt="Submit" width="116" height="46">
</div>
</form>
</body>
</html>