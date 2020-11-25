package com.BookingCartController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BookingModel.CartModel;
import com.BookingServices.CartService;

/**
 * Servlet implementation class BookingCartController
 */
@WebServlet("/BookingCartController")
public class BookingCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookingCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		PrintWriter out = response.getWriter();
		String btn = request.getParameter("btn");
		
		switch(btn)
		{
		case "cart":
			
			Map<String, String[]> reqCart = request.getParameterMap();
			CartModel cm = new CartModel();
			int productid = Integer.parseInt(reqCart.get("product_id")[0]);
			cm.setUser_id(Integer.parseInt(reqCart.get("user_id")[0]));
			cm.setProduct_id(Integer.parseInt(reqCart.get("product_id")[0]));
			cm.setQuantity(Integer.parseInt(reqCart.get("quantity")[0]));
			CartService csobj = new CartService();
			if(csobj.cartInsert(cm));
			{
				response.sendRedirect("user/Book&Cart.jsp?product_id="+productid);
			}
			
			
			
			break;
			
		case "booking":
			
			Map<String, String[]> reqBooking = request.getParameterMap();
			int product_id = Integer.parseInt(reqBooking.get("product_id")[0]);
			//int user_id = Integer.parseInt(reqBooking.get("user_id")[0]);
			//int price = Integer.parseInt(reqBooking.get("selling_price")[0]);
			int quantity = Integer.parseInt(reqBooking.get("quantity")[0]);
			String date = reqBooking.get("date")[0];
			
			RequestDispatcher rd = request.getRequestDispatcher("user/AddressRequired.jsp?product_id="+product_id+"&quantity="+quantity+"&date="+date);
			rd.forward(request, response);
			
			
			//response.sendRedirect("user/AddressRequired.jsp?product_id="+product_id+"&quantity="+quantity+"&date="+date);
		
			break;
			
		}
		
	}

}
