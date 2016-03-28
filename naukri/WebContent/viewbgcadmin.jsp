<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
	<%@ page import="pack1.cnt.BGC" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>BGC Schedule</title>
<link rel="stylesheet" type="text/css" href="external.css">
<link rel="stylesheet" type="text/css" href="mystyle2.css" /> 
<script src="Pager.js" type="text/javascript"></script>
<script>
//disabling back button
function noBack() { window.history.forward(); } 
</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!-- checking for sessions -->
<%@ include file="protected.jsp" %>


<!-- header -->
<%@ include file="header.jsp" %>
<!-- /header -->			


			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>View BGC Admin</h2>
									</div>
<form method="post" action="Control">
<input type="hidden" name="req" value="selectdate"/>
starting date<input type=text name="stdate"></input>
ending date<input type=text name="enddate"></input><br></br>	
<input type="submit" value="search"></input>
</form>
<%BGC bg=new BGC();
ArrayList<BGC> arl=new ArrayList<BGC>();
arl=null;
arl=(ArrayList)request.getAttribute("abc");
%>
								 <table border=1 id="results">
	
		<tr>
	<td>ADMIN</td><td>STARTING DATE</td><td>ENDING DATE</td>	
		</tr>
	
	<%
if(arl!=null)
{
	for(int i=0;i<arl.size();i++)
	{
	bg=(BGC)arl.get(i);
%>
	<tr>
	<td><%=bg.admin%> </td><td><%=bg.stdate %> </td><td><%=bg.enddate %> </td>
		
	</tr><%} }%>
	
</table><br></br>
<div id="pageNavPosition"></div>
 
<script type="text/javascript"> 
var pager = new Pager('results',5); 
pager.init(); 
pager.showPageNav('pager', 'pageNavPosition'); 
pager.showPage(1); 
</script> 
			</div>
			<!-- /main -->
			
			
		
			<!-- footer -->
		<%@ include file="footer.jsp" %>
		    <!-- /footer -->
</body>
</html>