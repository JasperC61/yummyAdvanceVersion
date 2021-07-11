<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="CSS/st1.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class=header  size="10">
    <jsp:include page="aa/title.jsp"/>
 </div>

<div class=nav></div>

<div class=content>
     <br>
	    	
		
   <form action="LoginController" method="post" class="form-horizontal" role="form">
      <div class="form-group">
         <blockquote><label for="username">username :</label>
         <div class="col-sm-10">
          <input type="text" class="form-control" name="username"> </blockquote>
      </div>

  
      <div class="form-group">
       <blockquote><label for="password">password :</label>
       <div class="col-sm-10">
        <input type="text" class="form-control" name="password"></blockquote>
      </div>
      <blockquote><input  type="submit" value="ok"></blockquote>
  </div>
  


<div class=footer  size="10">
<jsp:include page="aa/end.jsp"/>
</div>
</body>
</html>