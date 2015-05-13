<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        var f = document.forms["misForm"].elements;
        var cansubmit = true;

        for (var i = 0; i < f.length; i++) {
            if (f[i].value.length == 0) cansubmit = false;
        }

        if (cansubmit) {
            document.getElementById('misdata').disabled = false;
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
            var name1 = document.subForm.nan1;
            var name2 = document.subForm.nnp1;
            var sig1 = document.subForm.sgn;
            var date1 = document.subForm.nadat;
            if((name1.value==null)||(name1.value=="")){
            window.alert("Please Enter your Name!");
            name1.focus();
            return false;
            }
            if((name2.value==null) || (name2.value==""))
            {
            window.alert("Please enter Print Name");
            name2.focus();
            return false;
            }
            if((sig1.value==null) || (sig1.value==""))
            {
            window.alert("Please upload Signature");
            sig1.focus();
            return false;
            }
            if((date1.value==null) || (date1.value==""))
	            {
	            window.alert("Please select Date");
	            date1.focus();
	            return false;
	            }
    		alert("Customer Information successfully saved");
            return true;
          }
function isempty(){
if ((document.subForm.name1.value=="")||
(document.subForm.name2.value=="")||
(document.subForm.sig1.value=="")||
	(document.subForm.date1.value==""))
	{
alert ("You must fill in all of the required fields!");
return false;
}
 else{
	 return true;
 }
 myFunction();
}
function myFunction() {
    document.getElementById("misdata").src = "images/CaribEx_Next_Green.jpg";
}
function reset(){
	document.getElementById("subForm").reset();
}
$(function() {
    $( "#nadte1" ).datepicker();
});
function ChangeImage() {
    document.getElementById("sdata").src = "images/CaribEx_Miscellaneous_Green.jpg";
}
function CallPrint(){ 
	var printContent = document.getElementById("rcorners7"); 
	var Print = window.open('','','width=800,height=2200,top=5,left=5,scrollbars=yes,titlebar=yes,resizable=1,status=0,toolbar=0'); 
	Print.document.write(printContent.innerHTML); 
	} 
function submitForms(){
		document.getElementById('cust').submit();
	    document.getElementById('creditForm').submit();
	    document.getElementById('legalForm').submit();
	    document.getElementById('misForm').submit();
	}
function CallPrint(){ 
	var printContent = document.getElementById("rcorners1"); 
	var Print = window.open('Customer.jsp','','width=800,height=2200,top=5,left=5,scrollbars=yes,titlebar=yes,resizable=1,status=0,toolbar=0'); 
	Print.document.write(printContent.innerHTML); 
	}
</script>
</head>
<body onload="ChangeImage()">
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
<input type="search" class="rounded1" /><a href="#"><img src="images/search.jpg" class="search" /></a>
</div>
<div class="text2">
<a href="Customer.jsp"><img src="images/CaribEx_CustomerInfo_Green.jpg" class="img1" onclick="return isempty()"/></a>
<a href="Credit.jsp"><img id="cdata" src="images/CaribEx_CreditInfo_Green.jpg" class="img1" onclick="return isempty()"/></a>
<a href="legal.jsp"><img id="ldata" src="images/CaribEx_LegalInfo_Green.jpg" class="img1" onclick="return isempty()"/></a>
<a href="miscellaneous.jsp"><img src="images/CaribEx_Miscellaneous_Green.jpg" class="img1" onclick="return isempty()"/></a>
<a href="submit.jsp"><img src="images/CaribEx_ConfirmSubmit_Green.jpg" class="img1" onclick="return isempty()"/></a></div>
</div>
<div class="stuck">
<a href="#"><img src="images/CaribEx_Save.jpg" /></a>
<input type="image" id="mis1data" name="mis1data" src="images/CaribEx_Clear.jpg" alt="Reset" onclick="reset()">
<input type="image" id="legldata" name="legldata" src="images/CaribEx_Print.jpg" onclick="CallPrint()">
<a href="#"><img src="images/CaribEx_Exit.jpg" /></a>
</div>
<div id="rcorners3">
<br>
<label>&nbsp;&nbsp;Hints!</label>
<hr width="80%">
&nbsp;&nbsp;This is the &nbsp;&nbsp;help and &nbsp;&nbsp;hints section &nbsp;&nbsp;which will &nbsp;&nbsp;show some &nbsp;&nbsp;relevant and &nbsp;&nbsp;helpful &nbsp;&nbsp;information
</div>
<div class="stuck1">
<a href="#"><img src="images/CaribEx_Help.png" /></a>
</div>
<form action="submit.jsp" name="subForm" id="subForm" method="post" onsubmit="return validate()">
<div id="rcorners7">
<br>
<table>
<tr><label id="tab">Confirm & Submit</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label for="nadte1" id="tab">Date</label></td></tr>
<tr><td><input type="text" name="nadate" id="nadte1" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td><a href="#" class="tt2"><img src="images/CaribEx_View.jpg" /></a></td></tr>
</table>
<table>
<tr><td><br></td></tr>
<tr><td><label id="tab">I have reviewed the information entered and confirm that it is complete.</label></td></tr>
<tr><td><br></td></tr>
<tr><td><input id="tab" type="radio" name="agree" id="agree" value="I agree" checked="checked" />&nbsp;&nbsp;&nbsp;&nbsp;<label id="tab">I agree</label></td></tr>
<tr><td><br></td></tr>
<tr><td><input type="image" class="tt2" src="images/CaribEx_Submit.jpg" onclick="submitForms()" alt="submit"/></td></tr>
</table>
</div>
</form>
</body>
</html>