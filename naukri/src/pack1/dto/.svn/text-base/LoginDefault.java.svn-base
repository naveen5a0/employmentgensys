package pack1.dto;

import java.sql.ResultSet;
import java.sql.Statement;

import pack1.dao.GetCon;

public class LoginDefault {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	public void selectFun(String s1,String s2)
	{
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	System.out.println("hi in logindefault");
	System.out.println("hi in logindefault"+s1);
	st.executeQuery("update employee set pwd='"+s2+"' where employeename='"+s1+"'");
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
		catch(Exception e){System.out.println(e);}
	}
}
