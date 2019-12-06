package com.jnava;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowAppointments
 */
@WebServlet("/ShowAppointments")
public class ShowAppointments extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowAppointments() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String sql = "SELECT * FROM appointment";

		out.println("<h1>Welcome </h1>");
		out.println("-----------------APPOINTMENT INFO ----------------");

		/**
		 * 1. Create a Connection Object.
		 * 2. Create a Statement
		 * 3. Execute Query 
		 * 4. Result Set 
		 * 5. Loop through the result set
		 * 6. Send the info out with repsonse out 
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
		rs = stmt.executeQuery(sql);
		
		//Pulling data from appointment table and making table in .jsp page
		StringBuffer sb = new StringBuffer();
		sb.append("<table border='1'><th>First Name</th><th>Last Name </th><th>Zip Code</th><th>Email</th><th>Phone</th></tr>");
		
		while (rs.next()) {
			sb.append("<tr><td>");
			String tfname = rs.getString("first_name");
			sb.append(tfname);
			sb.append("</td><td>");
			String tlname = rs.getString("last_name");
			sb.append(tlname);
			sb.append("</td><td>");
			String tzipcode = rs.getString("zipcode");
			sb.append(tzipcode);
			sb.append("</td><td>");			
			String temail = rs.getString("email");
			sb.append(temail);
			sb.append("</td><td>");	
			String tphone = rs.getString("phone");
			sb.append(tphone);
			sb.append("</td></tr>");	
		}
		sb.append("</table>");
		out.println(sb.toString());
		}
		catch(SQLException | InstantiationException | IllegalAccessException | ClassNotFoundException e) {
			out.println("Appointment was not able to be checked. Check code...");
			e.printStackTrace(out);
		}
		finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
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
