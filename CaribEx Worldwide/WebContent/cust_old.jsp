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
            var cid = document.cust.cid;
            var name = document.cust.n1;
            var comp = document.cust.ac;
            var add1 = document.cust.add1;
            var city = document.cust.city;
            var state = document.cust.state;
            var zip = document.cust.zip;
            var country = document.cust.country;
            var ph = document.cust.ph;
            var fax = document.cust.fax;
            var ein = document.cust.ein;
            var addr1 = document.cust.addr1;
            var city1 = document.cust.city1;
            var state1 = document.cust.state1;
            var zip1 = document.cust.zip1;
            var country1 = document.cust.country1;   
            var fn = document.cust.fn;
            var ln = document.cust.ln;
            var phc = document.cust.phc;
            var faxc = document.cust.faxc;
            var email =document.cust.email;
            var fn1 = document.cust.fn1;
            var ln1 = document.cust.ln1;
            var ap1 = document.cust.ap1;
            var ap2 = document.cust.ap2;
            var apmail =document.cust.apmail;	
            if((cid.value==null)||(cid.value=="")){
                window.alert("Please Enter your Customer ID!");
                cid.focus();
                return false;
                }
            if((name.value==null)||(name.value=="")){
            window.alert("Please Enter your Name!");
            name.focus();
            return false;
            }
            if((comp.value==null) || (comp.value==""))
            {
            window.alert("Please enter Company Name");
            comp.focus();
            return false;
            }
            if((document.cust.r1[0].checked==false) && (document.cust.r1[1].checked==false)) 
	            {
	            window.alert("Please select an option");
	            return false;
	            }
            if ((document.getElementById('r1').checked)
            		   && (document.getElementById('wcan3').value == '')) { alert('Please enter WCA code'); return false; }
            if((add1.value==null) || (add1.value==""))
	            {
	            window.alert("Please enter your Address");
	            add1.focus();
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
            if((zip.value==null) || (zip.value==""))
	            {
	            window.alert("Please enter your Postal Code");
	            zip.focus();
	            return false;
	            }
            if((country.selectedIndex==null) || (country.value==""))
	            {
	            window.alert("Please select your Country");
	            country.focus();
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
     	 			if((ein.value==null) || (ein.value==""))
     	            {
     	            window.alert("Please enter EIN #");
     	            ein.focus();
     	            return false;
     	            }
     	 			if((addr1.value==null) || (addr1.value==""))
     	            {
     	            window.alert("Please enter your Billing address");
     	            addr1.focus();
     	            return false;
     	            }
     	 			
     	 			if((city1.value==null) || (city1.value==""))
     	            {
     	            window.alert("Please enter your City");
     	            city1.focus();
     	            return false;
     	            }
     	 			
     	 			if((state1.value==null) || (state1.value==""))
     	            {
     	            window.alert("Please enter your State");
     	            state1.focus();
     	            return false;
     	            }
     	 			
     	 			if((zip1.value==null) || (zip1.value==""))
     	            {
     	            window.alert("Please enter your Postal Code");
     	            zip1.focus();
     	            return false;
     	            }
     	 			
     	 			if((country1.selectedIndex==null) || (country1.value==""))
     	            {
     	            window.alert("Please select your Country");
     	            country1.focus();
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
     	 	          if(phc==""){
     	  	 			window.alert("please Enter the Contact Number");
     	  	 			phc.focus();
     	  	 			return false;
     	  	 			}
     	  	 			if(phc.value.length != 10){
     	  	            window.alert("Enter 10-digit mobile no");
     	  	            phc.value="";
     	  	            phc.focus();
     	  	 			return false;
     	  	 			}
     	  			if(faxc==""){
     	  	 			window.alert("please Enter the Contact Number");
     	  	 			faxc.focus();
     	  	 			return false;
     	  	 			}
     	  	 			if(faxc.value.length != 10){
     	  	            window.alert("Enter 10-digit mobile no");
     	  	            faxc.value="";
     	  	            faxc.focus();
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
 			 if((fn1.value==null) || (fn1.value=="")){
                 window.alert("Please Enter your first name");
                 fn1.focus();
                 return false;
                 }
                 if((ln1.value==null) || (ln1.value=="")){
                 window.alert("Please Enter your last name");
                 ln1.focus();
                 return false;
                 }
                 if(ap1==""){
  	 	 			window.alert("please Enter the Contact Number");
  	 	 			ap1.focus();
  	 	 			return false;
  	 	 			}
  	 	 			if(ap1.value.length != 10){
  	 	            window.alert("Enter 10-digit mobile no");
  	 	            ap1.value="";
  	 	            ap1.focus();
  	 	 			return false;
  	 	 			}
  	 			if(ap2==""){
  	 	 			window.alert("please Enter the Contact Number");
  	 	 			ap2.focus();
  	 	 			return false;
  	 	 			}
  	 	 			if(ap2.value.length != 10){
  	 	            window.alert("Enter 10-digit mobile no");
  	 	            ap2.value="";
  	 	            ap2.focus();
  	 	 			return false;
  	 	 			}
 			if (apmail.value == ""){
 				window.alert("Please enter a valid e-mail address.");
 	 			apmail.focus();
 	 			return false;
 	 			}
 	 			if (apmail.value.indexOf("@", 0) < 0){
 				window.alert("Please enter a valid e-mail address.");
 	 			apmail.focus();
 	 			return false;
 	 			}
 	 			if (apmail.value.indexOf(".", 0) < 0){
 	 			window.alert("Please enter a valid e-mail address.");
 	 			apmail.focus();
 	 			return false;
 	 			}		
    		alert("Customer Information successfully saved");
            return true;
          }
function isempty(){
if ((document.cust.cid.value=="")||
		(document.cust.n1.value=="")||
(document.cust.ac.value=="")||
(document.cust.add1.value=="")||
	(document.cust.city.value=="")||
	(document.cust.state.value=="")||
	(document.cust.zip.value=="")||
	(document.cust.country.value=="")||
	(document.cust.ph.value=="")||
	(document.cust.fax.value=="")||
	(document.cust.ein.value=="")||
	(document.cust.addr1.value=="")||
	(document.cust.city1.value=="")||
	(document.cust.state1.value=="")||
	(document.cust.zip1.value=="")||
	(document.cust.country1.value=="")||
	(document.cust.fn.value=="")||
	(document.cust.ln.value=="")||
	(document.cust.phc.value=="")||
	(document.cust.faxc.value=="")||
	(document.cust.email.value=="")||
	(document.cust.fn1.value=="")||
	(document.cust.ln1.value=="")||
	(document.cust.ap1.value=="")||
	(document.cust.ap2.value==""))
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
function PreFill() {
	    cust.addr1.value = cust.add1.value;
	    cust.addr2.value = cust.add2.value;
	    cust.c2.value = cust.c1.value;
	    cust.st2.value = cust.st1.value;
	    cust.pc2.value = cust.pc1.value;
	    cust.country1.value = cust.country.value;
	}
function CallPrint(){ 
	var printContent = document.getElementById("rcorners1"); 
	var Print = window.open('','','width=800,height=2200,top=5,left=5,scrollbars=yes,titlebar=yes,resizable=1,status=0,toolbar=0'); 
	Print.document.write(printContent.innerHTML); 
	} 
</script>
<script type="text/javascript">

  var today = new Date();
  var expiry = new Date(today.getTime() + 30 * 24 * 3600 * 1000); // plus 30 days

  function setCookie(name, value)
  {
    document.cookie=name + "=" + escape(value) + "; path=/; expires=" + expiry.toGMTString();
  }
</script>
<script type="text/javascript">

  function storeValues(cust)  
  {
    setCookie("cid", cust.cid.value);
    return true;
  }

</script>
<script type="text/javascript">

  if(field1 = getCookie("cid")) document.cust.cid.value = field1;

</script>
<script type="text/javascript">

  var expired = new Date(today.getTime() - 24 * 3600 * 1000); // less 24 hours

  function deleteCookie(name)
  {
    document.cookie=name + "=null; path=/; expires=" + expired.toGMTString();
  }

</script>
<script type="text/javascript">

  function clearCookies()
  {
    deleteCookie("cid");
    alert('Your cookies have been deleted!');
  }

  function printStateMenu(cnty){
	  var stateSelect = '';
	  if (cnty == '506'){
		  stateSelect = '<select name="state" id="st1" disabled="false"><option value="1">Alabama</option><option value="2">Alaska</option><option value="3">Arizona</option><option value="4">Arkansas</option><option value="5">California</option><option value="6">Colorado</option><option value="7">Connecticut</option><option value="8">Delaware</option><option value="9">District of Columbia</option><option value="10">Florida</option><option value="11">Georgia</option><option value="12">Hawaii</option><option value="13">Idaho</option><option value="14">Illinois</option><option value="15">Indiana</option><option value="16">Iowa</option><option value="17">Kansas</option><option value="18">Kentucky</option><option value="19">Louisiana</option><option value="20">Maine</option><option value="21">Maryland</option><option value="22">Massachusetts</option><option value="23">Michigan</option><option value="24">Minnesota</option><option value="25">Mississippi</option><option value="26">Missouri</option><option value="27">Montana</option><option value="28">Nebraska</option><option value="29">Nevada</option><option value="30">New Hampshire</option><option value="31">New Jersey</option><option value="32">New Mexico</option><option value="33">New York</option><option value="34">North Carolina</option><option value="35">North Dakota</option><option value="36">Ohio</option><option value="37">Oklahoma</option><option value="38">Oregon</option><option value="39">Pennsylvania</option><option value="40">Rhode Island</option><option value="41">South Carolina</option><option value="42">South Dakota</option><option value="43">Tennessee</option><option value="44">Texas</option><option value="45">Utah</option><option value="46">Vermont</option><option value="47">Virginia</option><option value="48">Washington</option><option value="49">West Virginia</option><option value="50">Wisconsin</option><option value="51">Wyoming</option></select>';
	  }
	  else if(cnty == '500'){
		  stateSelect = '<select name="state" id="st1"><option value="1">Azua</option><option value="2">Baoruco</option><option value="3">Barahona</option><option value="4">Dajabón</option><option value="5">Distrito Nacional</option><option value="6">Duarte</option><option value="7">El Seibo</option><option value="8">Elías Piña</option><option value="9">Espaillat</option><option value="10">Hato Mayor</option><option value="11">Hermanas Mirabal</option><option value="12">Independencia</option><option value="13">La Altagracia</option><option value="14">La Romana</option><option value="15">La Vega</option><option value="16">María Trinidad Sánchez</option><option value="17">Monseñor Nouel</option><option value="18">Monte Cristi</option><option value="19">Monte Plata</option><option value="20">Pedernales</option><option value="21">Peravia</option><option value="22">Puerto Plata</option><option value="23">Samaná</option><option value="24">San Cristóbal</option><option value="16">San José de Ocoa</option><option value="16">San Juan</option><option value="13">San Pedro de Macorís</option><option value="14">Sánchez Ramírez</option><option value="15">Santiago</option><option value="16">Santiago Rodríguez</option><option value="15">Santo Domingo</option><option value="16">Valverde</option></select>';
	  }
	  else if (cnty == '501'){
		  stateSelect = '<select name="state" id="st1"><option value="1">Baja Verapaz</option><option value="2">Chimaltenango</option><option value="3">Chiquimula</option><option value="4">El Progreso</option><option value="5">Escuintla</option><option value="6">Guatemala</option><option value="7">El Seibo</option><option value="8">Elías Piña</option><option value="9">Espaillat</option><option value="10">Hato Mayor</option><option value="11">Hermanas Mirabal</option><option value="12">Independencia</option><option value="13">La Altagracia</option><option value="14">La Romana</option><option value="15">La Vega</option><option value="16">María Trinidad Sánchez</option><option value="13">Monseñor Nouel</option><option value="14">Monte Cristi</option><option value="15">Monte Plata</option><option value="16">Pedernales</option><option value="16">Peravia</option><option value="13">Puerto Plata</option><option value="14">Samaná</option><option value="15">San Cristóbal</option><option value="16">San José de Ocoa</option><option value="16">San Juan</option><option value="13">San Pedro de Macorís</option><option value="14">Sánchez Ramírez</option><option value="15">Santiago</option><option value="16">Santiago Rodríguez</option><option value="15">Santo Domingo</option><option value="16">Valverde</option></select>' ;
	  }
	  else if (cnty == '502'){
		  stateSelect = '<select name="state" id="st1"><option value="1">La Union</option><option value="2">San Miguel</option><option value="3">La Libertad</option><option value="4">Santa Ana</option><option value="5">Usulutan</option><option value="6">Ahuachapan</option><option value="7">Chalatenango</option><option value="8">Sonsonate</option><option value="9">Morazan</option><option value="10">La Paz</option><option value="11">San Salvador</option><option value="12">Cuscatlan</option><option value="13">Cabanas</option><option value="14">San Vicente</option><option value="15">Other</option></select>' ;
	  }
	  else {
			stateSelect = '<select name="state" id="st1" disabled><option value="Other">Select State</option></select>';
		}
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
<div class="text1">You are logged in as <%= status %>
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
<form action="custchk.jsp" name="cust" id="cust" method="post" onsubmit="return validate()">
<div id="rcorners1">
<br>
<table>
<tr><label id="tab">Basic Company Information</label></tr>
<br>
<tr><hr style="color: #000000; background: #000000; width: 90%;" ></tr>
<tr><td><label id="tab">Customer ID</label></td></tr>
<tr><td><input type="text" name="cid" id="cid" class="rounded2" /></td></tr>
<tr><td><label id="tab">Name</label></td></tr>
<tr><td><input type="text" name="n1" id="n1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Affiliated Company</label></td></tr>
<tr><td><input type="text" name="ac" id="n2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Is the Company a WCA Member?</label></td></tr>
<tr><td><label class="tt">Yes</label><input type="radio" name="r1" id="r1" value="Y" />
<label>No</label><input type="radio" name="r1" id="r2" value="N" /></td></tr>
<tr><td><label id="tab">WCA Code</label></td></tr>
<tr><td><input type="text" name="wcacode" id="wcan3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address (Line 1)</label></td></tr>
<tr><td><input type="text" name="add1" id="ad1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address (Line 2)</label></td></tr>
<tr><td><input type="text" name="add2" id="ad2" class="rounded2" /></td></tr>
<tr><td><label id="tab">City</label></td></tr>
<tr><td><input type="text" name="city" id="c1" class="rounded2" /></td></tr>
<tr><td><label id="tab">State</label></td></tr>
<tr><td><select name="state"  id="st1" disabled="disabled">
<option value="Other">Select State</option></select></td></tr>
<tr><td><label id="tab">ZIP/Postal Code</label></td></tr>
<tr><td><input type="text" name="zip" id="pc1" class="rounded2" onkeyup="PreFill()"/></td></tr>
<tr><td><label id="tab">Country</label></td></tr>
<tr><td><select name="country" id="cnty" onchange="printStateMenu(this.value)">
<option value="1">Select</option>
	<option value="500">Dominican Republic</option>
	<option value="501">El Salvador</option>
	<option value="502">Guatemala</option>
	<option value="503">Honduras</option>
	<option value="504">Nicaragua</option>
	<option value="505">Puerto Ricio</option>
	<option value="506">USA</option>
</select></td></tr>
<tr><td><label id="tab">Phone Number</label></td></tr>
<tr><td><input type="text" name="ph" id="num1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax Number</label></td></tr>
<tr><td><input type="text" name="fax" id="num2" class="rounded2" /></td></tr>
<tr><td><label id="tab">EIN #</label></td></tr>
<tr><td><input type="text" name="ein" id="num3" class="rounded2" /></td></tr>
<tr><td><label id="tab">Website</label></td></tr>
<tr><td><input type="text" name="web" id="wb" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
<tr><td id="tab">Bill To Address</td></tr>
</table>
<table>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">Address (Line 1)</label></td></tr>
<tr><td><input type="text" name="addr1" id="addr1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Address (Line 2)</label></td></tr>
<tr><td><input type="text" name="addr2" id="addr2" class="rounded2" /></td></tr>
<tr><td><label id="tab">City</label></td></tr>
<tr><td><input type="text" name="city1" id="c2" class="rounded2" /></td></tr>
<tr><td><label id="tab">State</label></td></tr>
<tr><td><input type="text" name="state1" id="st2" class="rounded2" /></td></tr>
<tr><td><label id="tab">ZIP/Postal Code</label></td></tr>
<tr><td><input type="text" name="zip1" id="pc2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Country</label></td></tr>
<tr><td><select name="country1" id="cnty2">
<option value="1">Select</option>
	<option value="01">Dominican Republic</option>
	<option value="248">El Salvador</option>
	<option value="8">Guatemala</option>
	<option value="12">Honduras</option>
	<option value="16">Nicaragua</option>
	<option value="20">Puerto Ricio</option>
	<option value="24">USA</option>
</select></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Contact Information</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">First Name</label></td></tr>
<tr><td><input type="text" name="fn" id="fn" class="rounded2" /></td></tr>
<tr><td><label id="tab">Last Name</label></td></tr>
<tr><td><input type="text" name="ln" id="ln" class="rounded2" /></td></tr>
<tr><td><label id="tab">Title</label></td></tr>
<tr><td><select name="title" id="title">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select>
<tr><td><label id="tab">Phone Number</label></td></tr>
<tr><td><input type="text" name="phc" id="phc1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax Number</label></td></tr>
<tr><td><input type="text" name="faxc" id="faxc" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td></tr>
<tr><td><input type="text" name="email" id="mail" class="rounded2" /></td></tr>
<tr><td><br></td></tr>
</table>
<table>
<tr><label id="tab">Accounts Payable Contact Information</label></tr>
<tr><hr style="color: #000000; background: #000000; width: 90%;"></tr>
<tr><td><br></td></tr>
<tr><td><label id="tab">First Name</label></td></tr>
<tr><td><input type="text" name="fn1" id="fn1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Last Name</label></td></tr>
<tr><td><input type="text" name="ln1" id="ln1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Title</label></td></tr>
<tr><td><select name="title1" id="title1">
<option value="Mr">Mr.</option>
<option value="Mrs">Mrs.</option>
<option value="Dr">Dr.</option>
<option value="Ms">Ms.</option>
</select>
<tr><td><label id="tab">Phone Number</label></td></tr>
<tr><td><input type="text" name="ap1" id="ap1" class="rounded2" /></td></tr>
<tr><td><label id="tab">Fax Number</label></td></tr>
<tr><td><input type="text" name="ap2" id="ap2" class="rounded2" /></td></tr>
<tr><td><label id="tab">Email Address</label></td></tr>
<tr><td><input type="text" name="apmail" id="apmail" class="rounded2" onfocus="isempty()" /></td></tr>
<tr><td><br></td></tr>
<tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td><input type="image" id="custdata" name="custdata" src="images/CaribEx_Next_Purple.jpg" alt="Submit" onclick="enableTab('cdata')"></td></tr>
</table>
</div>
</form>
</body>
</html>