package com.anmolsingh.servletdemo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TextParamServlet
 */
@WebServlet("/TextParamServlet")
public class TextParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TextParamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Step 1 : Set the content type
		response.setContentType("text/html");
		// step 2 : Get the printwriter
		PrintWriter out = response.getWriter();
		// step 3 : Read configuration params
		ServletContext context = getServletContext();// Inherit from httpServlet
		String var1 = context.getInitParameter("Money-earned-in-Dollar");
		String var2 = context.getInitParameter("Name-of-Amazon-SDE");
		// step 4: Generating html content  
		out.println("<html><body>");
		out.println("Money earned : " + var1);
		out.println("<br/><br/>");
		out.println("Amazon SDE name : " + var2);
		out.println("</body></html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
