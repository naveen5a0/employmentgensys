package pack1.dto;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import pack1.dao.GetCon;
import pack1.dao.*;

public class LoginTab {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	public ResultSet selectFun()
	{
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	System.out.println("hi");
	rs=st.executeQuery("select employeename,pwd,designation from employee");
	}
	catch(Exception e){System.out.println(e);}
	return rs;
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
