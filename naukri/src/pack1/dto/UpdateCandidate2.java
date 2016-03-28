package pack1.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import pack1.dao.GetCon;

public class UpdateCandidate2 {
	public static Statement st=null ;
	public static ResultSet rs= null;
	public void update(String s1,String s2)  throws SQLException
	{
		try
		{
		GetCon conn=new GetCon();
		if(conn==null)
			System.out.println("null");
		else
			System.out.println("connection established");
		st=conn.con.createStatement();
		 System.out.println("stmt excuted");
		 st.executeUpdate("update candi set status='"+s2+"' where name='"+s1+"'");
		 st.executeQuery("commit");
        System.out.println("Success");
		}
		catch(Exception e){System.out.println(e);}
	}

}
