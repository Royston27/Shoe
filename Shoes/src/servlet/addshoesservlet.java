package servlet;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet(name="addshoesservlet",urlPatterns = "/addshoesservlet")
@MultipartConfig(maxFileSize = 9999999999L)

public class addshoesservlet extends HttpServlet{




	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String shoename=req.getParameter("shoename");
		String brand=req.getParameter("brand");
		float price=Float.parseFloat(req.getParameter("price"));
		String link=req.getParameter("link");
		
		Part part=req.getPart("image");
		InputStream is=part.getInputStream();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoes","root","roy");
			PreparedStatement ps=con.prepareStatement("insert into shoe (shoename,brand,price,link,image,status) values(?,?,?,?,?,?)");
			ps.setString(1, shoename);
			ps.setString(2, brand);
			ps.setFloat(3, price);
			ps.setString(4, link);
			ps.setBlob(5, is);
			ps.setString(6, "A");
			ps.executeUpdate();
			resp.sendRedirect("shoes.jsp");
		}
		catch(Exception e)
		{
			PrintWriter out=resp.getWriter();
			out.println(e);
		}
	}
}