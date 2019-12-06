package com.jnava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class SetAppointmentServlet
 */
@WebServlet("/SetAppointmentServlet")
public class SetAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetAppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String form_fname = request.getParameter("first_name");
		String form_lname = request.getParameter("last_name");
		String form_zipcode = request.getParameter("pzipcode");
		String form_email = request.getParameter("email");
		String form_phone = request.getParameter("phone");
		StringBuffer strSqlB = new StringBuffer();
		strSqlB.append("INSERT INTO appointment VALUES ('");
		strSqlB.append(form_fname);
		strSqlB.append("','");
		strSqlB.append(form_lname);
		strSqlB.append("',");
		strSqlB.append(form_zipcode);
		strSqlB.append(",'");
		strSqlB.append(form_email);
		strSqlB.append("',");
		strSqlB.append(form_phone);
		strSqlB.append(")");
		System.out.println(strSqlB.toString());

		String entry_email = request.getParameter("email");
		String sql1 = "SELECT * FROM appointment";
		String sql2 = " WHERE email = ";
		String sql = "";
		if (entry_email.length() > 0) { 
			sql = sql + sql1 + sql2 + entry_email;
		} else {
			sql = sql1;
		}
		
		
		
		out.println("<h1>Welcome </h1>");
		out.println("-----------------APPOINTMENT INFO ----------------");
		/**
		 * 1. Create a Connection Object.
		 * 2. Create a Statement
		 * 3. Execute Query 
		 * 4. Result Set 
		 * 5. Loop through the result set
		 * 6. Send the info out with response out 
		 **/
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
		Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		String connURL = "jdbc:mysql://localhost:3306/appointmentsdb";
		String user = "root";
		String pwd = "Jesusmysavior7!";
		conn = DriverManager.getConnection(connURL, user, pwd);
		stmt = conn.createStatement();		
		int result = stmt.executeUpdate(strSqlB.toString());	

		out.println("Appointment Created Successfully!");

		}
		catch(SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			out.println("Appointment was not able to be set. Check code...");
			e.printStackTrace(out);
		}
		finally {
			try {
				stmt.close();
				conn.close();
				//Redirects page to showappts.jsp
				response.sendRedirect("showappts.jsp");
				
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace(out);
			}

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
