package pack1.cnt;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack1.dto.ApproveBGCAdminClass;
import pack1.dto.UpdateCandidate;

/**
 * Servlet implementation class ApproveBGCAdminHandler
 */
public class ApproveBGCAdminHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApproveBGCAdminHandler() {
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
		System.out.println("hiiiiiiiiiiiiiii in approve hand");
		ApproveBGCAdminClass abc=new ApproveBGCAdminClass();
		ArrayList<BGCAdmin> arl=new ArrayList<BGCAdmin>();
		arl=abc.updateCandi();
		request.setAttribute("abc",arl);
		System.out.println("po"+arl.size());
	}

}
