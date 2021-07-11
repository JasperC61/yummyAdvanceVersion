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
      <blockquote><h2>無此帳號,登入失敗</h2>
    <a href="addMember.jsp">註冊新帳號</a></blockquote>
    
    </div>
  </div>
<div class=footer  size="10">
<jsp:include page="/aa/end.jsp"/>
</body>
</html>