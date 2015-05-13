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
        var f = document.forms["legalForm"].elements;
        var cansubmit = true;

        for (var i = 0; i < f.length; i++) {
            if (f[i].value.length == 0) cansubmit = false;
        }

        if (cansubmit) {
            document.getElementById('legaldata').disabled = false;
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
            var irs = document.legalForm.irs1;
            var name = document.legalForm.nm2;
            var state = document.legalForm.ste1;
            var pob = document.legalForm.pob;
            var por = document.legalForm.por;
            var wname = document.legalForm.wn1;
            var sgn = document.legalForm.sig1;
            var capcty = document.legalForm.cap1;
            var dat1 = document.legalForm.dat;
            var witness = document.legalForm.witness;
            var seal = document.legalForm.seal1;
            var scn = document.legalForm.scn1;
            var sca = document.legalForm.sca1;
            var stn = document.legalForm.stn1;
            var don = document.legalForm.datt;
            var scname = document.legalForm.scn2;
            var scpname = document.legalForm.pns1;
            var scsgn = document.legalForm.sign1;
            var waname = document.legalForm.wan1;
            var wasgn = document.legalForm.wasig1;
            var pname = document.legalForm.pn1;
            var scdate = document.legalForm.da;
            var shno = document.legalForm.shp1;
            var shna = document.legalForm.shp2;
            var shad = document.legalForm.shpd1;
            var shph = document.legalForm.shpp1;
            var cusn = document.legalForm.csbn1;
            if((irs.value==null)||(irs.value=="")){
            window.alert("Please Enter IRS No");
            irs.focus();
            return false;
            }
            if((name.value==null) || (name.value==""))
            {
            window.alert("Please enter your Name");
            name.focus();
            return false;
            }
            if((state.value==null) || (state.value==""))
            {
            window.alert("Please enter your State");
            state.focus();
            return false;
            }
            if((pob.value==null) || (pob.value==""))
	            {
	            window.alert("Please enter your Place of Business");
	            pob.focus();
	            return false;
	            }
            if((por.value==null) || (por.value==""))
	            {
	            window.alert("Please enter your Place of Residence");
	            por.focus();
	            return false;
	            }
            if((wname.value==null) || (wname.value==""))
	            {
	            window.alert("Please enter Witness Name");
	            wname.focus();
	            return false;
	            }
            if((sgn.value==null) || (sgn.value==""))
	            {
	            window.alert("Please upload Witness Signature");
	            sgn.focus();
	            return false;
	            }
     	 			if((capcty.value==null) || (capcty.value==""))
     	            {
     	            window.alert("Please enter Capacity");
     	            capcty.focus();
     	            return false;
     	            }
     	 			if((dat1.value==null) || (dat1.value==""))
     	            {
     	            window.alert("Please select Date");
     	            dat1.focus();
     	            return false;
     	            }
     	 			
     	 			if((witness.value==null) || (witness.value==""))
     	            {
     	            window.alert("Please enter Witness");
     	            witness.focus();
     	            return false;
     	            }
     	 			
     	 			if((seal.value==null) || (seal.value==""))
     	            {
     	            window.alert("Please upload your Corporate Seal");
     	            seal.focus();
     	            return false;
     	            }
     	 			
     	 			if((scn.value==null) || (scn.value==""))
     	            {
     	            window.alert("Please enter your Shipper Company Name");
     	            scn.focus();
     	            return false;
     	            }
     	 			 if((sca.value==null) || (sca.value=="")){
     	 	            window.alert("Please Enter your Shipper Company Address");
     	 	            sca.focus();
     	 	            return false;
     	 	            }
     	 	          if(stn==""){
     	  	 			window.alert("please Enter Shipper Telephone No.");
     	  	 			stn.focus();
     	  	 			return false;
     	  	 			}
     	  	 			if(stn.value.length != 10){
     	  	            window.alert("Enter 10-digit mobile no");
     	  	            stn.value="";
     	  	            stn.focus();
     	  	 			return false;
     	  	 			}
 			 if((don.value==null) || (don.value=="")){
                 window.alert("Please select Date");
                 don.focus();
                 return false;
                 }
                 if((scname.value==null) || (scname.value=="")){
                 window.alert("Please Enter Name");
                 scname.focus();
                 return false;
                 }
                 if((scpname.value==null) || (scpname.value=="")){
                     window.alert("Please Enter Print Name of Shipper Representative");
                     scpname.focus();
                     return false;
                     }
                 if((scsgn.value==null) || (scsgn.value=="")){
                     window.alert("Please upload Signature of Shipper Representative");
                     scsgn.focus();
                     return false;
                     }
                 if((waname.value==null) || (waname.value=="")){
                     window.alert("Please Enter Name");
                     waname.focus();
                     return false;
                     }
                 if((wasgn.value==null) || (wasgn.value=="")){
                     window.alert("Please upload Signature");
                     wasgn.focus();
                     return false;
                     }
                 if((pname.value==null) || (pname.value=="")){
                     window.alert("Please Enter Print Name");
                     pname.focus();
                     return false;
                     }
                 if((scdate.value==null) || (scdate.value=="")){
                     window.alert("Please select Date");
                     scdate.focus();
                     return false;
                     }
                 if((shno.value==null) || (shno.value=="")){
                     window.alert("Please Enter Shipper's No.");
                     shno.focus();
                     return false;
                     }
                 
                 if((shna.value==null) || (shna.value=="")){
                     window.alert("Please Enter Shipper Name");
                     shna.focus();
                     return false;
                     }
                 if((shad.value==null) || (shad.value=="")){
                     window.alert("Please Enter Shipper Address");
                     shad.focus();
                     return false;
                     }
                 if(shph==""){
  	  	 			window.alert("please Enter Shipper Phone No.");
  	  	 			shph.focus();
  	  	 			return false;
  	  	 			}
  	  	 			if(shph.value.length != 10){
  	  	            window.alert("Enter 10-digit mobile no");
  	  	            shph.value="";
  	  	            shph.focus();
  	  	 			return false;
  	  	 			}
                 if((cusn.value==null) || (cusn.value=="")){
                     window.alert("Please Enter Commonly used Scheduled B Number");
                     cusn.focus();
                     return false;
                     }
    		alert("Legal Information successfully saved");
            return true;
          }
function isempty(){
if ((document.legalForm.irs1.value=="")||
	(document.legalForm.nm2.value=="")||
	(document.legalForm.ste1.value=="")||
	(document.legalForm.pob.value=="")||
	(document.legalForm.por.value=="")||
	(document.legalForm.wn1.value=="")||
	(document.legalForm.sig1.value=="")||
	(document.legalForm.cap1.value=="")||
	(document.legalForm.dat.value=="")||
	(document.legalForm.witness.value=="")||
	(document.legalForm.seal1.value=="")||
	(document.legalForm.scn1.value=="")||
	(document.legalForm.sca1.value=="")||
	(document.legalForm.stn1.value=="")||
	(document.legalForm.datt.value=="")||
	(document.legalForm.scn2.value=="")||
	(document.legalForm.pns1.value=="")||
	(document.legalForm.sign1.value=="")||
	(document.legalForm.wan1.value=="")||
	(document.legalForm.wasig1.value=="")||
	(document.legalForm.pn1.value=="")||
	(document.legalForm.da.value=="")||
	(document.legalForm.shp1.value=="")||
	(document.legalForm.shp2.value=="")||
	(document.legalForm.shpd1.value=="")||
	(document.legalForm.shpp1.value==""))
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
    document.getElementById("legaldata").src = "images/CaribEx_Next_Green.jpg";
}
function reset(){
	document.getElementById("legalForm").reset();
}
function ChangeImage() {
    document.getElementById("ldata").src = "images/CaribEx_CreditInfo_Green.jpg";
}
function CallPrint(){ 
	var printContent = document.getElementById("rcorners6"); 
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
<form action="legalchk.jsp" name="legalForm" id="legalForm" method="post" onsubmit="return validate()">
<div id="rcorners6">
<br>
<table>
<tr><label id="tab">Forwarder's Power of Attorney</label></tr>
<br>
<tr><hr style="color: #000000; background: #000000; width: 90%;" ></tr>
<tr><td><label id="tab">IRS No.</label></td></tr>
<tr><td><input type="text" name="irs1" id="irs1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Name</label></td></tr>
<tr><td><input type="text" name="nm2" id="nm2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Country</label></td></tr>
<tr><td><select name="country" id="cnty" onChange="print_state('ste1',this.selectedIndex);"></select></td></tr>
<tr><td><label id="tab">State</label></td></tr>
<tr><td><select name="ste1"  id="ste1"></select></td></tr>
<script language="javascript">print_country("cnty");</script>
<tr><td><label id="tab">Place of Business</label></td></tr>
<tr><td><input type="text" name="pob" id="pob" class="rounded2" /></td></tr>
<tr><td><label id="tab">Place of Residence</label></td></tr>
<tr><td><input type="text" name="por" id="por" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td id="tab">Witness</td></tr>
</table>
<table>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td></tr>
<tr><td><input type="text" name="wn1" id="wn1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Signature</label></td></tr>
<tr><td><input type="file" name="sig1" id="sig1" class="file" /></td></tr>
<tr><td><label id="tab">Capacity</label></td></tr>
<tr><td><input type="text" name="cap1" id="cap1" class="rounded2" /></td></tr>
<tr><td><label for="dt2" id="tab">Date</label></td></tr>
<tr><td><input type="date" name="dat" id="dt2" class="rounded2" placeholder="YYYY-MM-DD"/></td></tr>
<tr><td><label id="tab">Witness</label></td></tr>
<tr><td><textarea rows="3" cols="50" name="witness"></textarea></td></tr>
<tr><td><label id="tab">Corporate Seal</label></td></tr>
<tr><td><input type="file" name="seal1" id="seal1" class="file" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Consent to Screen Cargo Notification</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Shipper Company Name</label></td></tr>
<tr><td><input type="text" name="scn1" id="scn1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Shipper Company Address</label></td></tr>
<tr><td><input type="text" name="sca1" id="sca1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Shipper Telephone No.</label></td></tr>
<tr><td><input type="text" name="stn1" id="stn1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Notification To</label></td></tr>
<tr><td><input type="image" id="tab" src="images/caribex_notification.jpg" name="logo"/></td></tr>
<tr><td><label for="dt3" id="tab">Date of Notification</label></td></tr>
<tr><td><input type="date" name="datt" id="dt3" class="rounded2" placeholder="YYYY-MM-DD"/></td></tr>
<tr><td><label id="tab">Name</label></td></tr>
<tr><td><input type="text" name="scn2" id="scn2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Print Name Shippers Representative</label></td></tr>
<tr><td><input type="text" name="pns1" id="pns1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Print Title of Shippers Representative</label></td></tr>
<tr><td><select name="printle" id="printle">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><label id="tab">Signature</label></td></tr>
<tr><td><input type="file" name="sign1" id="sign1" class="file" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Written Authorization to Prepare or Transmit Shipper's Export Information</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Name</label></td></tr>
<tr><td><input type="text" name="wan1" id="wan1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Signature</label></td></tr>
<tr><td><input type="file" name="wasig1" id="wasig1" class="file" /></td></tr>
<tr><td><label id="tab">Print Name</label></td></tr>
<tr><td><input type="text" name="pn1" id="pn1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Title</label></td></tr>
<tr><td><select name="ptitle1" id="ptitle1">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select></td></tr>
<tr><td><label for="dt4" id="tab">Date</label></td></tr>
<tr><td><input type="date" name="da" id="dt4" class="rounded2" placeholder="YYYY-MM-DD"/></td></tr>
<tr><td><label id="tab">Shipper's No.</label></td></tr>
<tr><td><input type="text" name="shp1" id="shp1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Shipper Name</label></td></tr>
<tr><td><input type="text" name="shp2" id="shp2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Shipper Address</label></td></tr>
<tr><td><input type="text" name="shpd1" id="shpd1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Shipper Phone</label></td></tr>
<tr><td><input type="text" name="shpp1" id="shpp1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Commonly used Scheduled B Number</label></td></tr>
<tr><td><input type="text" name="csbn1" id="csbn1" class="rounded2" onfocus="isempty()"/></td></tr>
<tr><td><br></td></tr>
<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td><a href="credit.jsp"><img src="images/CaribEx_Previous_Green.jpg" /></a></td>
<td><input type="image" id="legaldata" name="legaldata" src="images/CaribEx_Next_Purple.jpg" alt="Submit"></td></tr>
</table>
</div>
</form>
</body>
</html>