<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
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
  
  <script type="text/javascript">
  function checkform()
  {
      var f = document.forms["credit"].elements;
      var cansubmit = true;

      for (var i = 0; i < f.length; i++) {
          if (f[i].value.length == 0) cansubmit = false;
      }

      if (cansubmit) {
          document.getElementById('creditdata').disabled = false;
      }
  }
  </script>
  <script type="text/javascript">
function checkEmail() {
            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(cust.email.value)){
            return true;
            }
            return false; 
          }
            function validate(){         
            var cmpname = document.creditForm.cn1;
            var cadd1 = document.creditForm.apd1; 
            var city = document.creditForm.cty; 
            var state = document.creditForm.stat;
            var zipp = document.creditForm.zipp;
            var tph = document.creditForm.tph;
            var fax = document.creditForm.fx;
            var tob = document.creditForm.bus;
            var nob = document.creditForm.nbs;
            var ne = document.creditForm.ne;
            var fed = document.creditForm.fedno;
            var statinc = document.creditForm.stnc;
            var year = document.creditForm.yre; 
            var cas = document.creditForm.cas;
            var cr = document.creditForm.crd; 
            var badd = document.creditForm.billad;
            var ac = document.creditForm.act1;
            var ph = document.creditForm.aip1;
            var fax1 = document.creditForm.aif1;
            var aimail = document.creditForm.aimail; 
            var bname = document.creditForm.bank1;
            var bkadd = document.creditForm.badd;
            var bcity = document.creditForm.bcty;
            var bstat = document.creditForm.bstat;
            var bzip = document.creditForm.bzip;
            var ao = document.creditForm.aof;
            var tele = document.creditForm.btel;  
            var name = document.creditForm.nof;
            var sign = document.creditForm.sign;  
            var date = document.creditForm.date; 
            var bustyp = document.creditForm.buss; 
            if((cmpname.value==null)||(cmpname.value=="")){
            window.alert("Please Enter your Company Name!");
            cmpname.focus();
            return false;
            }
            if((cadd1.value==null) || (cadd1.value==""))
            {
            window.alert("Please enter your Address");
            cadd1.focus();
            return false;
            }
            if((city.value==null) || (city.value==""))
            {
            window.alert("Please enter your City");
            city.focus();
            return false;
            }
            if((state.value==null) || (state.value==""))
	            {
	            window.alert("Please enter your State");
	            state.focus();
	            return false;
	            }
            if((zipp.value==null) || (zipp.value==""))
	            {
	            window.alert("Please enter your Postal Code");
	            zipp.focus();
	            return false;
	            }
            if(tph==""){
 	 			window.alert("please Enter the Contact Number");
 	 			tph.focus();
 	 			return false;
 	 			}
 	 			if(tph.value.length != 10){
 	            window.alert("Enter 10-digit mobile no");
 	            tph.value="";
 	            tph.focus();
 	 			return false;
 	 			}
            if(fax==""){
 	 			window.alert("please Enter the Contact Number");
 	 			fax.focus();
 	 			return false;
 	 			}
 	 			if(fax.value.length != 10){
 	            window.alert("Enter 10-digit mobile no");
 	            fax.value="";
 	            fax.focus();
 	 			return false;
 	 			}
 	 			if((document.creditForm.bus[0].checked==false) && (document.creditForm.bus[1].checked==false) && (document.creditForm.bus[2].checked==false)&&
 	 			(document.creditForm.bus[3].checked==false))
 	            {
 	            window.alert("Please select your Type of Business");
 	            return false;
 	            }
 	 			if((nob.value==null) || (nob.value==""))
 	            {
 	            window.alert("Please provide your Nature of Business");
 	            nob.focus();
 	            return false;
 	            }
 	 			if((ne.value==null) || (ne.value==""))
 	            {
 	            window.alert("Please provide Number of Employees");
 	            ne.focus();
 	            return false;
 	            }
 	 			if((fed.value==null) || (fed.value==""))
 	            {
 	            window.alert("Please enter your Fed. No.");
 	            fed.focus();
 	            return false;
 	            }
 	 			if((statinc.value==null) || (statinc.value==""))
 	            {
 	            window.alert("Please enter State Inc.");
 	            statinc.focus();
 	            return false;
 	            }
 	 			if((year.value==null) || (year.value==""))
 	            {
 	            window.alert("Please enter Year");
 	            year.focus();
 	            return false;
 	            }
 	 			if((cas.value==null) || (cas.value==""))
 	            {
 	            window.alert("Please enter your Company Annual Sales");
 	            cas.focus();
 	            return false;
 	            }
 	 			if((cr.value==null) || (cr.value==""))
 	            {
 	            window.alert("Please enter the Credit Requested");
 	            cr.focus();
 	            return false;
 	            }
 	 			if((badd.value==null) || (badd.value==""))
 	            {
 	            window.alert("Please enter your Billing Address");
 	            badd.focus();
 	            return false;
 	            }
 	 			if((ac.value==null) || (ac.value==""))
 	            {
 	            window.alert("Please enter your Accounting Contact");
 	            ac.focus();
 	            return false;
 	            }
                if(ph==""){
     			window.alert("please Enter the Contact Number");
     			ph.focus();
     			return false;
     			}
     			if(ph.value.length != 10){
                window.alert("Enter 10-digit mobile no");
                ph.value="";
                ph.focus();
     			return false;
     			}
     			if(fax1==""){
 	  	 			window.alert("please Enter the Contact Number");
 	  	 			fax1.focus();
 	  	 			return false;
 	  	 			}
 	  	 			if(fax1.value.length != 10){
 	  	            window.alert("Enter 10-digit mobile no");
 	  	            fax1.value="";
 	  	            fax1.focus();
 	  	 			return false;
 	  	 			}     	 			
     	 			if (aimail.value == ""){
     	 				window.alert("Please enter a valid e-mail address.");
     	 	 			aimail.focus();
     	 	 			return false;
     	 	 			}
     	 	 			if (aimail.value.indexOf("@", 0) < 0){
     	 				window.alert("Please enter a valid e-mail address.");
     	 	 			aimail.focus();
     	 	 			return false;
     	 	 			}
     	 	 			if (aimail.value.indexOf(".", 0) < 0){
     	 	 			window.alert("Please enter a valid e-mail address.");
     	 	 			aimail.focus();
     	 	 			return false;
     	 	 			}
     	 	 		 if((bname.value==null) || (bname.value=="")){
     	                 window.alert("Please Enter Bank Name");
     	                 bname.focus();
     	                 return false;
     	                 }
     	 	 		if((bkadd.value==null) || (bkadd.value=="")){
    	                 window.alert("Please Enter Bank Address");
    	                 bkadd.focus();
    	                 return false;
    	                 }
     	 			if((bcity.value==null) || (bcity.value==""))
     	            {
     	            window.alert("Please enter Bank City");
     	            bcity.focus();
     	            return false;
     	            }     	 			
     	 			if((bstat.value==null) || (bstat.value==""))
     	            {
     	            window.alert("Please enter Bank State");
     	            bstat.focus();
     	            return false;
     	            }  	 			
     	 			if((bzip.value==null) || (bzip.value==""))
     	            {
     	            window.alert("Please enter Bank Postal Code");
     	            bzip.focus();
     	            return false;
     	            }
     	 			if((ao.value==null) || (ao.value==""))
     	            {
     	            window.alert("Please enter your Account Officer");
     	            ao.focus();
     	            return false;
     	            }
     	 	          if(tele==""){
     	  	 			window.alert("please Enter Bank Contact Number");
     	  	 			tele.focus();
     	  	 			return false;
     	  	 			}
     	  	 			if(tele.value.length != 10){
     	  	            window.alert("Enter 10-digit mobile no");
     	  	            tele.value="";
     	  	            tele.focus();
     	  	 			return false;
     	  	 			}  	
     	  	 		if((document.creditForm.abus[0].checked==false) && (document.creditForm.abus[1].checked==false)) 
     	  	 	            {
     	  	 	            window.alert("Please select your Type of Account");
     	  	 	            return false;
     	  	 	            }
                 if((name.value==null) || (name.value=="")){
                 window.alert("Please Enter the Name of Officer");
                 name.focus();
                 return false;
                 }
                 if((sign.value==null) || (sign.value=="")){
                     window.alert("Please upload your Signature");
                     sign.focus();
                     return false;
                     }
                 if((date.value==null) || (date.value=="")){
                     window.alert("Please select your Date");
                     date.focus();
                     return false;
                     }
                 if((document.creditForm.buss[0].checked==false) && (document.creditForm.buss[1].checked==false)) 
	 	            {
	 	            window.alert("Please select your Type of Business");
	 	            return false;
	 	            }
    		alert("Credit Information successfully saved");
            return true;
          }
function isempty(){
if ((document.creditForm.cn1.value=="")||
		(document.creditForm.apd1.value=="")||
		(document.creditForm.cty.value=="")||
		(document.creditForm.stat.value=="")||
		(document.creditForm.zipp.value=="")||
		(document.creditForm.tph.value=="")||
		(document.creditForm.fx.value=="")||
		(document.creditForm.bus.value=="")||
		(document.creditForm.nbs.value=="")||
		(document.creditForm.ne.value=="")||
		(document.creditForm.fedno.value=="")||
		(document.creditForm.stnc.value=="")||
		(document.creditForm.yre.value=="")||
		(document.creditForm.cas.value=="")||
		(document.creditForm.crd.value=="")||
		(document.creditForm.billad.value=="")||
		(document.creditForm.act1.value=="")||
		(document.creditForm.aip1.value=="")||
		(document.creditForm.aif1.value=="")||
		(document.creditForm.aimail.value=="")||
		(document.creditForm.bank1.value=="")||
		(document.creditForm.badd.value=="")||
		(document.creditForm.bcty.value=="")||
		(document.creditForm.bstat.value=="")||
		(document.creditForm.bzip.value=="")||
		(document.creditForm.aof.value=="")||
		(document.creditForm.btel.value=="")||
		(document.creditForm.abus.value=="")||
		(document.creditForm.nof.value=="")||
		(document.creditForm.sign.value=="")||
		(document.creditForm.date.value=="")||
	(document.creditForm.buss.value==""))
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
    document.getElementById("creditdata").src = "images/CaribEx_Next_Green.jpg";
    ChangeImage();
}
function reset(){
	document.getElementById("creditForm").reset();
}
function ChangeImage() {
    document.getElementById("cdata").src = "images/CaribEx_CreditInfo_Green.jpg";
}
function CallPrint(){ 
	var printContent = document.getElementById("rcorners4"); 
	var Print = window.open('','','width=800,height=2200,top=5,left=5,scrollbars=yes,titlebar=yes,resizable=1,status=0,toolbar=0'); 
	Print.document.write(printContent.innerHTML); 
	} 
</script>

<script type= "text/javascript" src = "countries3.js"></script>
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
<form action="creditchk.jsp" name="creditForm" id="creditForm" method="post" onsubmit="return validate()">
<div id="rcorners4">
<br>
<table>
<tr><label id="tab">Applicant</label></tr>
<br>
<tr><hr style="color: #000000; background: #000000; width: 90%;" ></tr>
<tr><td><label id="tab">Company Name</label></td>
<td><input type="text" name="cn1" id="cn1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address (Line 1)</label></td>
<td><input type="text" name="apd1" id="apd1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address (Line 2)</label></td>
<td><input type="text" name="apd2" id="apd2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty" onChange="print_state('ste1',this.selectedIndex);" ></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="stat"  id="ste1"></select></td></tr>
<script language="javascript">print_country("cnty");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="cty" id="cty1" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP/Postal Code</label></td>
<td><input type="text" name="zipp" id="zpc1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="tph" id="tel1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="fx" id="fx1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Company Website</label></td>
<td><input type="text" name="cweb" id="cwb1" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td id="tab">Company Information</td></tr>
</table>
<table>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Type of Business:</label></td>
<td><label class="tt">Corporation</label><input type="radio" name="bus" id="cor1" value="1" />
<label>Partnership</label><input type="radio" name="bus" id="prt1" value="2" />
<label>Proprietorship</label><input type="radio" name="bus" id="prpt1" value="3" />
<label>Other</label><input type="radio" name="bus" id="otr1" value="4" /></td></tr>
<tr><td><label id="tab">Nature of Business</label></td>
<td><input type="text" name="nbs" id="nbs" class="rounded2" /></td></tr>
<tr><td><label id="tab">Number of Employees</label></td>
<td><input type="text" name="ne" id="ne1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fed. ID#</label></td>
<td><input type="text" name="fedno" id="fed1" class="rounded2" /></td></tr>
<tr><td><label id="tab">State Inc.</label></td>
<td><input type="text" name="stnc" id="stnc1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Year Established</label></td>
<td><input type="text" name="yre" id="yre" class="rounded2" /></td></tr>
<tr><td><label id="tab">Company Annual Sales</label></td>
<td><input type="text" name="cas" id="cas1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Credit Requested</label></td>
<td><input type="text" name="crd" id="crd1" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Corporate Offices/Owner</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name 1</label></td>
<td><input type="text" name="name1" id="name1" class="rounded2" /></td>
<td><label id="tab" class="tt">Title 1</label></td>
<td><select name="title1" id="title1">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><label id="tab">Name 2</label></td>
<td><input type="text" name="name2" id="name2" class="rounded2" /></td>
<td><label id="tab" class="tt">Title 2</label></td>
<td><select name="title2" id="title2">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><label id="tab">Name 3</label></td>
<td><input type="text" name="name3" id="name3" class="rounded2" /></td>
<td><label id="tab" class="tt">Title 3</label></td>
<td><select name="title3" id="title3">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><label id="tab">Name 4</label></td>
<td><input type="text" name="name4" id="name4" class="rounded2" /></td>
<td><label id="tab" class="tt">Title 4</label></td>
<td><select name="title4" id="title4">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Accounting Information</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Billing Address</label></td>
<td><textarea rows="4" cols="40" name="billad"></textarea></td></tr>
<tr><td><label id="tab">Accounting Contact</label></td>
<td><input type="text" name="act1" id="act1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Phone</label></td>
<td><input type="text" name="aip1" id="aip1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="aif1" id="aif1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td>
<td><input type="text" name="aimail" id="aimail" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Bank Reference</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Bank Name</label></td>
<td><input type="text" name="bank1" id="bank1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address</label></td>
<td><textarea rows="4" cols="40" name="badd"></textarea></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty1" onChange="print_state('bstat',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="bstat"  id="bstat"></select></td></tr>
<script language="javascript">print_country("cnty1");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="bcty" id="bcty" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP</label></td>
<td><input type="text" name="bzip" id="bzip" class="rounded2" /></td></tr>
<tr><td><label id="tab">Account Officer</label></td>
<td><input type="text" name="aof" id="aof" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="btel" id="btel" class="rounded2" /></td></tr>
<tr><td><label id="tab">Type of Account:</label></td>
<td><label class="tt">Checking/Savings - Acct. #</label><input type="radio" name="abus" id="cor1" value="1" />
<label>Loan - Acct. #</label><input type="radio" name="abus" id="prt1" value="2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Transportation Credit References 1</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td>
<td><input type="text" name="tcr1" id="tcr1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Contact</label></td>
<td><input type="text" name="tcrc1" id="tcrc1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address</label></td>
<td><textarea rows="4" cols="40" name="tcrd"></textarea></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty2" onChange="print_state('tcrstat',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="tcrstat"  id="tcrstat"></select></td></tr>
<script language="javascript">print_country("cnty2");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="tcrcty" id="tcrcty" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP</label></td>
<td><input type="text" name="trzip" id="trzip" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="trtel" id="trtel" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="trfx" id="trfx" class="rounded2" /></td></tr>
<tr><td><label id="tab">Account #</label></td>
<td><input type="text" name="trac" id="trac" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td>
<td><input type="text" name="trmail" id="trmail" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Transportation Credit References 2</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td>
<td><input type="text" name="tcr2" id="tcr2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Contact</label></td>
<td><input type="text" name="tcrc2" id="tcrc2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address</label></td>
<td><textarea rows="4" cols="40" name="tcrd2"></textarea></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty3" onChange="print_state('tcrstat2',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="tcrstat2"  id="tcrstat2"></select></td></tr>
<script language="javascript">print_country("cnty3");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="tcrcty2" id="tcrcty2" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP</label></td>
<td><input type="text" name="trzip2" id="trzip2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="trtel2" id="trtel2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="trfx2" id="trfx2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Account #</label></td>
<td><input type="text" name="trac2" id="trac2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td>
<td><input type="text" name="trmail2" id="trmail2" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Transportation Credit References 3</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td>
<td><input type="text" name="tcr3" id="tcr3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Contact</label></td>
<td><input type="text" name="tcrc3" id="tcrc3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address</label></td>
<td><textarea rows="4" cols="40" name="tcrd3"></textarea></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty4" onChange="print_state('tcrstat3',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="tcrstat3"  id="tcrstat3"></select></td></tr>
<script language="javascript">print_country("cnty4");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="tcrcty3" id="tcrcty3" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP</label></td>
<td><input type="text" name="trzip3" id="trzip3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="trtel3" id="trtel3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="trfx3" id="trfx3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Account #</label></td>
<td><input type="text" name="trac3" id="trac3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td>
<td><input type="text" name="trmail3" id="trmail3" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Transportation Credit References 4</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td>
<td><input type="text" name="tcr4" id="tcr4" class="rounded2" /></td></tr>
<tr><td><label id="tab">Contact</label></td>
<td><input type="text" name="tcrc4" id="tcrc4" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address</label></td>
<td><textarea rows="4" cols="40" name="tcrd4"></textarea></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty5" onChange="print_state('tcrstat4',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="tcrstat4"  id="tcrstat4"></select></td></tr>
<script language="javascript">print_country("cnty5");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="tcrcty4" id="tcrcty4" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP</label></td>
<td><input type="text" name="trzip4" id="trzip4" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="trtel4" id="trtel4" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="trfx4" id="trfx4" class="rounded2" /></td></tr>
<tr><td><label id="tab">Account #</label></td>
<td><input type="text" name="trac4" id="trac4" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td>
<td><input type="text" name="trmail4" id="trmail4" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Transportation Credit References 5</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td>
<td><input type="text" name="tcr5" id="tcr5" class="rounded2" /></td></tr>
<tr><td><label id="tab">Contact</label></td>
<td><input type="text" name="tcrc5" id="tcrc5" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address</label></td>
<td><textarea rows="4" cols="40" name="tcrd5"></textarea></td></tr>
<tr><td><label id="tab">Country</label></td>
<td><select name="country" id="cnty6" onChange="print_state('tcrstat5',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td>
<td><select name="tcrstat5"  id="tcrstat5"></select></td></tr>
<script language="javascript">print_country("cnty6");</script>
<tr><td><label id="tab">City</label></td>
<td><input type="text" name="tcrcty5" id="tcrcty5" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP</label></td>
<td><input type="text" name="trzip5" id="trzip5" class="rounded2" /></td></tr>
<tr><td><label id="tab">Telephone</label></td>
<td><input type="text" name="trtel5" id="trtel5" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax</label></td>
<td><input type="text" name="trfx5" id="trfx5" class="rounded2" /></td></tr>
<tr><td><label id="tab">Account #</label></td>
<td><input type="text" name="trac5" id="trac5" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td>
<td><input type="text" name="trmail5" id="trmail5" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Credit Agreement</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><tab><label><font face="Helvetica Neue" size="3"><b>Terminology -</b> As used herein, Customer and Account Holder are the same entity.
<br><br>
<b>Account Billing - </b>CaribEx Worldwide will, upon confirmation and/or approval of credit, establish a credit account for Customer that may be refused or terminated 
if business status or acceptable credit status either cannot be confirmed or should substantially change.  Once an account is established, the Account Holder is responsible 
for all charges to the account and bears the risk of all use of the Account by its employees or its agents acting as Shipper. Account Holder may give instructions to CaribEx 
Worldwide be bill a third party; however, regardless of any instructions to bill another party, the Customer/Account Holder shall remain liable for all charges and fees 
relating to any Shipment being transported under the Account in the event the party so designated by Account Holder as the party to be billed should default on payment or 
dispute or renege on any or all charges or fees. <br><br>
<b>Adjustments/Refunds - </b>Request for invoice adjustments or refunds must state the reason you believe an adjustment or refund is warranted. A partial payment against an invoice 
or balance is not considered a request for invoice adjustment. <br><br>
<b>Credit Terms - </b>Payment is due within 15 days of invoice date <u>unless specifically authorized in writing by CaribEx Worldwide.</u> Failure to maintain a current payment 
status of the account may result in the account being placed on a "cash only" status.  Further, if the account is not in good credit standing, has defaulted in bringing past 
due payments to a current status or has ignored repeated demands for payment arrangements are made.  In such cases, CaribEx Worldwide is absolved from any liability resulting 
from such stoppages.  Credit privileges many not be restored until all due balances and all costs, fees and expenses incurred by CaribEx Worldwide in collecting or attempting 
to collect such balances have been paid in full.  CaribEx Worldwide will be entitled to interest in the amount of 1.5 percent per month (1.8 percent per year), or the maximum 
amount permitted by law on all overdue amounts.  If collection should result in legal actions, such actions will be taken within the jurisdiction of North Calorina law. <br><br>
<b>Payment of Charges - </b>All sums due CaribEx Worldwide are payable on demand by invoice and within the terms stated, payment shall be made without reduction or deferment 
on account of any claim, counter claim or set-off.  When goods  are accepted from Customer or dealt with upon Customer's instructions to collect freight charges, duties, fees 
or other expenses from the Consignee or any other party including any agent, the Account Holder shall remain responsible for any of said charges not paid immediately when due 
by such Consignee, agent or other party designated by Customer.  Nothing in this credit agreement shall limit the right of CaribEx Worldwide to require prepayment or guarantee 
of charges at time of shipment or prior to delivery. <br><br>
Customer warrants that it has provided true and accurate information to CaribEx Worldwide in its credit application and authorizes verification of that information as well as 
the investigation of any other sources of credit information pertaining to Customer's credit status.  Customer further warrants that he/she has read the terms and conditions 
of this credit agreement and agrees to be bound by its terms.  Customer shall have only a duly authorized officer sign this agreement.<br><br>
On behalf of the Customer/Account Holder:</font>
</label></tr>
<tr><td><label id="tab">Name of Officer</label>
<input type="text" name="nof" id="nof" class="rounded2" />
<label id="tab">Signature</label>
<input type="file" name="sign" id="sign1" class="file" accept="image/x-png, image/gif, image/jpeg"/></td></tr>
<tr><td><label id="tab">Title</label>
<select id="tab1" name="catitle" id="catitle">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select>
<label for="dt1" id="tab1">Date</label>
<input type="date" name="date" id="dt1" class="rounded3" placeholder="YYYY-MM-DD"/></td></tr>
<tr><td><label id="tab">Business Type:</label>
<label class="tt">Corporation</label><input type="radio" name="buss" id="cor2" value="1" onfocus="isempty()"/>
<label>Partnership</label><input type="radio" name="buss" id="prt2" value="2" onfocus="isempty()"/>
<label>Proprietorship</label><input type="radio" name="buss" id="prpt2" value="3" onfocus="isempty()"/>
<label>Other</label><input type="radio" name="buss" id="otr2" value="4" onfocus="isempty()"/></td></tr>
<tr><td><br></td></tr>
<tr><td><a href="Customer.jsp" class="tt1"><img src="images/CaribEx_Previous_Green.jpg" /></a>
<input type="image" id="creditdata" name="creditdata" src="images/CaribEx_Next_Purple.jpg" alt="Submit"></td></tr>
</table>
</div>
</form>
</body>
</html>