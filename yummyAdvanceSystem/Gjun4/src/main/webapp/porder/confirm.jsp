<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    
    import="Model.porder"
    import="Model.member" %>
    
 <%
member m=(member)session.getAttribute("M");
//從addPorder.jsp接收desk,A,B,C為字串格式需符合Model.porder格式才能用其方法
String Desk=request.getParameter("desk");
//轉型
int A=Integer.parseInt(request.getParameter("A"));
int B=Integer.parseInt(request.getParameter("B"));
int C=Integer.parseInt(request.getParameter("C"));

//此生命週期不會跨頁到finish.jsp
//此筆訂單就需要新增(new)出來,因為用到Model.porder方法
porder p=new porder(Desk,A,B,C); 
//session把p打包帶到不同頁面去,變成可以跨網頁的生命週期(區域變全域)
session.setAttribute("P", p);//session P=p 
 
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
	<table width=500 align=center border=0>
				<tr>
					<td colspan=2 align=center>
					<h3><%=m.getUsername() %> 這是你的訂單細目
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<td width=100>桌號
					<td align=center><%=p.getDesk() %><!--此筆訂單就需要新增(new)出來,因為用到Model.porder方法,此時資料呈現在網頁端finish.jsp-->
				<tr>
					<td>A餐
					<td align=center><%=p.getA() %><!--此筆訂單就需要新增(new)出來,因為用到Model.porder方法-->
				<tr>
					<td>B餐
					<td align=center><%=p.getB() %><!--此筆訂單就需要新增(new)出來,因為用到Model.porder方法-->
				<tr>
					<td>C餐
					<td align=center><%=p.getC() %><!--此筆訂單就需要新增(new)出來,因為用到Model.porder方法-->
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<tr>
					<td colsapn=2 align=center>
					共:<%=p.getSum() %>元<!--此筆訂單就需要新增(new)出來,因為用到Model.porder方法-->
			   <tr>
			  
			     <td colspan=2>
			     <hr>
			     
			   <tr>
			     <td colspan=2  align=center>
			     <!-- 跑到上一層,在往下找 -->
			     <a href="../addPorderController">確定</a>
			     
			     
			</table>
			
	
	</div>
</div>
<div class=footer  size="10">
<jsp:include page="/aa/end.jsp"/>
</body>
</html>