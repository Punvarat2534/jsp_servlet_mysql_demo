<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="./layouts/header.jsp" %>

<script type="text/javascript">

$(document).ready(function() {
  $('.btn-delete').on('click', function() {
    var id = $(this).data('id'); // Gets '#myModal'
    $("#hdnid").val(id);
  });
});

</script>

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
       <a class="btn btn-danger btn-delete" data-id="${book.isbn}" data-toggle="modal" data-target="#exampleModalCenter" style=""><i class="fa fa-trash"></i></a>
      </td>
    </tr>
  </c:forEach>
 
  </table>
  
  
  <br>
  
  <img src="assets/images/taaksin.jpg" style="width:95%;">
  <br><br>
  <!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    <form method="post" action="?action=delete">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button style="float:left;" type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <input id="hdnid" name="hdnid" type="text">
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </form>
    </div>
  </div>
</div>

<!-- end -->
</div>
  
<%@include file="./layouts/footer.jsp" %>
