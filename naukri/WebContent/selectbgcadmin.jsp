<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection"%>
    <%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Select BGC Administrator</title>
<link rel="stylesheet" type="text/css" href="external.css">
<meta charset="utf-8" />
    <title>Select BGC Admin</title>
    <link rel="stylesheet" href="abc.css" />
    <link rel="stylesheet" type="text/css" href="external.css">
    <script src="abc.js"></script>
    <script src="abcd.js"></script>
    <%--<script src="sample-registration-form-validation.js"></script>--%>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
    //function for editing date picker
    $(function() {
        $( "#datepicker" ).datepicker({
            changeMonth: true,
            changeYear: true
        });
    }); 
    $(function() {
        $( "#datepicker2" ).datepicker({
            changeMonth: true,
            changeYear: true
        });
    }); 
    //function for validating different field in the form
    function formValidation()
    {
       	var emp = document.getElementsByName('selemp');
       	var stdate=document.getElementsByName('stdate');
    	var enddate=document.getElementsByName('enddate');
      	if(emp[0].value=="select")
    			{
    		 alert("please select admin");
             return false;
    			}
    	else if(((stdate[0].value).length==0)||((enddate[0].value).length==0))
    {
    	 alert("please select the date");
         return false;
    }
    	else if((stdate[0].value)>(enddate[0].value))
    	{
        	alert("starting date is greater than closing date");
        	return false;
    	}
         else
    	 return true;
    };
    $(function() {
        $( "#datepicker" ).datepicker();
        $( "#datepicker2" ).datepicker();
    });
    //function for disabling back button
    function noBack() { window.history.forward(); } 
    </script>
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
rs=st.executeQuery("select a_id from bgcadmin where status=1");

}
catch(Exception e){}
%>
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
					<h2>Select BGC Admin</h2>
					<p>&nbsp<font color="red">*</font> marked fields are mandatory</p>
			</div>
			
				<table border="0"><tr><td>

<form method="post" action="Control" onSubmit="return formValidation();">
select emp id&nbsp<font color="red">*</font>:<select name="selemp">
<option value="select">select</option>
<%while(rs.next()){%>
<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
<%} %>
</select><br><br>
starting date &nbsp<font color="red">*</font>:<input type="text" name="stdate" id="datepicker" readonly="readonly"></input><br><br>
closing date &nbsp<font color="red">*</font>:<input type="text" name="enddate" id="datepicker2" readonly="readonly"></input><br><br>
<input type="hidden" name="req" value="selectbgcadmin"/>
<input type="submit" value="Submit"></input>
</form>

</td></tr></table>
			</div>
			<!-- /main -->
			
			
		
		<!-- footer -->	
		<%@ include file="footer.jsp" %>
        <!-- /footer -->
</body>
</html>