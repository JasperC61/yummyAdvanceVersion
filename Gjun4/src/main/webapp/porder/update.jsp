<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.porder"
    import="Dao.porderDao"
    %>
    
<%
//接收自己網頁給的值(ID)
String ID=request.getParameter("ID");

//如果輸入的不是null或非空字串就啟用query(Integer.parseInt(ID)方法
if(ID!=null && ID!="") 
	{	//抓出資料並轉型
		porder p=(porder)new porderDao().query(Integer.parseInt(ID));
	    //import="Mode.porder,透過porder方法取抓update.jsp<select name="desk">中desk
		p.setDesk(request.getParameter("desk"));
	    p.setA(Integer.parseInt(request.getParameter("A")));
		p.setB(Integer.parseInt(request.getParameter("B")));
		p.setC(Integer.parseInt(request.getParameter("C")));
		p.getSum();
		//透過porderDao()調用update()方法更改資料庫資料
		new porderDao().update(p);
	
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
						<h3>訂單資料修改</h3>
						<!--  自己傳到自己的畫面-->
						<form action="update.jsp" method="post">
						ID:<input type="text" name="ID" size=5>
						桌號:
						<select name="desk">
							<option values="A01">A01
							<option values="A02">A02
							<option values="B01">B01
							<option values="B02">B02
							<option values="C01">C01
							<option values="C02">C02
						</select>
						A餐數量
						<select name="A">
							<option values="1">1
							<option values="2">2
							<option values="3">3
							<option values="4">4
							<option values="5">5
							<option values="6">6
							<option values="7">7
							<option values="8">8
							<option values="9">9
							<option values="0">0
						</select>
						B餐數量
						<select name="B">
							<option values="1">1
							<option values="2">2
							<option values="3">3
							<option values="4">4
							<option values="5">5
							<option values="6">6
							<option values="7">7
							<option values="8">8
							<option values="9">9
							<option values="0">0
						</select>
						C餐數量
						<select name="C">
							<option values="1">1
							<option values="2">2
							<option values="3">3
							<option values="4">4
							<option values="5">5
							<option values="6">6
							<option values="7">7
							<option values="8">8
							<option values="9">9
							<option values="0">0
						</select>
						<input type="submit" value="ok">
						
						</form>				
					
					
					<tr>
						<td colspan=6><hr>
					
					<tr>
						<td>ID<td>桌號<td>A餐<td>B餐<td>C餐<td>金額
					<tr>
						<td colspan=6><hr>
						
						<!--  如果沒輸入資料用QueryAll()方法,就調閱原本的資料-->
						 <%=new porderDao().QueryAll() %>			
					<tr>
						<td colspan=6><hr>
				    <tr>
				    <td>
				    <tr>
				    <td>
					<tr>
						<td colspan=6 align=center>
						<a href="index.jsp">回首頁</a>
				</table>	
			
	</div>
</div>
<div class=footer  size="10">

</body>
</html>