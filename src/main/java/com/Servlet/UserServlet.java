package com.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.DAO;
import com.Db.DBConnect;
import com.User.UserDetails;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("fname");
		String email=request.getParameter("uemail");
		String password=request.getParameter("upassword");
		
		
		
		UserDetails us=new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		
		DAO dao=new DAO(DBConnect.getConn());
		boolean f= dao.addUser(us);
		//HttpSession session;
		
		PrintWriter out= response.getWriter() ;
		if(f) {
			out.print("Register Sucessfully...!!!");
			
		}
		else {
			out.print("Not Registered..!!");
		}
		
	}

}
