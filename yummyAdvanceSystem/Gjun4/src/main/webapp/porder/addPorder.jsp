<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Model.member"
    %>
 
 <%
  member m=(member)session.getAttribute("M");
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
	<form action="confirm.jsp" method="post">
	         <table width=650 align=center border=0>
	         <tr>
	             <td colspan=3>
	             <h3><%=m.getUsername() %> 請選購套餐</h3>
	             桌號:
	             <select name="desk">
	                <option values="A01">A01
	                <option values="A02">A02
	                <option values="B01">B01
	                <option values="B02">B02
	                <option values="C01">C01
	                <option values="C02">C02
	                
	             </select>
	         <tr>
	             <td colspan=3>
	             <hr>
	         <tr>
	             <td valign=top align=center>
	             <img alt="" src="pic/1.jpg"><br>$120 /per Set
	             
	             <td valign=top align=center>
	             <img alt="" src="pic/2.jpg"><br>$130 /per Set
	             
	             <td valign=top align=center>
	             <img alt="" src="pic/3.jpg"><br>$140 /per Set
	        
	         <tr>
	            <td colspan=3>
	            <hr>
	         <tr>
	             <td>A餐數量
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
	             <td>B餐數量
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
	             <td>C餐數量
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
	         <tr>
	             <td colspan=3>
	             <hr>
	         <tr>
	             <td colspan=3 align=center>
	             <input type="submit" value="ok">
	             <input type="reset" value="重設">
	         </table>
	    
	    </form>
	</div>
</div>
<div class=footer>

</div>
</body>
</html>