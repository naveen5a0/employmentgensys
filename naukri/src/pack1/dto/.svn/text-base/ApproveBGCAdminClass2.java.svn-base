package pack1.dto;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import pack1.cnt.BGCAdmin;
import pack1.dao.GetCon;

public class ApproveBGCAdminClass2 {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	
	public void function(String s)
	{	
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	int i=Integer.parseInt(s);
	System.out.println("hi in approve dto");
	rs=st.executeQuery("update bgcadmin set status=1 where a_id="+i);
	

		}
	catch(Exception e){System.out.println(e);}
	}
	public void closing()
	{
		try
		{
		gc.closing();
		st.close();
		rs.close();
		}
		catch(Exception e){}
	}
}
