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

@WebServlet("/delete")
public class delete extends HttpServlet


{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
				int shoeid=Integer.parseInt(req.getParameter("shoeid"));
				
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoes","root","roy");
					PreparedStatement ps=con.prepareStatement("update shoe set status='D' where shoeid=?");
					ps.setInt(1,shoeid);
					ps.executeUpdate();
					
					PrintWriter out=resp.getWriter();
					out.println(""
							+ "<script>"
							+ "alert('shoe Deleted Successfully!!!');"
							+ "window.location='cart.jsp';"
							+ "</script>");
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
	}
}