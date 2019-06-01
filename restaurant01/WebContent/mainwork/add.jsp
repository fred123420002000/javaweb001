<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>新增訂單</title>
</head>
<body>
<form action="orderaction" method="post">
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
				<table>
					<tr>
						<td>姓名
						<td colspan=3><input type="text" name="res.name">
					<tr>
						<td width=10%>項目
						<td width=30%>一號餐
						<td width=30%>二號餐
						<td width=30%>三號餐
					<tr>
						<td>
						<td><img width=100% alt="" src="../images/001.jpg">
						<td><img width=100% alt="" src="../images/002.jpg">
						<td><img width=100% alt="" src="../images/003.jpg">
					<tr>
						<td>單價
						<td>100
						<td>120
						<td>150
					<tr>
						<td>數量
						<td><select name="res.product1">
								<option value="0" selected>0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
						</select>
						<td><select name="res.product2">
								<option value="0" selected>0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
						</select>
						<td><select name="res.product3">
								<option value="0" selected>0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
						</select>
					<tr>
						<td colspan=4>會員折扣:
						是<input type="radio" name="res.memory" value="y">
						否<input type="radio" name="res.memory" value="n" checked>
					<tr>
						<td colspan=4>
						<input type="submit" value="OK"> 
				</table>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>
</form>
</body>
</html>