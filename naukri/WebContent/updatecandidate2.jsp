<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
	<%@ page import="pack1.cnt.Candi" %>
	<%@ page import="pack1.cnt.Data;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Update Candidate</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script>
//function for disabling back button
function noBack() { window.history.forward(); } 
</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!-- checking for session -->
<%@ include file="protected.jsp" %>


<!-- header -->
<%@ include file="header.jsp" %>
<!-- /header -->			
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Update Candidate</h2>
				</div>
			
				<table border="0"  align="left"><tr><td>
<%
String delimit="@";
String s1=request.getParameter("abc");
String[] temp;
temp=s1.split(delimit);
Data dt=new Data();
dt.name=temp[0];
dt.status=temp[1];
request.setAttribute("data",dt);
%>
<form method="post" action="Control">
<input type="hidden" name="req" value="updatecandidate4"/>
<input type="hidden" name="name" value="<%=temp[0] %>"/>

<center>
<table border=1 width=500><tr><td>CANDIDATE</td><td>STATUS</td></tr>
<tr><td><%=temp[0]%></td><td><%=temp[1]%></td></tr></table>
<h3>select the new status to be updated</h3>
<select name="status">
<option value="pending">pending</option>
<option value="approve">approve</option>
<option value="rejected">rejected</option>
</select>
<input type="submit" value="update"></input>
</form>
</td></tr></table>
			</div>
			<!-- /main -->
			
			
		
		<!-- footer -->	
		<%@ include file="footer.jsp" %>
		<!-- footer -->
</body>
</html>