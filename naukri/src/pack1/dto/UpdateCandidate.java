package pack1.dto;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import pack1.cnt.BGC;
import pack1.cnt.Candi;
import pack1.dao.GetCon;

public class UpdateCandidate {
	static Statement st = null;
	static ResultSet rs= null;
	GetCon gc;
	ArrayList<Candi> al=new ArrayList<Candi>();
	public ArrayList updateCandi()
	{
	int i=1;	
		try
		{
	gc=new GetCon();
	st=gc.con.createStatement();
	System.out.println("hi in updatecandidate dto");
	rs=st.executeQuery("select name,status from candi");
	while(rs.next())
	{
		Candi cd=new Candi();
		cd.name=rs.getString(1);
		cd.status=rs.getString(2);
		//bg.enddate=rs.getString(3);
		al.add(cd);
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
