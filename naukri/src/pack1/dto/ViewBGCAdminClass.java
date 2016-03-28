package pack1.dto;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import pack1.cnt.BGCAdmin;
import pack1.cnt.Candi;
import pack1.dao.GetCon;

public class ViewBGCAdminClass {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	ArrayList<BGCAdmin> al=new ArrayList<BGCAdmin>();
	public ArrayList updateCandi()
	{
	int i=1;	
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	System.out.println("hi in approve dto");
	rs=st.executeQuery("select a_id,status,statuschangetime,e_id from bgcadmin");
	while(rs.next())
	{
		BGCAdmin cd=new BGCAdmin();
		cd.setAdminid(rs.getInt(1));
		cd.setStatus(rs.getInt(2));
		cd.setChangetim(rs.getString(3));
		cd.setEmpid(rs.getString(4));
		//bg.enddate=rs.getString(3);
		al.add(cd);
		i++;
		//System.out.println("in"+rs.getString(1));	
	}

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
