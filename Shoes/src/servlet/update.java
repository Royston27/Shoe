package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/update")
public class update extends HttpServlet{




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int shoeid=Integer.parseInt(request.getParameter("shoeid"));
		String shoename= request.getParameter("shoename");
		String brand= request.getParameter("brand");
		String link= request.getParameter("link");
		Float price=Float.parseFloat(request.getParameter("price"));
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoes","root","roy");
			PreparedStatement ps=con.prepareStatement("update shoe set shoename=?,brand=?,price=?,link=? where shoeid=?");
			ps.setString(1, shoename);
			ps.setString(2, brand);
			ps.setFloat(3, price);
			ps.setString(4, link);
			ps.setInt(5, shoeid);
			ps.executeUpdate();
			response.sendRedirect("cart.jsp");
		}
		catch(Exception e)
		{
			PrintWriter out=response.getWriter();
			out.println(e);
		}

	}

}