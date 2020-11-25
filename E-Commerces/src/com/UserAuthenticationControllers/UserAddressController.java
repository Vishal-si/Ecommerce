package com.UserAuthenticationControllers;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.BookingModel.BookingModel;
import com.BookingServices.BookingService;
import com.SellerModel.ProductInsertModel;
import com.SellerModel.SellerModel;
import com.SellerServices.ProductInsertService;
import com.SellerServices.SellerService;
import com.UserAuthenticationModel.UserAddressModel;
import com.UserAuthenticationService.UserServices;

/**
 * Servlet implementation class UserAddressController
 */
@WebServlet("/UserAddressController")
public class UserAddressController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAddressController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String btn = request.getParameter("btn");
		int quantity,product_id;
		String date;
		float netPrice;
		System.out.println(btn);
		//PrintWriter out = response.getWriter();
		switch(btn)
		{
		case "addAddress":
			Map<String,String[]> reqmap = request.getParameterMap();
			product_id = Integer.parseInt(reqmap.get("product_id")[0]);
			quantity = Integer.parseInt(reqmap.get("quantity")[0]);
			
			UserAddressModel uamobj = new UserAddressModel();
			uamobj.setUser_id(Integer.parseInt(reqmap.get("user_id")[0]));
			uamobj.setFull_name(reqmap.get("full_name")[0]);
			uamobj.setAddress1(reqmap.get("address1")[0]);
			uamobj.setAddress2(reqmap.get("address2")[0]);
			uamobj.setLandmark(reqmap.get("landmark")[0]);
			uamobj.setCity(reqmap.get("city")[0]);
			uamobj.setPostcode(reqmap.get("postcode")[0]);
			uamobj.setPhone(reqmap.get("phone")[0]);
			UserServices usobj = new UserServices();
			if(usobj.insertAddress(uamobj))
			{
				RequestDispatcher rd = request.getRequestDispatcher("user/AddressRequired.jsp?product_id="+product_id+"&quantity="+quantity);
				rd.forward(request, response);
				//response.sendRedirect("user/AddressRequired.jsp?product_id="+product_id+"&quantity="+quantity);
			}
			break;
			
		case "next":
			Map<String,String[]> req_submit = request.getParameterMap();
			product_id = Integer.parseInt(req_submit.get("product_id")[0]);
			quantity = Integer.parseInt(req_submit.get("quantity")[0]);
			date = req_submit.get("date")[0];
			List<BookingModel> bmlist = new BookingService().bookItemByProductId(product_id);
			netPrice=0;
			for(BookingModel bmobj:bmlist )
			{
				 netPrice = (bmobj.getSellingprice()*quantity);
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("user/payment.jsp?netPrice="+netPrice+"&product_id="+product_id+"&quantity="+quantity+"&date="+date);
			rd.forward(request, response);
			//response.sendRedirect("user/payment.jsp?netPrice="+netPrice+"&product_id="+product_id+"&quantity="+quantity+"&date="+date);

		}
		
					
		
		
				
	}

}
