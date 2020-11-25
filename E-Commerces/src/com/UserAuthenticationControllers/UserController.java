package com.UserAuthenticationControllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ResponseClasses.ResponseModel;
import com.UserAuthenticationModel.UserModel;
import com.UserAuthenticationService.UserServices;
import com.google.gson.Gson;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		ResponseModel rmobj = new ResponseModel("","",false,null);
		String json= null;
		Map<String,String[]> reqobj = request.getParameterMap();
		
		UserModel umobj = new UserModel();
		UserServices usobj = new UserServices();
		
		if(reqobj.get("task")[0].equals("user-login"))
		{
			umobj.setEmail(reqobj.get("email")[0]);
			umobj.setPassword(reqobj.get("password")[0]);
			if(usobj.userLogin(umobj))
			{
				HttpSession session = request.getSession();
				session.setAttribute("user",reqobj.get("email")[0]);
				rmobj.setMessage("Successful");
				rmobj.setSuccess(true);
				rmobj.setTarget("UserDashboard.jsp");
			}
			else
			{
				rmobj.setMessage("Authentication error");
				rmobj.setSuccess(false);
				
			}
			
			
		}
		
		else if(reqobj.get("task")[0].equals("user-register"))
		{
			if(!reqobj.get("password")[0].equals(reqobj.get("cfrmpassword")[0]))
			{
				rmobj.setMessage("Password Mis Match!!");
				rmobj.setSuccess(false);
			}
			else
			{
				umobj.setName(reqobj.get("name")[0]);
				umobj.setEmail(reqobj.get("email")[0]);
				umobj.setPassword(reqobj.get("password")[0]);
				umobj.setDob(Date.valueOf(reqobj.get("dob")[0]));
				umobj.setGender(reqobj.get("gender")[0]);
				umobj.setPhone(reqobj.get("phone")[0]);
				umobj.setPassword(reqobj.get("password")[0]);
				if(usobj.userRegister(umobj))
				{
					rmobj.setMessage("Successful");
					rmobj.setSuccess(true);
					rmobj.setTarget("user-login.jsp");
				}
				
			}
			
		}
		else
		{
			rmobj.setMessage("Authentication error");
			rmobj.setSuccess(false);
		}
		json = new Gson().toJson(rmobj);
		out.println(json);
				
		
		
	}

}
