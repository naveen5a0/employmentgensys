package pack1.dto;

import java.sql.ResultSet;
import java.sql.Statement;

import pack1.cnt.BGC;
import pack1.dao.GetCon;

public class SelectBGC {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	public void selectBGCAd(BGC bg)
	{
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	System.out.println("hi"+bg.stdate);
	st.executeQuery("insert into bgc values(bgccheck_seq.nextval,'"+bg.stdate+"','"+bg.enddate+"',"+Integer.parseInt(bg.admin)+")");
	//st.executeQuery("insert into samp values('naveen','abc','abc')");
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
