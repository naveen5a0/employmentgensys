<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.DriverManager" %>
 <%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="cs.jsp" %>
<title>Edit Employee</title>
<link rel="stylesheet" type="text/css" href="external.css">
<script type="text/javascript">
//function for validating fields in employee form
function validate()
		{ 
			var bool=true;
			var EmployeeID = document.getElementsByName('EmployeeID');
			var CTC = document.getElementsByName('CTC');
			var Designation = document.getElementsByName('Designation');
			var UnitHeadID = document.getElementsByName('UnitHead');
			if((EmployeeID[0].value)=="none")
		    {
		    	alert("selec EMP id"); 
		         bool=false;
		    }
			
			else if((CTC[0].value).length==0)
		    {
		    	alert("enter CTC"); 
		         bool=false;
		    }
			else if((isNaN(parseFloat(CTC[0].value))))
		    {
		    	alert("Enter CTC as float value"); 
		         bool=false;
		    }
			else if(((parseFloat(CTC[0].value)<1.5)||(parseFloat(CTC[0].value)>3.5)))
		    {
			    
		    	alert("CTC should be 1.5 lakhs to 3.5 lakhs "); 
		         bool=false;
		    }
			else if((Designation[0].value)=="select")
		    {
		    	alert("please select designation"); 
		         bool=false;
		    }
			else if((UnitHeadID[0].value)=="choose")
		    {
		    	alert("choose unithead"); 
		         bool=false;
		    }
		    return bool;   
		}
        //function for disabling back button
		function noBack() { window.history.forward(); } 
		</script>
</head>

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
					<h2>Edit Employee</h2>
					<p>&nbsp<font color="red">*</font> marked fields are mandatory</p>
				</div>
			
					<form name="form" action="Control" method="post" onSubmit="return validate()">
	<input type="hidden" name="req" value="EditEmployee" ></input>
	<br/> <br/>
	<table width=400 align="center" >
	                                                       	
	 			
					
		 <tr> <td> EmployeeID&nbsp<font color="red">*</font>:  </td>  <td> <select name="EmployeeID" >
		 <option value="none">Select</option>   
	 <%      
	 

	
	 Connection con = null;
	 	
	 {
	 		String url="jdbc:oracle:thin:@172.25.192.71:1521:javadb";
	 		String usr="H46ORAUSER8D";
	 		String pwd="tcshyd";	
	 		try
	 		{
	 		Class.forName("oracle.jdbc.driver.OracleDriver");
	 		System.out.println("Driver registered Connection");
	 		con=DriverManager.getConnection(url, usr, pwd);
	 		System.out.println("connectiin established");
	 		}
	 		catch(Exception e){}
	 }

	Statement stmt = con.createStatement(); 
	 ResultSet rs = stmt.executeQuery("Select EmployeeID from Employee"); 
	 
	 while(rs.next())
	 {
		 %>   
		 <option value="<%=rs.getString("EmployeeID")%>"><%=rs.getString("EmployeeID")%></option>  
        <%      }   
	 %>
					</select></td></tr>


	

			
 		<tr> <td> CTC (In Lakhs)&nbsp<font color="red">*</font>:</td> <td> <input type="text" name="CTC" /> </td> </tr> 





 		<tr> <td>Designation&nbsp<font color="red">*</font>: </td>  <td> <select name="Designation">
			<option value="select"> Choose </option>
			<option value="IT Analyst"> IT Analyst </option>
			
			<option value="HR Manager"> HR Manager </option>
			<option value="Unit Head"> Unit Head </option>
			<option value="BGC Administrator"> BGC Administrator </option>
			</select>  </td> </tr>	 
	
		
		
	   <!--  <tr> <td> UnitHead&nbsp<font color="red">*</font>:  </td>  <td> <select name="UnitHead">
			<option value="choose"> Choose </option>
			<option value="yes"> yes </option>
			<option value="no"> no</option>
			</select></td></tr>-->
		<tr><td><center><br><br><input type="submit" value="Update" /></td>
		<td><br><br><input type="reset" value="Reset"/></td></tr>	
	
<%rs.close();
stmt.close();
con.close();%>	

</table> 
	
	</form>
			</div>
			<!-- /main -->
			
			
		
			<!-- footer -->
		<%@ include file="footer.jsp" %>
           <!-- /footer -->
</body>
</html>