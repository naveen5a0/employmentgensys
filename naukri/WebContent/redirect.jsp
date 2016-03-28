<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Redirecting</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script type="text/javascript">
function redirectUser(){
  window.location = "home.jsp";
}
</script>
</head>

<body onload="setTimeout('redirectUser()', 2000)">
<%@ include file="header.jsp" %>
			
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Redirecting to homepage</h2>
					</div>
			
				<center>
<h2>action successfull</h2>
<h3>you will be redirected to home page in 2 seconds</h3>
			</div>
			<!-- /main -->
			
			
		
			
		<%@ include file="footer.jsp" %>
</body>
</html>