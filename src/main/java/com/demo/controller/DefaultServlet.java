package com.demo.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.*;

import com.demo.config.*;
import com.demo.model.BooksModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("")

public class DefaultServlet extends HttpServlet {
	Connection conn = null;
	
    public DefaultServlet() throws ClassNotFoundException, SQLException  {
        super();
        this.conn = DB.initialize();
      //response.getWriter().println(sbooks);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        try {
        	String action = request.getParameter("action"); 
        	
        	if(action!=null) {
        		
        	switch (action) {
                case "insert":
                    insert(request, response);
                    break;
                case "edit":
                    edit(request, response);
                    break;
                default:
                    showAll(request, response);
                    break;
            	}
        	}else {
        		showAll(request, response);
        	}
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
   
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		
		try {
	        	String action = request.getParameter("action"); 
	        	
	        	if(action!=null) {
	        		
	        	switch (action) {
	                case "create":
	                    create(request, response);
	                    break;
	                case "update":
	                	update(request, response);
	                    break;
	                default:
	                    showAll(request, response);
	                    break;
	            	}
	        	}else {
	        		showAll(request, response);
	        	}
	        } catch (SQLException ex) {
	            throw new ServletException(ex);
	        }
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	
	
	private void showAll(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		
		 try {
 	        
 	          String sql = "SELECT books.isbn, books.title, books.author, books.year, "
 	          		+ "books.publisher, books.image, books.id, books.deleted_at,"
 	          		+ "comments.description_s FROM books inner join comments "
 	          		+ "on books.isbn = comments.isbn";
 	       
 	          PreparedStatement pstmt = conn.prepareStatement(sql);
 	          ResultSet rs = pstmt.executeQuery();

    	      List<BooksModel> books = new ArrayList<>();
 	          
    	      while (rs.next()) {
 	        	 
 	        	BooksModel b = new BooksModel();
 	        	
 	        	b.setId(rs.getInt("id"));
 	        	b.setIsbn(rs.getString("isbn"));
 	        	b.setTitle(rs.getString("title"));
 	        	b.setAuthor(rs.getString("author"));
 	        	b.setImage(rs.getString("image"));
 	        	b.setPublisher(rs.getString("publisher"));
 	        	b.setYear(rs.getInt("year"));
 	        	b.setDeleted_at(rs.getString("deleted_at"));
 	        	b.setDescription_s(rs.getString("description_s"));
  	            books.add(b);
  	            
 	          }
 	          
	    	request.setAttribute("servletMessage","Data from Servlet"); 
	    	request.setAttribute("books", books); 
	       
	    	RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
	        dispatcher.include(request, response);

       } catch (SQLException se) {
    	   System.out.println(se.getMessage());
       } catch (Exception e) {
    	   System.out.println(e.getMessage());
       } 
	}
	
	
	private void insert(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/books/create.jsp");
        dispatcher.include(request, response);

		
	}
	
	private void edit(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		
		String isbn = request.getParameter("isbn");

		String sbooks = "select books.isbn, books.title, books.author, books.year,"
				+ "books.publisher, books.image, books.id, books.deleted_at,comments.description_s "
				+ "from books inner join comments on comments.isbn=books.isbn and books.isbn=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sbooks);
		pstmt.setString(1, isbn);
        ResultSet rs = pstmt.executeQuery();
        
        
        if (rs.next()) {
        	
        	BooksModel books = new BooksModel();
        	books.setId(rs.getInt("id"));
        	books.setIsbn(rs.getString("isbn"));
        	books.setTitle(rs.getString("title"));
        	books.setYear(rs.getInt("year"));
        	books.setPublisher(rs.getString("publisher"));
        	books.setAuthor(rs.getString("author"));
        	books.setDescription_s(rs.getString("description_s"));
        	
        	
        	//response.getWriter().println("dd: "+rs.getString("description_s"));
     
            request.setAttribute("books", books); 
          
    		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/books/edit.jsp");
            dispatcher.include(request, response);
           
        
        } else {
            response.setContentType("text/plain");
            response.getWriter().println(" not found.");
        }
        
        

		
	}
	
	private void create(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		PrintWriter out = response.getWriter();
		out.println("Insert Here!!");
		
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String year = request.getParameter("year");
		
		String sql = "insert into books set isbn=,title=,author=,publisher=,year=";
		response.sendRedirect(request.getContextPath()); 
		
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException {
		PrintWriter out = response.getWriter();
		out.println("Insert Here!!");
		
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String year = request.getParameter("year");
		
		String sql = "insert into books set isbn=,title=,author=,publisher=,year=";
		response.sendRedirect(request.getContextPath()); 
		
	}
	

}
