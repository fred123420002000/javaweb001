<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>修改訂單</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/WEB-INF/manager/title.jsp" />
		<tr>
			<td>
				<form action="updateaction" method="post">
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
							<td><img width=100% alt=""
								src="/restaurant01/images/001.jpg">
							<td><img width=100% alt=""
								src="/restaurant01/images/002.jpg">
							<td><img width=100% alt=""
								src="/restaurant01/images/003.jpg">
						<tr>
							<td>單價
							<td>100
							<td>120
							<td>150
						<tr>
							<td>數量
							<td><input type="text" name="res.product1">
							<td><input type="text" name="res.product2">
							<td><input type="text" name="res.product3"> </select>
						<tr>
							<td colspan=4>會員折扣: <input type="hidden" name="manager"
								value="login"> 是<input type="radio" name="res.memory"
								value="y"> 否<input type="radio" name="res.memory"
								value="n" checked>
						<tr>
							<td colspan=4><input type="submit" value="OK">
					</table>
				</form>
		<tr>
			<td><jsp:include page="/WEB-INF/manager/end.jsp" />
	</table>
</body>
</html>