<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
	<%@ page import="pack1.cnt.Candi" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Update Candidate</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script>
//function for validating radio buttons in the form
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
<!-- checking for sessions -->
<%@ include file="protected.jsp" %>
<!-- /checking for sessions -->

<!-- header -->
<%@ include file="header.jsp" %>
			<!-- /header -->
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Update Candidate</h2>
				</div>
			
				<table border="0" align="left"><tr><td>
<form method="post" action="updatecandidate2.jsp" onSubmit="return validate();">
<input type="hidden" name="req" value="updatecandidate2"/>

<%Candi cd=new Candi();
ArrayList<Candi> arl=new ArrayList<Candi>();
arl=null;
arl=(ArrayList)request.getAttribute("abc");
%>
<center>
<table border=1 width=500><tr><td>CANDIDATE</td><td>CURRENTSTATUS</td><td>SELECT</td></tr>
<%
if(arl!=null)
{
	
	for(int i=0;i<arl.size();i++)
	{
	cd=(Candi)arl.get(i);
%>

<h3><tr><td><input type="hidden" name="name" value="<%=cd.name%>"><%=cd.name%> </td><td><%=cd.status %></td><td><input type="radio" id="abc" name="abc" value="<%=cd.name %>@<%=cd.status %>"> </td></tr><%}}%></table></h2>
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