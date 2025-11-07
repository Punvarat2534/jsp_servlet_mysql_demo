package com.demo.config;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Servlet implementation class DB
 */
@WebServlet("/DB")
public class DB extends HttpServlet {
	
    public DB() {
        super();
    }
    // Database connection details
    
 	//private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver"; // Or your specific driver
     //private static final String DB_URL = "jdbc:mysql://localhost:3306/demoprj"; // Or your specific URL
     //private static final String USER = "root";
     //private static final String PASS = "";
 	
 	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver"; // Or your specific driver
     private static final String URL = "jdbc:mysql://localhost:3306/"; // Or your specific URL
     private static final String DB = "menagerie";
     private static final String USER = "root";
     private static final String PASS = "zxcvbnm";
     

     protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
     	
     	
         response.setContentType("text/html");
         PrintWriter out = response.getWriter();
         Connection conn = null;

         try {
             Class.forName(JDBC_DRIVER);
             out.println("Connecting to database...");
             conn = DriverManager.getConnection(URL+DB, USER, PASS);
             out.println("Connection successful!");

         } catch (SQLException se) {
         	out.println("sql not found: ");
             se.printStackTrace(out);
         } catch (Exception e) {
             e.printStackTrace(out);
         	out.println("class not found: ");
             out.println(e.getMessage());
         } 
         
     }
     
     
     public String someNonStaticMethod(String message) {
         return "Received: " + message + " - Processed in AnotherClass.";
     }
 	
 	public static Connection initialize() throws SQLException, ClassNotFoundException
 	    {
 	        Class.forName(JDBC_DRIVER);
 	        //Connection con = DriverManager.getConnection(URL+DB,USER,PASS);
 	        return DriverManager.getConnection(URL+DB,USER,PASS);
 	    }

}
