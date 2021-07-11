package servlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import others.Email;
@WebServlet(name="registration",urlPatterns = "/registration")
public class registration extends HttpServlet {





	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoes","root","roy");
			PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?)");
			ps.setString(1, username);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, "user");
			ps.executeUpdate();
			
			Email em=new Email (email,"registered successfully....","welcome to shoes Website");
			em.sendEmail();
			resp.sendRedirect("home.jsp");
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}
}