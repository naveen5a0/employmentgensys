<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Home page</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script language="javascript">
//function for disabling right click 
function disableclick(e)
{
  if(event.button==2)
   {
     alert("Right click disabled");
     return false;    
   }
}
//function for disabling back button
function noBack() { window.history.forward(); } 
</script>

</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!-- checking for sessions -->
<%@ include file="protected.jsp" %>
<!-- /checking fro sessions -->

 <!-- header -->
<%@ include file="header.jsp" %>
			<!-- /header -->
			
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Welcome</h2>
					<p>E-Recruitment is a process of searching applicants to staff vacancies in any organization. To meet the demands of the expanding industry, Company ABC has been increasing the recruitment of new employees by almost 20% every six months</p>
				</div>
			
				welcome to your home page
			</div>
			<!-- /main -->
			
			
		
			<!-- footer -->
		<%@ include file="footer.jsp" %>
            <!-- /footer -->
</body>
</html>