package pack1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import pack1.dto.*;

public class GetCon {
	public static Connection con = null;
	public GetCon()
{
		String url="jdbc:oracle:thin:@172.25.192.71:1521:javadb";
		String usr="H46ORAUSER8D";
		String pwd="tcshyd";	
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Driver registered getcon");
		con= DriverManager.getConnection(url,usr,pwd);
		}
		catch(Exception e){}
}
	public void closing()
	{
		try
		{
		con.close();
		}
		catch(Exception e){}
	}
}
