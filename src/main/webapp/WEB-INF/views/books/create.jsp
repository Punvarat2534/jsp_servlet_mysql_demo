<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="./../layouts/header.jsp" %>
<div class="col col-md-8 col-sm-12">

<form class="form-horizontal" method="post" action="?action=create"  enctype="multipart/form-data" style="margin:0 auto;width:90%;">

<div class="form-group">
    <label class="control-label col-sm-2 col-md-12" for="isbn">isbn:</label>
    <div class="col-sm-12">
      <input type="text" class="form-control" id="isbn" name="isbn" value="" placeholder="isbn" required>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="title">title:</label>
    <div class="col-sm-12">
      <input type="text" class="form-control" id="title" name="title" placeholder="title" required>
    </div>
</div>
  
<div class="form-group">
    <label class="control-label col-sm-2" for="author">author:</label>
    <div class="col-sm-12">
      <input type="text" class="form-control" id="author" name="author" placeholder="author" required>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="author">publisher:</label>
    <div class="col-sm-12">
      <input type="text" class="form-control" id="publisher" name="publisher" placeholder="publisher" required>
    </div>
</div>

<div class="form-group">
    <label class="control-label col-sm-2" for="author">year:</label>
    <div class="col-sm-12">
      <input type="text" class="form-control" id="year" name="year" placeholder="year" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="image">image:</label>
    <div class="col-sm-12">
      <input type="file" class="form-control" id="images" name="images" required>
    </div>
</div>
<div class="form-group">
    <label class="control-label col-sm-2" for="image">description</label>
    <div class="col-sm-12">
    <textarea class="form-control" id="descrip" name="descrip"></textarea>
    </div>
</div>
<br><br>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">

      <button type="submit" name="btn_submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</div>

<%@include file="./../layouts/footer.jsp" %>