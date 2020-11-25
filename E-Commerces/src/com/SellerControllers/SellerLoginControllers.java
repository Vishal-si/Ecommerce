package com.SellerControllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ResponseClasses.ResponseModel;
import com.SellerModel.SellerModel;
import com.SellerServices.SellerService;
import com.google.gson.Gson;

/**
 * Servlet implementation class SellerLoginControllers
 */
@WebServlet("/SellerLoginControllers")
public class SellerLoginControllers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellerLoginControllers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		ResponseModel rmobj = new ResponseModel("", "", false, null);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		String json = null;
		
		String action = request.getParameter("action");
		
		if(action == null || action == "") {
			rmobj.setTarget("logout.jsp");
			json = new Gson().toJson(rmobj);
			response.getWriter().write(json);
			return;
		}
		
		List<SellerModel> slist = null;
		
		switch(action) {
		
		case "seller_list":
			slist = new SellerService().sellerList();
			rmobj.setData(slist);
			rmobj.setSuccess(true);
		break;
			}
		json = new Gson().toJson(rmobj);
		response.getWriter().write(json);

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		PrintWriter out = response.getWriter();
		ResponseModel rmobj = new ResponseModel("","",false,null);
		SellerModel smobj = new SellerModel();
		SellerService ssobj = new SellerService();
		
		String json = null;
		response.setContentType("application/json");
		Map<String,String[]> reqobj = request.getParameterMap();
		if(reqobj.get("task")[0].equals("seller_login"))
		{
			smobj.setEmail(reqobj.get("email")[0]);
			smobj.setPassword(reqobj.get("password")[0]);
			
			if(ssobj.sellerLogin(smobj))
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("seller",reqobj.get("email")[0]);
				rmobj.setMessage("successful");
				rmobj.setSuccess(true);
				rmobj.setTarget("Dashboard.jsp");
			}
			
			else 
			{
				rmobj.setMessage("Authencation Error");
				rmobj.setSuccess(false);
			}	
		}
		
		json=new Gson().toJson(rmobj);
		out.println(json);
		

	}
	
		
	

}
