<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
	<%@ page import="pack1.cnt.BGCAdmin;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Approve BGC Administrator</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script>
//function for validating radio buttons in the page
function validate() 
{
	var radios = document.getElementsByName('abc');

    for (var i = 0; i < radios.length; i++) 
	{
        if (radios[i].checked) {	        
        return true; // checked
    	}
    }   
alert("please select radio button");
return false;
}
//function for disabling back button
function noBack() { window.history.forward(); } 
</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!--checking for sessions -->
<%@ include file="protected.jsp" %>
<!--/checking for sessions-->
<!-- header -->
<%@ include file="header.jsp" %>
			<!--/header-->
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Approve BGC Admin</h2>
				</div>
			
				<table border="0" width=100% height=400><tr><td>
<form method="post" action="Control" onSubmit="return validate()">
<input type="hidden" name="req" value="approvebgcadmin2"/>
<!-- receiving list of bgc admin from controller -->
<%BGCAdmin cd=new BGCAdmin();
ArrayList<BGCAdmin> arl=new ArrayList<BGCAdmin>();
arl=null;
arl=(ArrayList)request.getAttribute("abc");
%>
<center>
<table border=1><tr><td>admin id</td><td>status</td><td>time</td><td>emp id</td><td>select</td></tr>
<%
if(arl!=null)
{
	for(int i=0;i<arl.size();i++)
	{
	cd=(BGCAdmin)arl.get(i);
%>

<h3><tr><td><%=cd.getAdminid() %></<td><td><%=cd.getStatus() %></<td><td><%=cd.getChangetim() %></td><td><%=cd.getEmpid()%></td><td><input type="radio" name="abc" value="<%=cd.getAdminid()%>"> </td></tr><%}}%></table></h2>
<input type="submit" value="update"></input>
</form>
</td></tr></table>
			</div>
			<!-- /main -->
			
			
		
	<!-- footer -->		
		<%@ include file="footer.jsp" %>
     <!-- /footer -->
</body>
</html>