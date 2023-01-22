package project;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/addNewProductAction")
@MultipartConfig(maxFileSize = 16177215)
public class addNewProductAction extends HttpServlet {
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String category=request.getParameter("category");
		String price=request.getParameter("price");
		String description=request.getParameter("description");

		String store=request.getParameter("store");
		String active=request.getParameter("active");


		InputStream inputStream = null; // input stream of the upload file

		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("image");
		if (filePart != null) {
		    // prints out some information for debugging  
		    System.out.println(filePart.getName());
		            System.out.println(filePart.getSize());
		            System.out.println(filePart.getContentType());
		    
		    
		    // obtains input stream of the upload file
		    inputStream = filePart.getInputStream();
		}
		 


		try{
			
			
			
				Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzajsp","root","Gkr@abhishek");
			
			//Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?,?)");
			ps.setString(1,id);
			ps.setString(2,name);
			ps.setString(3,category);
			ps.setString(4,price);
			ps.setString(5,description);
			if (inputStream != null) {
		        // fetches input stream of the upload file for the blob column
		        ps.setBlob(6, inputStream);
		    }
			
			ps.setString(7,store);
			ps.setString(8,active);
			ps.executeUpdate();
			response.sendRedirect("/Online_Pizza_Ordering_System/admin/addNewProduct.jsp?msg=done");
			}
		catch(Exception e){
			System.out.println(e);
			response.sendRedirect("/Online_Pizza_Ordering_System/admin/addNewProduct.jsp?msg=wrong");
		}
		
		
		
		
	}

}
