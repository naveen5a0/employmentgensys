package pack1.cnt;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack1.dto.SelectBGC;

/**
 * Servlet implementation class Loginserv
 */
public class SelectBGCAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectBGCAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BGC sb=new BGC();
		SelectBGC sbc=new SelectBGC();
		sb.admin=request.getParameter("selemp");
		System.out.println("yes"+sb.admin);
		sb.stdate=request.getParameter("stdate");
		sb.enddate=request.getParameter("enddate");
		sbc.selectBGCAd(sb);
		
		/*SelectBGC lt=new SelectBGC();
		try
		{
		if(rs.next())
		{
		s1=rs.getString(1);
		s2=rs.getString(2);
		}
		System.out.println("if entered");
		if((s1.equals(s))&&(s2.equals(ss)))
		{
		System.out.println("valid");  
		request.setAttribute("naveen","valid");
		}
		else
		{
			System.out.println("invalid");
			request.setAttribute("naveen","invalid!!!");
		}
		}
		catch(Exception ex){System.out.println(ex);}
		lt.closing();*/
		
		//RequestDispatcher rds=request.getRequestDispatcher("Control");
		//rds.include(request,response);
		//System.out.println(user);
	}

}
