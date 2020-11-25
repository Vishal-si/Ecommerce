package com.SellerControllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.SellerModel.ProductInsertModel;
import com.SellerServices.ProductInsertService;

/**
 * Servlet implementation class ProductUpdate
 */
@WebServlet("/ProductUpdate")
public class ProductUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdate() {
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
		PrintWriter out  = response.getWriter();
		Map<String,String[]> req = request.getParameterMap();
		ProductInsertModel pmobj = new ProductInsertModel();
			if(req.get("task")[0].equals("updateStock"))
			{
				pmobj.setProduct_id(Integer.parseInt(req.get("product_id")[0]));
				pmobj.setUnitStock(Integer.parseInt(req.get("unitStock")[0]));
				ProductInsertService pisobj = new ProductInsertService();
				if(pisobj.updateProductStock(pmobj))
				{
				response.sendRedirect("Sellers/Dashboard.jsp");
				}
				else
				{
					out.println("Request Failed");
				}
				
			}
			
			else if (req.get("task")[0].equals("updatePrice"))
			{
				pmobj.setProduct_id(Integer.parseInt(req.get("product_id")[0]));
				pmobj.setSellingprice(Integer.parseInt(req.get("selling_price")[0]));
				ProductInsertService pisobj = new ProductInsertService();
				if(pisobj.updateProductPrice(pmobj))
				{
				response.sendRedirect("Sellers/Dashboard.jsp");
				}
				else
				{
					out.println("Request Failed");
				}

			}
			
			else if(req.get("task")[0].equals("remove"))
			{ 
				pmobj.setProduct_id(Integer.parseInt(req.get("product_id")[0]));
				ProductInsertService pisobj = new ProductInsertService();
				if(pisobj.deleteProduct(pmobj))
				{
				response.sendRedirect("Sellers/Dashboard.jsp");
				}
				else
				{
					out.println("Request Failed");
				}
			}
				
			
		
			
	}

}
