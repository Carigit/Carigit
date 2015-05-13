<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caribex Worldwide</title>
<link href="stylesheet1.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
  <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
  <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
  <script>
$(function() {
    $( "#dt1" ).datepicker();
});
</script>
<!--  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <script>
     $(function() {
            $('a').click(function() {
                $('#rcorners1').load($(this).attr('href'));
                return false;
            });
        });
    </script> -->
    <script type="text/javascript" language="javascript">
    function checkform()
    {
        var f = document.forms["cust"].elements;
        var cansubmit = true;

        for (var i = 0; i < f.length; i++) {
            if (f[i].value.length == 0) cansubmit = false;
        }

        if (cansubmit) {
            document.getElementById('custdata').disabled = false;
        }
    }
    
    $(function(){
    	  $(".img-swap").live('click', function() {
    	    if ($(this).attr("class") == "img-swap") {
    	      this.src = this.src.replace("_Next_Purple","_Next_Green");
    	    } else {
    	      this.src = this.src.replace("_Next_Green","_Next_Purple");
    	    }
    	    $(this).toggleClass("on");
    	  });
    	});
</script> 
<script type="text/javascript">
function checkEmail() {
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(cust.email.value)){
            return true;
            }
            return false; 
          }
            function validate(){                                 
            var date = document.srep.sdat;
            var name = document.srep.scnam;
            var cid = document.srep.scid;
            var email = document.srep.seml;	
            if((date.value==null)||(date.value=="")){
                window.alert("Please Enter Date!");
                date.focus();
                return false;
                }
            if((name.value==null)||(name.value=="")){
            window.alert("Please Enter your Name!");
            name.focus();
            return false;
            }
            if((cid.value==null) || (cid.value==""))
            {
            window.alert("Please enter Customer ID");
            cid.focus();
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
    		alert("Email sent successfully");
            return true;
          }
function isempty(){
if ((document.srep.sdat.value=="")||
(document.srep.scnam.value=="")||
(document.srep.scid.value=="")||
	(document.srep.seml.value==""))
	{
alert ("You must fill in all of the required fields!");
return false;
}
 else{
	 myFunction();
	 return true;
 }
}
function myFunction() {
    document.getElementById("custdata").src = "images/CaribEx_Next_Green.jpg";
}
function reset(){
	document.getElementById("cust").reset();
}
function enableTab(id) {
    var tabContainer = dojo.widget.byId('cdata');
    tabContainer.enableTab(id);
    disableTab(id);
  }
function disableTab(id) {
    var tabContainer = dojo.widget.byId('ldata');
    tabContainer.disableTab(id);
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
	<% String status="Guest";
   try
   {
   if(!user.equals(null)) status=user;
   }catch(Exception e){}
   System.out.println("\n\n\n\n\n\n\n\n\n\n"+status);
   %>
<div class="text1">You are logged in as <a href="logout.jsp"><%= status %></a>
<input type="search" class="rounded1" /><a href="saleschk.jsp"><img src="images/search.jpg" class="search" /></a>
</div>
<div class="text2">
<a href="salesrep.jsp"><img src="images/Caribex_AddCustomersSA_Green.jpg" class="img1" /></a>
<a href="cp.jsp"><img id="cdata" src="images/Caribex_CPStatusSA_Purple.jpg" class="img1" /></a>
</div>
<div class="stuck">
</div>
<form action="saleschk.jsp" name="srep" id="srep" method="post" onsubmit="return validate()">
<div id="sales1">
<br>
<table>
<tr><label id="tab">New Customers</label></tr>
<br>
<tr><hr style="color: #000000; background: #000000; width: 90%;" ></tr>
<tr><td><br></td></tr>
<tr><td><label for="sdat" id="tab">Date</label></td></tr>
<tr><td><input type="text" name="sdat" id="sdat" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Customer Name</label></td></tr>
<tr><td><input type="text" name="scnam" id="scnam" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Customer ID</label></td></tr>
<tr><td><input type="text" name="scid" id="scid" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Customer E-Mail</label></td></tr>
<tr><td><input type="text" name="seml" id="seml" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td><br></td></tr>
<tr>
<td><input type="image" id="sadata" name="sadata" src="images/CaribEx_AddCustometButton.jpg" class="tt2" alt="Submit" onclick="enableTab('cdata')"></td></tr>
</table>
</div>
</form>
</body>
</html>