<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Changing Default Credentials</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script>
//function for validating login default form
function validate()
{
	var newpassword = document.getElementsByName('newpassword');
	var confirm = document.getElementsByName('confirmpassword');
	if((newpassword[0].value)==(confirm[0].value))
    {
    	 
         return true;
    }
         else
         {
        	 alert("passwords doesnot match");
    	 return false;
         }
}
</script>
</head>

<body>
<%String s=request.getParameter("username"); %>
<!-- checking for sessions -->
<%@ include file="protected.jsp" %>
<!-- /checking for sessions -->

<!-- includes header file -->
<%@ include file="loginheader.jsp" %>
<!-- /includes header file -->
			
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Welcome</h2>
					<p>E-Recruitment is a process of searching applicants to staff vacancies in any organization. To meet the demands of the expanding industry, Company ABC has been increasing the recruitment of new employees by almost 20% every six months</p>
				</div>
			
				
<h2>hello <%=s%> please enter a new password</h2><br></br>
<table border="0">
<form method="post" action="Control" onSubmit="return validate();">
<tr><td>username</td><td><input type="text" name="username" value="<%=s %>" readonly="readonly"></input></input></td></tr>
<tr><td>new password</td><td><input type="password" name="newpassword"></input></td></tr>
<tr><td>confirm password</td><td><input type="password" name="confirmpassword"></input></td></tr>
<tr><td><br></br><input type="hidden" name="req" value="logindefault"></input>
</td><td><br></br><input type="submit" value="submit"></input>
<input type="reset" value="reset">
</form>
</td></tr></table>
			</div>
			<!-- /main -->
			
			
		
			<!-- includes footer -->
		<%@ include file="footer.jsp" %>
           <!-- /includes footer -->
</body>
</html>