
import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, 
                                HttpServletResponse response) 
		throws ServletException, IOException {
		try
		{
		//getting input values from jsp page
		String id = request.getParameter("input_id");
		String pwd = request.getParameter("input_pwd");

