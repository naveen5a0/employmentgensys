<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.util.ArrayList" %>
	<%@ page import="pack1.cnt.BGCAdmin;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>BGC Admin</title>
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
					<p>status '1' indicates accepted</p>
					<p>status '0' indicates pending</p>
									</div>
			
<%BGCAdmin cd=new BGCAdmin();
ArrayList<BGCAdmin> arl=new ArrayList<BGCAdmin>();
arl=null;
arl=(ArrayList)request.getAttribute("abc");
%>
								 <table border=1 id="results">
	
		<tr>
	<td>ADMIN ID</td><td>STATUS</td><td>TIME</td><td>EMP ID</td>	
		</tr>
	
	<%
if(arl!=null)
{
	for(int i=0;i<arl.size();i++)
	{
	cd=(BGCAdmin)arl.get(i);
%>
	<tr>
	<td><%=cd.getAdminid() %></<td><td><%=cd.getStatus() %></<td><td><%=cd.getChangetim() %></td><td><%=cd.getEmpid()%></td>
		
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