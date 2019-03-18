package login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
	         int name=Integer.parseInt(request.getParameter("uname"));
	         String password=request.getParameter("psw");
	         PrintWriter pw=response.getWriter();
	
	              UserDAO userdao=new UserDAO();
	              PrintWriter p=response.getWriter();
	              response.setContentType("text/html");
	             
	              boolean flag =userdao.adduser(name,password);
	          if(flag) {
	          	RequestDispatcher rd=request.getRequestDispatcher("Registration.jsp");    
	        	rd.forward(request, response);
	}
	          else {
	        	  p.print("Name already exist");
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp"); 
		rd.include(request, response);
	}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
