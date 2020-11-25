package com.Order;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.BookingModel.BookingModel;
import com.BookingServices.BookingService;
import com.OrderModel.OrderModel;
import com.OrderModel.PaymentModel;
import com.OrderService.OrderService;
import com.OrderService.PaymentService;
import com.SellerModel.ProductInsertModel;
import com.SellerServices.ProductInsertService;
import com.UserAuthenticationModel.UserAddressModel;
import com.UserAuthenticationService.UserServices;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/PaymentController")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentController() {
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
	/**
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		PrintWriter out = response.getWriter();
		
		int payment_id =0,address_id = 0;
		String paymentMode=null;
		
		
		
		Map<String,String[]> reqobj = request.getParameterMap();
		PaymentModel pmobj = new PaymentModel();
		pmobj.setPayment_type(reqobj.get("payment")[0]);
		pmobj.setProduct_id(Integer.parseInt(reqobj.get("product_id")[0]));
		pmobj.setUser_id(Integer.parseInt(reqobj.get("user_id")[0]));
		PaymentService payobj = new PaymentService();
		if(payobj.insertPayment(pmobj))
		{
			List<BookingModel> plist = new BookingService().bookItemByProductId(Integer.parseInt(reqobj.get("product_id")[0]));
			for(BookingModel bmobj:plist)
			{
				int updateStock = (Integer)bmobj.getUnitStock()-(Integer.parseInt(reqobj.get("quantity")[0]));
				ProductInsertModel pobj = new ProductInsertModel();
				pobj.setUnitStock(updateStock);
				pobj.setProduct_id(Integer.parseInt(reqobj.get("product_id")[0]));
				
				ProductInsertService psobj = new ProductInsertService();
				if(psobj.updateProductStock(pobj))
				{
					System.out.println("payment Successfull or stock update");			
				}
			}
			OrderModel omobj = new OrderModel();
			List<PaymentModel> palist = new PaymentService().paymentList(Integer.parseInt(reqobj.get("user_id")[0]));
			for(PaymentModel payobj2:palist)
			{
				 payment_id = (Integer)payobj2.getPayment_id();
				 paymentMode = payobj2.getPayment_type();				
			}
//			 System.out.println("payment id with "+ payment_id);
			
			
			
			
			List<UserAddressModel> addresslist = new UserServices().getAddressById(Integer.parseInt(reqobj.get("user_id")[0]));
			for(UserAddressModel uamobj:addresslist)
			{
				address_id = (Integer)uamobj.getAddress_id();
			}
			
			
			omobj.setUser_id(Integer.parseInt(reqobj.get("user_id")[0]));
			omobj.setAddress_id(address_id);
			omobj.setAmount(Float.parseFloat(reqobj.get("amount")[0]));
			omobj.setPaid_type(paymentMode);
			omobj.setShipdate(reqobj.get("date")[0]);
			omobj.setPayment_id(payment_id);
			omobj.setPaid_type(paymentMode);
			
			OrderService osobj = new OrderService();
			if(osobj.insertOrder(omobj))
			{
				response.sendRedirect("user/UserDashboard.jsp");
			}

		}
//		System.out.println("Order Successfulles");
		
		/* OrderBookingProccessing */
		
		
	}
}
