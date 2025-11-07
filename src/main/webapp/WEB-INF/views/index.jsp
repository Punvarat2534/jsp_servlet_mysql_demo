<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="./layouts/header.jsp" %>

<div class="col col-md-8 col-sm-12">
  <span style="color:#840032;font-size:16pt;"><b> <i class="fa fa-bookmark"></i><%= request.getAttribute("servletMessage") %></b></span>
  
  <span style="float:right;">
  <a class="btn btn-default" href="?action=insert" style="background-color:#840032;border:1px solid gray;color:white;">เพิ่ม</a>
  </span>
  
  <br><br>
  <table class="table">
    <tr style="border:1px solid #aaa;">
      <th>เลขหนังสือ</th>
      <th>ชื่อหนังสือ</th>
      <th>ผู้แต่ง</th>
       <th>ปีที่พิมพ์</th>
       <th>ผู้จัดพิมพ์</th>
      <th></th>
       <th></th>
    </tr>
  <c:forEach var="book" items="${books}">
    <tr>
      <td>${book.isbn}</td>
      <td>${book.title}</td>
      <td>${book.author}</td>
      <td>${book.year}</td>
      <td>${book.description_s}</td>
      <td></td>
      <td>
       <a class="btn btn-default" href="?action=edit&isbn=${book.isbn}" style="color:#840032;border:1px solid gray;"><i class="fa fa-pencil"></i></a>
      </td>
    </tr>
  </c:forEach>
 
  </table>
  </div>
  
<%@include file="./layouts/footer.jsp" %>
