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
<title>Add Employee</title>
<link rel="stylesheet" type="text/css" href="external.css">
<link rel="stylesheet" href="abc.css" />
		<link rel="stylesheet" type="text/css" href="external.css">
    <script src="abc.js"></script>
    <script src="abcd.js"></script>
    <script language="javaScript" type="text/javascript" src="calendar.js"></script>
   <link href="calendar.css" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="abc.css" />
    <link rel="stylesheet" type="text/css" href="external.css">
    <script src="abc.js"></script>
    <script src="abcd.js"></script>
		<script type="text/javascript"> 
        //methods for datepicker
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
	    //method for validating fields in employee form 
		function validate()
		{ 
			var bool=true;
			var EmployeeName = document.getElementsByName('EmployeeName');
			var Gender = document.getElementsByName('Gender');
			var DOB = document.getElementsByName('DOB');
			var DOJ = document.getElementsByName('DOJ');
			var Division = document.getElementsByName('Division');
			var CTC = document.getElementsByName('CTC');
			var Designation = document.getElementsByName('Designation');
			var UnitHeadID = document.getElementsByName('UnitHeadID');
			var ProjectID = document.getElementsByName('ProjectID');
			var IsHR = document.getElementsByName('IsHR');
			var IsNEW = document.getElementsByName('IsNEW');
			var letters = /^[A-Za-z]+$/;
			if((EmployeeName[0].value).length==0)
		    {
		    	alert("enter employee name"); 
		         bool=false;
		    }
			else if((EmployeeName[0].value).length>=20)
		    {
		    	alert("employee name should not exceed 20 charecters"); 
		         bool=false;
		    }
			else if(!((EmployeeName[0].value).match(letters)))
		    {
		    	alert("employee name should contain characters only"); 
		         bool=false;
		    }
			else if((Gender[0].value)=="select")
		    {
		    	alert("please select gender"); 
		         bool=false;
		    }
			else if((DOB[0].value).length==0)
		    {
		    	alert("please select Date Of Birth"); 
		         bool=false;
		    }
			else if((DOJ[0].value).length==0)
		    {
		    	alert("please select Date Of Joining"); 
		         bool=false;
		    }
			else if((DOB[0].value)>(DOJ[0].value))
	    	{
	        	alert("DOB is greater than DOJ");
	        	return false;
	    	}
			else if((Division[0].value)=="select")
		    {
		    	alert("please select division"); 
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
			else if((UnitHeadID[0].value)=="select")
		    {
		    	alert("enter unit head id"); 
		         bool=false;
		    } 
			else if((UnitHeadID[0].value).length>6||(UnitHeadID[0].value)<=0)
		    {
		    	alert("unit head id should not exceed 6 digits and can not be negative"); 
		         bool=false;
		    }
			else if(parseInt(UnitHeadID[0].value)!=UnitHeadID[0].value)
		    {
		    	alert("unit head id should be integer"); 
		         bool=false;
		    }
			else if((ProjectID[0].value)=="select")
		    {
		    	alert("enter project head id"); 
		         bool=false;
		    }
			else if((ProjectID[0].value).length>6||(ProjectID[0].value)<=0)
		    {
		    	alert("ProjectID should not exceed 6 digits and can not be negative"); 
		         bool=false;
		    }
			else if(parseInt(ProjectID[0].value)!=ProjectID[0].value)
		    {
		    	alert("ProjectID should be integer"); 
		         bool=false;
		    }
		    return bool;   
		}
		//method for datepicker
		$(function() {
	        $( "#datepicker" ).datepicker();
	        $( "#datepicker2" ).datepicker();
	    });
	    //method for disabling back button
		function noBack() { window.history.forward(); } 
		</script> 
</head>
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
	 ResultSet rs = stmt.executeQuery("select employeeid from employee where designation='Unit Head'"); %>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<!-- checking sessions -->
<%@ include file="protected.jsp" %>
<!--/checking sessions -->

<!-- header file -->
<%@ include file="header.jsp" %>
			<!--/header file -->
			<!-- main -->
			<div id="main">
				<div id="intro">
					<h2>Add Employee</h2>
					<p>&nbsp<font color="red">*</font> marked fields are mandatory</p>
				</div>
			
				<form method="post" action="Control" onSubmit="return validate();">
	<input type="hidden" name="req" value="AddEmployee" ></input>
	<br/> <br/>
	
	<table align="center" width=500 >
	  
          <tr> <td> EmployeeName&nbsp<font color="red">*</font>:</td> <td> <input type="text" name="EmployeeName" /> </td> </tr>         <tr> </tr>  
		                                                 	
	 			
					
		 <tr> <td> Gender&nbsp<font color="red">*</font>:  </td>  <td> <select name="Gender" >
			<option value="select"> Choose </option>
			<option value="Male"> Male </option>
			<option value="Female"> Female </option>
			</select></td></tr>


<tr><td>Date Of Birth&nbsp<font color="red">*</font></td><td> <input type="text" name="DOB" id="datepicker" readonly="readonly"></td></tr>
<tr><td>Date Of Joining&nbsp<font color="red">*</font></td><td><input type="text" name="DOJ" id="datepicker2" readonly="readonly"></td></tr>
	<tr></tr>	
 
	         <tr> <td>Division&nbsp<font color="red">*</font>: </td>  <td> <select name="Division">
			<option value="select"> Select Division </option>
			<option value="IT Services"> IT Services </option>
			<option value="IS"> IS </option>
			<option value="Marketing"> Marketing </option>
			<option value="Banking"> Banking </option>
			<option value="Insurance"> Insurance </option>
			<option value="Telcom"> Telcom </option>
			<option value="BPO Services"> BPO Services </option>
			</select>  </td> </tr>	

	<tr> </tr>

			
 		<tr> <td> CTC (In Lakhs)&nbsp<font color="red">*</font>:</td> <td> <input type="text" name="CTC" /> </td> </tr> 


	<tr></tr>


 		<tr> <td>Designation&nbsp<font color="red">*</font>: </td>  <td> <select name="Designation">
			<option value="select"> Choose </option>
			<option value="IT Analyst"> IT Analyst </option>
			
			<option value="HR Manager"> HR Manager </option>
			<option value="Unit Head"> Unit Head </option>
			<option value="BGC Administrator"> BGC Administrator </option>
			</select>  </td> </tr>	 
	
	<tr></tr>	

		 <tr> <td> UnitHeadID&nbsp<font color="red">*</font>:</td> <td> <select name="UnitHeadID" >
		 <option value="select">select</option>
		 <%while(rs.next()){ %>
		 <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option><%} %>
		 </select> </td> </tr>

	 <tr></tr>


		<tr> <td> ProjectID&nbsp<font color="red">*</font>:</td> <td> <select name="ProjectID" >
		 <option value="select">select</option>
		  <option value="123">123</option>
		   <option value="456">456</option>
		</select></td> </tr> 


	<tr></tr>

		

		<tr><td> Is NEW?&nbsp<font color="red">*</font></td> <td>
  			<input type="radio" name="IsNEW" value="yes" /> yes
  	 		<input type="radio" name="IsNEW" value="no" checked="checked"/> no</td></tr>

</table> <br/> <br/>
		<center> <input type="submit" value="Submit" /> 
			<input type="reset" value="Reset"/>  </center>	<br/> 
	
	</form>
			
 <!-- Calender Script  --> 

    <table id="calenderTable">
        <tbody id="calenderTableHead">
          <tr>
            <td colspan="4" align="center">
	          <select 

onChange="showCalenderBody(createCalender(document.getElementById('selectYear').value,
	           this.selectedIndex, false));" id="selectMonth">
	              <option value="0">Jan</option>
	              <option value="1">Feb</option>
	              <option value="2">Mar</option>
	              <option value="3">Apr</option>
	              <option value="4">May</option>
	              <option value="5">Jun</option>
	              <option value="6">Jul</option>
	              <option value="7">Aug</option>
	              <option value="8">Sep</option>
	              <option value="9">Oct</option>
	              <option value="10">Nov</option>
	              <option value="11">Dec</option>
	          </select>
            </td>
            <td colspan="2" align="center">
			    <select onChange="showCalenderBody(createCalender(this.value, 
				document.getElementById('selectMonth').selectedIndex, false));" 

id="selectYear">
				</select>
			</td>
            <td align="center">
			    <a href="#" onClick="closeCalender();"><font color="#003333" 

size="+1">X</font></a>
			</td>
		  </tr>
       </tbody>
       <tbody id="calenderTableDays">
         <tr style="">
           <td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>
         </tr>
       </tbody>
       <tbody id="calender"></tbody>
    </table>

<!-- End Calender Script  -->
			</div>
			<!-- /main -->
			
			
		
			<!-- footer-->
		<%@ include file="footer.jsp" %>
            <!-- /footer -->
</body>

</html>