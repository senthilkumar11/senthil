package co.cognizant.pack1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		response.setContentType("text/html");
		String un= request.getParameter("t1");
		String pw= request.getParameter("t2");
		
		PrintWriter out=response.getWriter();
		Cookie ck=new Cookie("MyCookie", un);
		ck.setMaxAge(600);
	    if(un.equals("admin")&pw.equals("t_admin"))
	    {
	    	response.addCookie(ck);
	    	response.sendRedirect("home.jsp");
	    	return;
	    }
	    else
	    {
	    	RequestDispatcher rd = request.getRequestDispatcher("login.html");
	        out.println("<font color=red>Either user name or password is wrong.</font>");
	        rd.include(request, response);
	    }}}
