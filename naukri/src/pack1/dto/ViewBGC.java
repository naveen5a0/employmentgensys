package pack1.dto;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import pack1.cnt.BGC;
import pack1.dao.GetCon;

public class ViewBGC {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	ArrayList<BGC> al=new ArrayList<BGC>();
	public ArrayList viewBGCAd()
	{
	int i=1;	
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	System.out.println("hi in viewbgc dto");
	rs=st.executeQuery("select * from bgc");
	while(rs.next())
	{
		BGC bg=new BGC();
		bg.admin=rs.getString(1);
		bg.stdate=rs.getString(2);
		bg.enddate=rs.getString(3);
		al.add(bg);
		i++;
		System.out.println("in"+rs.getString(1));	
	}
	//System.out.println("po"+al.size());
	//bg[1]=(BGC)al.get(4);
	//System.out.println("po"+bg[1].admin);
	//bg[2]=(BGC)al.get(2);
	//System.out.println("po"+bg[2].admin);
	//bg=(BGC)al.get(7);
	//System.out.println("po"+bg.admin);
	//System.out.println(rs.getString(1));
	//st.executeQuery("insert into samp values('"+bg.admin+"','"+bg.stdate+"','"+bg.enddate+"')");
	//st.executeQuery("insert into samp values('naveen','abc','abc')");
		}
	catch(Exception e){System.out.println(e);}
	return al;
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
