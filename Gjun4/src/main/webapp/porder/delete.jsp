<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="Dao.porderDao"
    %>
    
    
<%   String ID=request.getParameter("ID");
     if(ID!=null && ID!="")
     {
    	 new porderDao().delete(Integer.parseInt(ID));
     }
%>
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
	<div>
	<table width=600 align=center border=0>
					<tr>
						<td colspan=6 align=center>
						<h3>訂單資料刪除</h3>
						<!--  自己傳到自己的畫面-->
						<form action="delete.jsp" method="post">
						ID:
						<input type="text" name="ID" size=5>
						<input type="submit" value="ok">							
						
						</form>				
					
					
					<tr>
						<td colspan=6><hr>
					
					<tr>
						<td>ID<td>桌號<td>A餐<td>B餐<td>C餐<td>金額
					<tr>
						<td colspan=6><hr>
						
						<!--  如果沒輸入刪除資料用queryAll()方法,就調閱原本的資料-->
						 <%=porderDao.QueryAll() %>			
					<tr>
						<td colspan=6><hr>
					
					<tr><td>
					<tr>
						<td colspan=6 align=center>
						<a href="index.jsp">回首頁</a>
				</table>	
	
	</div>
</div>
<div class=footer  size="10">
<jsp:include page="/aa/end.jsp"/>
</body>
</html>