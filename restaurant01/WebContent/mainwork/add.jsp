<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>�s�W�q��</title>
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
						<td>�m�W
						<td colspan=3><input type="text" name="res.name">
					<tr>
						<td width=10%>����
						<td width=30%>�@���\
						<td width=30%>�G���\
						<td width=30%>�T���\
					<tr>
						<td>
						<td><img width=100% alt="" src="../images/001.jpg">
						<td><img width=100% alt="" src="../images/002.jpg">
						<td><img width=100% alt="" src="../images/003.jpg">
					<tr>
						<td>���
						<td>100
						<td>120
						<td>150
					<tr>
						<td>�ƶq
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
						<td colspan=4>�|���馩:
						�O<input type="radio" name="res.memory" value="y">
						�_<input type="radio" name="res.memory" value="n" checked>
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