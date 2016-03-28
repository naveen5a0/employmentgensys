<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<%@ include file="cs.jsp" %>
	<title>Login Page</title>
	<script>
	//function for validating login page
	function formValidation()
{
		var username = document.getElementsByName('username');
		var password = document.getElementsByName('Gender');
if(((username[0].value).length==0)||((password[0].value).length==0))
{
	 alert("please enter username and password");
     return false;
}
     else
	 return true;
};
//function for disabling back button
function noBack() { window.history.forward(); } 
</script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
	
			<!-- includes header file for login -->
			<%@ include file="loginheader.jsp" %>
			<!-- /includes header file for login -->
			
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Welcome</h2>
					<p>E-Recruitment is a process of searching applicants to staff vacancies in any organization. To meet the demands of the expanding industry, Company ABC has been increasing the recruitment of new employees by almost 20% every six months</p>
				</div>
			
				<table border="0"><tr><td>
<form method="post" action="Control" onSubmit="return formValidation();" >
username &nbsp<font color="red">*</font>:</td><td><input type="text" name="username"></input></td></tr><tr><td>
passsword &nbsp<font color="red">*</font>:</td><td><input type="password" name="pwd"></input></td></tr><tr><td>
<input type="hidden" name="req" value="asdf"/>
</td><td><br></br><input type="submit" value="Login"></input>
<input type="reset" value="Reset"></input>
</form></td></tr></table>
</td></tr></table>
<%String s=(String)request.getAttribute("abc"); %>
<%if(s==null){}
else
{%>
<p><center><h4 color="red">Invalid username or password..try again</p><%} %>
</td></tr></table>
			</div>
			<!-- /main -->
			
			
		
			<!-- includes footer file -->
		<%@ include file="footer.jsp" %>
		<!-- /includes footer file -->
</body>
</html>