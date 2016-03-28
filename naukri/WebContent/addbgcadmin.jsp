<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Add BGC Administrator</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script>
//method for validating input fields
function validate()
{
	var emp = document.getElementsByName('abc');
	if(emp[0].value=="select")
	{
 alert("please select employee");
 return false;
	}
	else 
		return true;
}
//method for disabling back button
function noBack() { window.history.forward(); } 
</script>
</head>

<%
String url="jdbc:oracle:thin:@172.25.192.71:1521:javadb";
String usr="H46ORAUSER8D";
String pwd="tcshyd";
Connection con = null;
Statement st = null;
ResultSet rs= null;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
System.out.println("Driver registered getcon");
con= DriverManager.getConnection(url,usr,pwd);
st=con.createStatement();
System.out.println("hi in addbgc dto");
rs=st.executeQuery("select employeeid from employee minus select e_id from bgcadmin");

}
catch(Exception e){}
%>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!-- checking for session -->
<%@ include file="protected.jsp" %>
<!-- /checking for session -->
<!-- header -->
<%@ include file="header.jsp" %>
			<!-- /header -->
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Add BGC Admin</h2>
					<p>&nbsp<font color="red">*</font> marked fields are mandatory</p>
				</div>
			
				<form method="post" action="Control" onSubmit="return validate()">
<input type="hidden" name="req" value="addbgcadmin">
<center>
<h2>select the employee to be added as bgc Admin:</h2><br>
<h3>select employee id &nbsp<font color="red">*</font>:</h3><select name="abc">
<option value="select">select</option>
<%while(rs.next()){%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
<%} %>
</select>
<input type="submit" value="select">
</form>
			</div>
			<!-- /main -->
			
			
		
		<!-- footer -->	
		<%@ include file="footer.jsp" %>
         <!-- /footer -->
</body>

</html>