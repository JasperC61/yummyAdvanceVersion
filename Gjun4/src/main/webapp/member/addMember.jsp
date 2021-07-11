<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../CSS/st1.css" rel="stylesheet" type="text/css">

</head>
<body>
<div class=header  size="10">
    <jsp:include page="/aa/title.jsp"/>
 </div>
<div class=nav></div>
<div class=content>
	<br>
	
	<form action="../addMemberController"  method="post"  class="form-horizontal" role="form">
	<div class="form-group">
	   <blockquote><label for="name">name :</label>
	   <div class="col-sm-10">
	<input type="text" class="form-control" name="name"> </blockquote>
	 </div>
	
	<div class="form-group">
	   <blockquote><label for="username">username :</label>
	   <div class="col-sm-10">
	<input type="text" class="form-control" name="username"> </blockquote>
	 </div>
	
	<div class="form-group">
	   <blockquote><label for="password">password :</label>
	   <div class="col-sm-10">
	<input type="text" class="form-control" name="password"> </blockquote>
	 </div>
	
	
	<div class="form-group">
	   <blockquote><label for="address">address :</label>
	   <div class="col-sm-10">
	<input type="text" class="form-control" name="address"> </blockquote>
	 </div>
	
    <div class="form-group">
	   <blockquote><label for="phone">phone :</label>
	   <div class="col-sm-10">
	<input type="text" class="form-control" name="phone"> </blockquote>
	 </div>
    
    <div class="form-group">
	   <blockquote><label for="mobile">mobile :</label>
	   <div class="col-sm-10">
	<input type="text" class="form-control" name="mobile"> </blockquote>
	 </div>
	 
    <blockquote><input  type="submit" value="ok"></blockquote>
	</form>
	</div>
</div>
<div class=footer  size="10">
<jsp:include page="/aa/end.jsp"/>
</body>
</html>