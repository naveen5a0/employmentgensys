package pack1.cnt;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pack1.dto.LoginTab;

/**
 * Servlet implementation class Loginserv
 */
public class Loginserv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginserv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Emp e=new Emp();
		String s=request.getParameter("username");
		String ss=request.getParameter("pwd");

		String s1="default";
		String s2="default";
		String s3="default";
		LoginTab lt=new LoginTab();
		ResultSet rs=lt.selectFun();
		try
		{
		while(rs.next())
		{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		System.out.println("if entered"+s3);
		if((s1.equals(s))&&(s2.equals(ss)))
		{
			HttpSession ses=request.getSession(true);
			ses.setAttribute("username",s1);
			ses.setAttribute("position",s3);
			ses.setAttribute("status","yes");
			System.out.println((String)ses.getAttribute("username"));
			if(s2.equals("abcxyz"))
			{
				System.out.println("valid");  
				request.setAttribute("naveen","def");
				
			}
			else
			{
		System.out.println("valid");  
		request.setAttribute("naveen","valid");
			}
			break;
		}
		else
		{
			System.out.println("invalid");
			request.setAttribute("naveen","invalid!!!");
		}
		}
		}
		catch(Exception ex){System.out.println(ex);}
		lt.closing();
		
		//RequestDispatcher rds=request.getRequestDispatcher("Control");
		//rds.include(request,response);
		//System.out.println(user);
	}

}
