package pack1.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pack1.dao.GetCon;


public class ViewEmployee {
	
	public static Statement st=null ;
	public static ResultSet rs= null;
	public void ViewData() throws SQLException
	{
	
	
		/*int EmployeeID;
		int UnitHeadID;
		int ProjectID;
		float CTC;
		
		String EmployeeName;
		String Gender;
		String Division;
		String Designation;
		String IsHR;*/
		
		
		
	try{	
		GetCon conn=new GetCon();
		if(conn==null)
			System.out.println("null");
		else
			System.out.println("connection established");
		 st=conn.con.createStatement();
		 System.out.println("stmt excuted");
		 rs=st.executeQuery("Select * From Employee ");
        System.out.println("Success");
	}
        
	
	
	
	
	catch(Exception e)
	{
	  System.out.println(e);
	}
	//st.close();
	//rs.close();
}}