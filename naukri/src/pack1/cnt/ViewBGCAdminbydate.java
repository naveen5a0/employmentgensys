package pack1.cnt;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack1.dto.LoginTab;
import pack1.dto.ViewBGC;
import pack1.dto.ViewBGCbydate;

/**
 * Servlet implementation class ViewBGCAdmin
 */
public class ViewBGCAdminbydate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewBGCAdminbydate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("hello");
		ViewBGCbydate vb=new ViewBGCbydate();
		ArrayList<BGC> arl=new ArrayList<BGC>();
		System.out.println(request.getParameter("stdate")+"w");
		arl=vb.viewBGCAd(request.getParameter("stdate"),request.getParameter("enddate"));
		request.setAttribute("abc",arl);
		BGC bg;
		System.out.println("po"+arl.size());
		/*bg=(BGC)arl.get(4);
		System.out.println(bg.admin);
		bg=(BGC)arl.get(2);
		System.out.println(bg.admin);
		bg=(BGC)arl.get(7);
		System.out.println(bg.admin);*/
		//for(int i=0;i<10;i++)
		//{
			//bg=(BGC)arl.get(i);
			//System.out.println("result"+bg.admin);	
		//}
	}

}
