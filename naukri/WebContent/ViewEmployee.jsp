<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSetMetaData" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>View Employee</title>
<link rel="stylesheet" type="text/css" href="external.css">
<link rel="stylesheet" type="text/css" href="mystyle2.css" /> 
<script src="Pager.js" type="text/javascript"></script>
<script>
//disablin back button
function noBack() { window.history.forward(); } 
</script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!-- checking for sessions -->
<%@ include file="protected.jsp" %>


<!-- header -->
<%@ include file="header.jsp" %>
<!-- /header -->


	<%ResultSet rs=(ResultSet)request.getAttribute("data");
	ResultSetMetaData rsmd = (ResultSetMetaData)request.getAttribute("meta");
	%>		
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>View Employee</h2>
									</div>
			
								 <table border=1 id="results">
	
		<tr>
	<td><!--<h6>--><%=rsmd.getColumnName(1)%></td><td><!--<h6>--><%=rsmd.getColumnName(2)%></td><td><!--<h6>--><%=rsmd.getColumnName(11)%></td><td><!--<h6>--><%=rsmd.getColumnName(9)%></td><td><!--<h6>--><%=rsmd.getColumnName(5)%></td><td><!--<h6>--><%=rsmd.getColumnName(6)%></td><td><!--<h6>--><%=rsmd.getColumnName(7)%></td><td><!--<h6>--><%=rsmd.getColumnName(8)%></td><td><!--<h6>--><%=rsmd.getColumnName(10)%></td><td><!--<h6>--><%=rsmd.getColumnName(3)%></td><td><!--<h6>--><%=rsmd.getColumnName(4)%></td>
	
		</tr>
	
	<%while(rs.next()){ %>
	<tr>
	<td><!--<h6>--><%=rs.getInt(1)%></td><td><!--<h6>--><%=rs.getString(2)%></td><td><!--<h6>--><%=rs.getString(11)%></td><td><!--<h6>--><%=rs.getString(9)%></td><td><!--<h6>--><%=rs.getFloat(5)%></td><td><!--<h6>--><%=rs.getString(6)%></td><td><!--<h6>--><%=rs.getInt(7)%></td><td><!--<h6>--><%=rs.getInt(8)%></td><td><!--<h6>--><%=rs.getString(10)%></td><td><!--<h6>--><%=rs.getString(3)%></td><td><!--<h6>--><%=rs.getString(4)%></td>

		
	</tr><%} %>
	
</table>
<br></br>
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