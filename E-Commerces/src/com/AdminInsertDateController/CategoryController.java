package com.AdminInsertDateController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.AdminInsertDataModel.CategoryModel;
import com.AdminInsertDataServices.CategoryServices;
import com.ResponseClasses.ResponseModel;
import com.google.gson.Gson;


/**
 * Servlet implementation class CategoryController
 */
@WebServlet("/CategoryController")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
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
		
		List<CategoryModel> mlist = null;
		
		switch(action) {
		
		case "category_list":
			mlist = new CategoryServices().category_list();
			rmobj.setData(mlist);
			rmobj.setSuccess(true);
		break;
			}
		json = new Gson().toJson(rmobj);
		response.getWriter().write(json);

		
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		PrintWriter out = response.getWriter();
		Map<String,String[]> reqobj = request.getParameterMap();
		CategoryModel cmobj = new CategoryModel();
		CategoryServices csobj = new CategoryServices();
		
		if(reqobj.get("task")[0].equals("category-insert"))
		{
			cmobj.setCategory_name(reqobj.get("category_name")[0]);
			cmobj.setSub_category_name(reqobj.get("sub_category_name")[0]);
			if(csobj.insertCategory(cmobj))
			{
				response.sendRedirect("Admin/category-insert.jsp");
			}
			
			
		}
		else
		{
				out.println("Authentication Error");
		}
	}

}
