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
    $( "#nadate" ).datepicker();
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
            var name = document.misForm.nan1;
            var pname = document.misForm.nan2;
            var sgn = document.misForm.nasgn1;
            var nadate = document.misForm.nadate;	
            if((name.value==null)||(name.value=="")){
            window.alert("Please Enter your Name!");
            name.focus();
            return false;
            }
            if((pname.value==null) || (pname.value==""))
            {
            window.alert("Please enter Print Name");
            pname.focus();
            return false;
            }
            if((sgn.value==null) || (sgn.value==""))
            {
            window.alert("Please upload your signature");
            sgn.focus();
            return false;
            }
            if((nadate.value==null) || (nadate.value==""))
	            {
	            window.alert("Please select Date");
	            nadate.focus();
	            return false;
	            }
    		alert("Miscellaneous Information successfully saved");
            return true;
          }
function isempty(){
if ((document.misForm.nan1.value=="")||
(document.misForm.nan2.value=="")||
(document.misForm.nasgn1.value==""))
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
    document.getElementById("misdata").src = "images/CaribEx_Next_Green.jpg";
}
function reset(){
	document.getElementById("misForm").reset();
}
function ChangeImage() {
    document.getElementById("mdata").src = "images/CaribEx_Miscellaneous_Green.jpg";
}
function CallPrint(){ 
	var printContent = document.getElementById("rcorners5"); 
	var Print = window.open('','','width=800,height=2200,top=5,left=5,scrollbars=yes,titlebar=yes,resizable=1,status=0,toolbar=0'); 
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
<a href="Credit.jsp"><img id="cdata" src="images/CaribEx_CreditInfo_Purple.jpg" class="img1" onclick="return isempty()"/></a>
<a href="legal.jsp"><img id="ldata" src="images/CaribEx_LegalInfo_Purple.jpg" class="img1" onclick="return isempty()"/></a>
<a href="miscellaneous.jsp"><img src="images/CaribEx_Miscellaneous_Purple.jpg" class="img1" onclick="return isempty()"/></a>
<a href="submit.jsp"><img src="images/CaribEx_ConfirmSubmit_Purple.jpg" class="img1" onclick="return isempty()"/></a></div>
</div>
<div class="stuck">
<a href="#"><img src="images/CaribEx_Save.jpg" /></a>
<input type="image" id="legldata" name="legldata" src="images/CaribEx_Clear.jpg" alt="Reset" onclick="reset()">
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
<form action="mischk.jsp" name="misForm" id="misForm" method="post" onsubmit="return validate()">
<div id="rcorners5">
<br>
<table>
<tr><label id="tab">Wiring Instructions</label></tr>
<br>
<tr><hr style="color: #000000; background: #000000; width: 90%;" ></tr>
<tr><td><label id="tab">Name of the Account</label></td></tr>
<tr><td><label id="tab">Excel Cargo Services, Inc. d/b/a Caribex Worldwide</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Physical Address</label></td></tr>
<tr><td><label id="tab">4248 Piedmont Parkway Greensboro, NC 27410</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Mailing Address</label></td></tr>
<tr><td><label id="tab">P.O. Box 35668, Greensboro, NC 27425-5668</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Bank</label></td></tr>
<tr><td><label id="tab">Wells Fargo</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Address</label></td></tr>
<tr><td><label id="tab">300 North Greene Street, Greensboro, NC 27401 Phone: (336) 378-4177</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Swift Code</label></td></tr>
<tr><td><label id="tab">WFBIUS6S</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">ABA No.</label></td></tr>
<tr><td><label id="tab">121000248</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">CHIPS</label></td></tr>
<tr><td><label id="tab">407</label></td></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Acct No.</label></td></tr>
<tr><td><label id="tab">2000027000269</label></td></tr>
<tr><td><br></td></tr>
<tr><td id="tab">Notice of Acceptance of Insurance Coverage</td></tr>
</table>
<table>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td></tr>
<tr><td><input type="text" name="nan1" id="nan1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Name (Printed)</label></td></tr>
<tr><td><input type="text" name="nan2" id="nan2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Signature</label></td></tr>
<tr><td><input type="file" name="nasgn1" id="nasgn1" class="file" /></td></tr>
<tr><td><label id="tab">Title</label></td></tr>
<tr><td><select name="natitle" id="natitle">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><label for="nadate" id="tab">Date</label></td></tr>
<tr><td><input type="text" name="nadate" id="nadate" class="rounded2" onfocus="isempty()"/></td></tr>
<tr><td><br></td></tr>
<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td><a href="legal.jsp"><img src="images/CaribEx_Previous_Green.jpg" /></a></td>
<td><input type="image" id="misdata" name="misdata" src="images/CaribEx_Next_Purple.jpg" alt="Submit"></td></tr>
</table>
</div>
</form>
</body>
</html>