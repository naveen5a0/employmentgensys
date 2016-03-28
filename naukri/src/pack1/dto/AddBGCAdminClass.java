package pack1.dto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import pack1.dao.GetCon;

public class AddBGCAdminClass {
	public static Statement st=null ;
	public static ResultSet rs= null;
	public void function(String s1)  throws SQLException
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
		 long s2=Integer.parseInt(s1);
		 System.out.println("Success"+s2);
		 Calendar currentdate=Calendar.getInstance();
			SimpleDateFormat formatter= new SimpleDateFormat("dd/MMM/yyyy " +"HH:mm:ss");
	        String dateNow = formatter.format(currentdate.getTime());
		 st.executeUpdate("insert into bgcadmin values(bgcadmin_seq.nextval,0,'"+dateNow+"',"+s2+")");
		 st.executeQuery("commit");
        System.out.println("Success");
		}
		catch(Exception e){System.out.println(e);}
	}
}
