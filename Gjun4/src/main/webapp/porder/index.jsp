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
<div class=content><br>
	<div>
	 <blockquote><table width=450 align=left  border=0>
		  <tr>
		  <td><a href="addPorder.jsp">*新增</a>
		  <tr>
		  <td><a href="query.jsp">*查詢</a>
		  <tr>
		  <td><a href="update.jsp">*修改</a>
		  <tr>
		  <td><a href="delete.jsp">*刪除</a>

	  </table></blockquote>
	</div>
</div>
<div class=footer  size="10">
<jsp:include page="/aa/end.jsp"/>
</body>
</html>