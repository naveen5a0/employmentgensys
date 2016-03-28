package pack1.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pack1.cnt.EmployeePojo;
import pack1.dao.*;


public class AddEmployee {
	public static Statement st=null ;
	public static ResultSet rs= null;
	
	public void insertData(EmployeePojo lp) throws SQLException
	{
		
	
	try
	{
		
		int UnitHeadID= lp.getUnitHeadID();
		int ProjectID= lp.getProjectID();
		float CTC=lp.getCTC();
		
		String EmployeeName=lp.getEmployeeName();
		String Gender=lp.getGender();
		String Division=lp.getDivision();
		String Designation=lp.getDesignation();
		String IsNEW=lp.getIsNEW();
		String DOB=lp.getDOB();
		String DOJ=lp.getDOJ();
		
		
		GetCon conn=new GetCon();
		if(conn==null)
			System.out.println("null");
		else
			System.out.println("connection established");
		st=conn.con.createStatement();
		 System.out.println("stmt excuted");
		 st.executeUpdate("insert into Employee values(Employee_seq.nextval,'"+EmployeeName+"', '"+Gender+"','"+Division+"', '"+CTC+"','"+Designation+"', '"+UnitHeadID+"','"+ProjectID+"','"+IsNEW+"', TO_DATE('"+DOB+"','MM-DD-YYYY'), TO_DATE('"+DOJ+"','MM-DD-YYYY'),'abcxyz')");
		 st.executeQuery("commit");
        System.out.println("Success");
	}
	catch(Exception e)
	{
	  System.out.println(e);
	}
	
	st.close();
	
	//rs.close();
	}
}