package pack1.cnt;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pack1.dto.UpdateCandidate;
import pack1.dto.ViewBGC;

/**
 * Servlet implementation class Updatecandidate
 */
public class Updatecandidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatecandidate() {
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
		System.out.println("hiiiiiiiiiiiiiii in update");
		UpdateCandidate uc=new UpdateCandidate();
		ArrayList<Candi> arl=new ArrayList<Candi>();
		arl=uc.updateCandi();
		request.setAttribute("abc",arl);
		BGC bg;
		System.out.println("po"+arl.size());
	}

}
