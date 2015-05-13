<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page	import="java.sql.*,java.util.*,java.io.*" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@page import="java.security.Security" %>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.PasswordAuthentication" %>
<%@page import="javax.mail.internet.InternetAddress" %>
<%@page import="javax.mail.Transport" %>
<%@page import="javax.mail.internet.MimeMessage" %>
<%@page import="com.sun.net.ssl.internal.ssl.*" %>
<html lang="en">
<head>
<title>Registration Successful</title>
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
<%
Connection Conn = null;
Connection Conn1, Conn2;
Conn1=null;
Conn2=null;
ResultSet rs=null;
Statement Stmt=null;
PreparedStatement Stmt1, Stmt2, Stmt3;
Stmt1=null;
Stmt2=null;
Stmt3=null;
try{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("driver loaded success");
Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
Conn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_caribex","root","caribex");
String cname=request.getParameter("cn1");
String cadd1=request.getParameter("apd1");
String cadd2=request.getParameter("apd2");
String ccty=request.getParameter("cty");
String cstat=request.getParameter("stat");
String czip=request.getParameter("zipp");
String ctph=request.getParameter("tph");
String cfx=request.getParameter("fx");
String cweb=request.getParameter("cweb");
String ccorp=request.getParameter("bus");
String cnob=request.getParameter("nbs");
String cnoe=request.getParameter("ne");
String cfdn=request.getParameter("fedno");
String cstnc=request.getParameter("stnc");
String cyre=request.getParameter("yre");
String ccas=request.getParameter("cas");
String ccrd=request.getParameter("crd");
String cnm1=request.getParameter("name1");
String ctl1=request.getParameter("title1");
String cnm2=request.getParameter("name2");
String ctl2=request.getParameter("title2");
String cnm3=request.getParameter("name3");
String ctl3=request.getParameter("title3");
String cnm4=request.getParameter("name4");
String ctl4=request.getParameter("title4"); 
String cbillad=request.getParameter("billad");
String cact1=request.getParameter("act1");
String caip1=request.getParameter("aip1");
String caif1=request.getParameter("aif1");
String caimail=request.getParameter("aimail");
String cbank1=request.getParameter("bank1");
String cbadd=request.getParameter("badd");
String cbcty=request.getParameter("bcty");
String cbstat=request.getParameter("bstat");
String cbzip=request.getParameter("bzip");
String caof=request.getParameter("aof");
String cbtel=request.getParameter("btel");
String cabus=request.getParameter("abus");
String ctcr1=request.getParameter("tcr1");
String ctcrc1=request.getParameter("tcrc1");
String ctcrd=request.getParameter("tcrd");
String ctcty=request.getParameter("tcty");
String ctcrstat=request.getParameter("tcrstat");
String ctrzip=request.getParameter("trzip");
String ctrtel=request.getParameter("trtel");
String ctrfx=request.getParameter("trfx");
String ctrac=request.getParameter("trac");
String ctrmail=request.getParameter("trmail");
String ctcr2=request.getParameter("tcr2");
String ctcrc2=request.getParameter("tcrc2");
String ctcrd2=request.getParameter("tcrd2");
String ctcty2=request.getParameter("tcty2");
String ctcrstat2=request.getParameter("tcrstat2");
String ctrzip2=request.getParameter("trzip2");
String ctrtel2=request.getParameter("trtel2");
String ctrfx2=request.getParameter("trfx2");
String ctrac2=request.getParameter("trac2");
String ctrmail2=request.getParameter("trmail2");
String ctcr3=request.getParameter("tcr3");
String ctcrc3=request.getParameter("tcrc3");
String ctcrd3=request.getParameter("tcrd3");
String ctcty3=request.getParameter("tcty3");
String ctcrstat3=request.getParameter("tcrstat3");
String ctrzip3=request.getParameter("trzip3");
String ctrtel3=request.getParameter("trtel3");
String ctrfx3=request.getParameter("trfx3");
String ctrac3=request.getParameter("trac3");
String ctrmail3=request.getParameter("trmail3");
String ctcr4=request.getParameter("tcr4");
String ctcrc4=request.getParameter("tcrc4");
String ctcrd4=request.getParameter("tcrd4");
String ctcty4=request.getParameter("tcty4");
String ctcrstat4=request.getParameter("tcrstat4");
String ctrzip4=request.getParameter("trzip4");
String ctrtel4=request.getParameter("trtel4");
String ctrfx4=request.getParameter("trfx4");
String ctrac4=request.getParameter("trac4");
String ctrmail4=request.getParameter("trmail4");
String ctcr5=request.getParameter("tcr5");
String ctcrc5=request.getParameter("tcrc5");
String ctcrd5=request.getParameter("tcrd5");
String ctcty5=request.getParameter("tcty5");
String ctcrstat5=request.getParameter("tcrstat5");
String ctrzip5=request.getParameter("trzip5");
String ctrtel5=request.getParameter("trtel5");
String ctrfx5=request.getParameter("trfx5");
String ctrac5=request.getParameter("trac5");
String ctrmail5=request.getParameter("trmail5");
String cnof=request.getParameter("nof");
String csign=request.getParameter("sign");
String catle=request.getParameter("catitle");
String cdate=request.getParameter("date");
StringTokenizer tokens=new StringTokenizer(cdate);
String day=tokens.nextToken("/");
String month=tokens.nextToken("/");
String year=tokens.nextToken();
String date=year+"/"+month+"/"+day;
String cbuss=request.getParameter("buss");
java.sql.Timestamp pcdate=new java.sql.Timestamp(new java.util.Date().getTime());
String pcwho=" ";
java.util.Date utilDate = new java.util.Date();
java.sql.Date pedate = new java.sql.Date(utilDate.getTime());
String pewho=" ";
System.out.println(user);
Stmt=Conn.createStatement();
rs=Stmt.executeQuery("Select Cust_ID from db_caribex.dt_customerinfo where Cust_Name='"+user+"'");
while(rs.next())
{
	String cid=rs.getString("Cust_ID");
	System.out.println(cid);
System.out.println("INSERT INTO db_caribex.dt_creditappl VALUES('"+cid+"','"+cname+"','"+cadd1+"','"+cadd2+"','"+ccty+"','"+cstat+"','"+czip+"','"+ctph+"','"+cfx+"','"+cweb+"','"+ccorp+"','"+cnob+"','"+cnoe+"','"+cfdn+"','"+cstnc+"','"+cyre+"','"+ccas+"','"+ccrd+"','"+cbillad+"','"+cact1+"','"+caip1+"','"+caif1+"','"+caimail+"','"+cbank1+"','"+cbadd+"','"+cbstat+"','"+cbzip+"','"+caof+"','"+cbtel+"','"+cabus+"','"+cnof+"','"+csign+"','"+catle+"','"+cdate+"','"+cbuss+"','now()','"+pcwho+"','curdate()','"+pewho+"')");
Stmt1=Conn.prepareStatement("INSERT INTO DB_CARIBEX.dt_creditappl(App_ID, App_CompanyName, App_Address1,App_Address2, App_City, App_State, App_ZipCode, App_PhoneNum, App_FaxNum, App_Website, Comp_BusinessType, Comp_BusinessNature, Comp_NumOfEmployees, Comp_FedID, Comp_StateInc, Comp_YearEstablished, Comp_AnnualSales, Comp_CreditRequest, Acct_BillingAddress, Acct_Contact, Acct_Phone, Acct_FaxNum, Acct_Email, Bank_Name, Bank_Address, Bank_City, Bank_State, Bank_ZipCode, Bank_AccountOffice, Bank_Telephone, CA_OfferName, CA_Signature, CA_Title, CA_Date, CA_BusinessType, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES('"+cid+"','"+cname+"','"+cadd1+"','"+cadd2+"','"+ccty+"','"+cstat+"','"+czip+"','"+ctph+"','"+cfx+"','"+cweb+"','"+ccorp+"','"+cnob+"','"+cnoe+"','"+cfdn+"','"+cstnc+"','"+cyre+"','"+ccas+"','"+ccrd+"','"+cbillad+"','"+cact1+"','"+caip1+"','"+caif1+"','"+caimail+"','"+cbank1+"','"+cbadd+"','"+cbcty+"','"+cbstat+"','"+cbzip+"','"+caof+"','"+cbtel+"','"+cnof+"','"+csign+"','"+catle+"','"+cdate+"','"+cbuss+"','"+pcdate+"','"+pcwho+"','"+pedate+"','"+pewho+"')");
Stmt1.executeUpdate(); 
Stmt2=Conn1.prepareStatement("INSERT INTO db_caribex.dt_corporate (App_ID, Corp_Name, Corp_Title, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES (?,?,?,?,?,?,?)");
String[] cnm = new String[] {""+cnm1+"",""+cnm2+"",""+cnm3+"",""+cnm4+""};
String[] ctl = new String[] {""+ctl1+"",""+ctl2+"",""+ctl3+"",""+ctl4+""};
for(int i=0; i<=3; i++){
	Stmt2.setString(1, cid);
	Stmt2.setString(2,cnm[i]);
	Stmt2.setString(3,ctl[i]);
	Stmt2.setTimestamp(4, pcdate);
	Stmt2.setString(5, "admin");
	Stmt2.setDate(6, pedate);
	Stmt2.setString(7, "admin");
	Stmt2.addBatch();
	}

Stmt2.executeBatch();

Stmt3=Conn1.prepareStatement("INSERT INTO db_caribex.dt_transcreditreferaddr(SI, Cust_ID, Ref_Name, Ref_Contact, Ref_Address, Ref_City, Ref_State, Ref_ZipCode, Ref_Telephone, Ref_FaxNum, Ref_AccountNum, Ref_EmailAddress, Created_Date, Created_Who, Edited_Date, Edited_Who) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

String[] tcr = new String[] {""+ctcr1+"",""+ctcr2+"",""+ctcr3+"",""+ctcr4+"",""+ctcr5+""};
String[] tcrc = new String[] {""+ctcrc1+"",""+ctcrc2+"",""+ctcrc3+"",""+ctcrc4+"",""+ctcrc5+""};
String[] tcrd = new String[] {""+ctcrd+"",""+ctcrd2+"",""+ctcrd3+"",""+ctcrd4+"",""+ctcrd5+""};
String[] tcty = new String[] {""+ctcty+"",""+ctcty2+"",""+ctcty3+"",""+ctcty4+"",""+ctcty5+""};
String[] tcrstat = new String[] {""+ctcrstat+"",""+ctcrstat2+"",""+ctcrstat3+"",""+ctcrstat4+"",""+ctcrstat5+""};
String[] trzip = new String[] {""+ctrzip+"",""+ctrzip2+"",""+ctrzip3+"",""+ctrzip4+"",""+ctrzip5+""};
String[] trtel = new String[] {""+ctrtel+"",""+ctrtel2+"",""+ctrtel3+"",""+ctrtel4+"",""+ctrtel5+""};
String[] trfx = new String[] {""+ctrfx+"",""+ctrfx2+"",""+ctrfx3+"",""+ctrfx4+"",""+ctrfx5+""};
String[] trac = new String[] {""+ctrac+"",""+ctrac2+"",""+ctrac3+"",""+ctrac4+"",""+ctrac5+""};
String[] trmail = new String[] {""+ctrmail+"",""+ctrmail2+"",""+ctrmail3+"",""+ctrmail4+"",""+ctrmail5+""};

for(int j=0; j<=3; j++){
	Stmt3.setInt(1, j);
	Stmt3.setString(2, cid);
	Stmt3.setString(3, tcr[j]);
	Stmt3.setString(4, tcrc[j]);
	Stmt3.setString(5, tcrd[j]);
	Stmt3.setString(6, tcty[j]);
	Stmt3.setString(7, tcrstat[j]);
	Stmt3.setString(8, trzip[j]);
	Stmt3.setString(9, trtel[j]);
	Stmt3.setString(10, trfx[j]);
	Stmt3.setString(11, trac[j]);
	Stmt3.setString(12, trmail[j]);
	Stmt3.setTimestamp(13, pcdate);
	Stmt3.setString(14, "admin");
	Stmt3.setDate(15, pedate);
	Stmt3.setString(16, "admin");
	Stmt3.addBatch();
	}
Stmt3.executeBatch();
}
Stmt.close();
}
catch(Exception e){
    e.printStackTrace();
}finally{
    try {
        Conn.close();
        Conn1.close();
        response.sendRedirect("legal.jsp");
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>
</body>
</html>