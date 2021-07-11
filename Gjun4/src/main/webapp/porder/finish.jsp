<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="Model.member"
     import="Model.porder"%>
     
 <%
 //將LoginController sessiom M及confirm.jsp session P帶入
 member m=(member)session.getAttribute("M");
 porder p=(porder)session.getAttribute("P");
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../CSS/st1.css" rel="stylesheet" type="text/css">

<!-- 列印功能JavaScript -->

<SCRIPT LANGUAGE="JavaScript">

<!-- This script and many more are available free online at -->
<!-- The JavaScript Source!! http://javascript.internet.com -->

<!-- Begin
function varitext(text){
text=document
print(text)
}
//  End -->
</script>




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
					
					<h3>購物完成</h3>
					<%=m.getUsername() %> 這是你的購物清單
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<td width=100>桌號
					<td align=center><%=p.getDesk() %>
				<tr>
					<td>A餐
					<td align=center><%=p.getA() %>
				<tr>
					<td>B餐
					<td align=center><%=p.getB() %>
				<tr>
					<td>C餐
					<td align=center><%=p.getC() %>
				<tr>
					<td colspan=2>
					<hr>
				<tr>
					<tr>
					<td colsapn=2 align=center>
					共:<%=p.getSum() %>元
			   <tr>
			  
			     <td colspan=2>
			     <hr>
			     
			   <tr>
			     <td align=center>
			     <a href="index.jsp">回首頁</a>
			     <td  align=center>
			     <DIV ALIGN="CENTER">
               <FORM>
                <INPUT NAME="print" TYPE="button" VALUE="列印此頁"ONCLICK="varitext()">
              </FORM>
                </DIV>
			     
			     
			</table>
	</div>
</div>
<div class=footer  size="10">
<jsp:include page="/aa/end.jsp"/>
</body>
</html>