package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import com.bean.student;
import com.dao.Studentdao;

public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
				System.out.println(action);
				if (action.equalsIgnoreCase("insert"))
				{
					if(request.getParameter("password").equals(request.getParameter("cpassword")))
					{
						student s=new student();
						s.setFname(request.getParameter("fname"));
						s.setLname(request.getParameter("lname"));
						s.setEmail(request.getParameter("email"));
						s.setMobile(Long.parseLong(request.getParameter("mobile")));
						s.setAddress(request.getParameter("address"));
						s.setPassword(request.getParameter("password"));
						Studentdao.insertstudent(s);
						request.setAttribute("msg","Data inserted successfully");
						request.getRequestDispatcher("show.jsp").forward(request, response);
					}
					
				
				
				else 
				{
					request.setAttribute("msg", "password and Confiram password does not matched");
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				}
				
	else if (action.equalsIgnoreCase("edit"))
	{
	
	int id=Integer.parseInt(request.getParameter("id"));
	student s= Studentdao.getStudent(id);
	request.setAttribute("s",s);  
	request.getRequestDispatcher("update.jsp").forward(request,response);
	
	}
	else if (action.equalsIgnoreCase("update"))
	{
		student s=new student();
		s.setId(Integer.parseInt(request.getParameter("id")));
		s.setFname(request.getParameter("fname"));
		s.setLname(request.getParameter("lname"));
		s.setEmail(request.getParameter("email"));
		s.setMobile(Long.parseLong(request.getParameter("mobile")));
		s.setAddress(request.getParameter("address"));
		s.setPassword(request.getParameter("password"));
		Studentdao.insertstudent(s);
		request.setAttribute("msg","Data inserted successfully");
		request.getRequestDispatcher("show.jsp").forward(request, response);
	}
}

}	
 

