<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<%@ page import="java.util.*,java.sql.*,java.io.*,java.io.IOException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Caribex Worldwide</title>
<link href="stylesheet1.css" rel="stylesheet" type="text/css" />
<link href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="table.js"></script>
<script type="text/javascript" src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
  <script>
$(function() {
    $( "#dt1" ).datepicker();
});
</script>

<script>
$(document).ready(function(){
    $('#myTable').DataTable();
});
</script>
    <script type="text/javascript" language="javascript">
    function checkform()
    {
        var f = document.forms["cp"].elements;
        var cansubmit = true;

        for (var i = 0; i < f.length; i++) {
            if (f[i].value.length == 0) cansubmit = false;
        }

        if (cansubmit) {
            document.getElementById('cpdata').disabled = false;
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

<style type="text/css">
	.TFtable{
		width:90%; 
		position: relative;
		left: 30px;
	}
	.TFtable td{ 
		padding:7px; 
	}
	/* provide some minimal visual accomodation for IE8 and below */
	.TFtable th{
		background: #8F74A8;
		font-weight: normal;
		font-face: Helvetica Neue;
	}
	.TFtable tr{
		background: #9665C0;
	}
	/*  Define the background color for all the ODD background rows  */
	.TFtable tr:nth-child(odd){ 
		background: #F1ECF5;
	}
	/*  Define the background color for all the EVEN background rows  */
	.TFtable tr:nth-child(even){
		background: #CAC6CE;
	}
</style>
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
<input type="search" class="rounded1" /><a href="#"><img src="images/search.jpg" class="search" /></a>
</div>
<div class="text2">
<a href="salesrep.jsp"><img src="images/Caribex_AddCustomersSA_Green.jpg" class="img1" /></a>
<a href="#"><img id="cdata" src="images/Caribex_CPStatusSA_Purple.jpg" class="img1" /></a>
</div>
<div class="stuck">
</div>
<form action="Credit.jsp" name="cp" id="cp" method="post" onsubmit="return validate()">
<div id="sales1">
<br>
<table id="myTable" class="TFtable" >
<tr><label id="tab">Customer Packet Status</label></tr>
<br>
<tr><hr style="color: #000000; background: #000000; width: 90%;" ></tr>
<thead>
<tr><th>Sales Rep ID<th>Sales Rep Name</th><th>Customer ID<th>Customer Name</th><th>WIP_Date</th><th>Customer_Status</th></tr></thead>
 <%
   Connection conn = null;
   Statement stmt = null;
  ResultSet rs = null;
  Connection conn1 = null;
  Statement stmt1 = null;
 ResultSet rs1=null;
 ResultSet rs2=null;
   String connURL = "jdbc:mysql://localhost:3306/db_caribex";
   Class.forName("com.mysql.jdbc.Driver");
   conn = DriverManager.getConnection(connURL, "root","caribex");
   String con = "jdbc:mysql://localhost:3306/db_caribex";
   Class.forName("com.mysql.jdbc.Driver");
   conn1 = DriverManager.getConnection(con, "root","caribex");
   String sql="SELECT count(*) as ID FROM db_caribex.dt_wip";
   stmt1 = conn1.createStatement();
   rs1 = stmt1.executeQuery(sql);
   rs1.next();
   int row=rs1.getInt("ID");
   System.out.println(row);
   String query="SELECT SalesRep_ID, SalesRep_Name, Customer_ID, Customer_Name, Wip_Date, Customer_Status FROM db_caribex.dt_wip";
stmt = conn.createStatement();
rs = stmt.executeQuery(query);
for (int i=0;i<row;i++){
	rs.next();  
%>
<tbody>
<tr><td><%=rs.getString("SalesRep_ID") %></td><td><%=rs.getString("SalesRep_Name") %></td><td><%=rs.getString("Customer_ID") %></td><td><%=rs.getString("Customer_Name") %></td><td><%=rs.getString("Wip_Date") %></td><td><%=rs.getString("Customer_Status") %></td></tr></tbody>
<%} %>
</table>
<br>
<a href="Customer.jsp" class="tt1"><img src="images/CaribEx_Previous_Green.jpg" /></a>
<input type="image" id="cpdata" name="cpdata" src="images/CaribEx_Next_Purple.jpg" alt="Submit">
</div>
</form>
</body>
</html>