package pack1.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pack1.dao.GetCon;
import pack1.cnt.EditEmployeePojo;


public class EditEmployee {
	public static Statement st=null ;
	public static ResultSet rs= null;
	
	public void editData(EditEmployeePojo lp) throws SQLException
	{
		
	
	try
	{
		int EmployeeID= lp.getEmployeeID();
		float CTC=lp.getCTC();
		String Designation=lp.getDesignation();
				
		
		GetCon conn=new GetCon();
		if(conn==null)
			System.out.println("null");
		else
			System.out.println("connection established");
		st=conn.con.createStatement();
		 System.out.println("stmt excuted"+CTC);
		 
		 st.executeUpdate("Update Employee set CTC = '"+CTC+"', Designation='"+Designation+"' WHERE EmployeeID ='"+EmployeeID+"'");
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