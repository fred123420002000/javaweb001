<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>�ק�q��</title>
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
							<td>�m�W
							<td colspan=3><input type="text" name="res.name">
						<tr>
							<td width=10%>����
							<td width=30%>�@���\
							<td width=30%>�G���\
							<td width=30%>�T���\
						<tr>
							<td>
							<td><img width=100% alt=""
								src="/restaurant01/images/001.jpg">
							<td><img width=100% alt=""
								src="/restaurant01/images/002.jpg">
							<td><img width=100% alt=""
								src="/restaurant01/images/003.jpg">
						<tr>
							<td>���
							<td>100
							<td>120
							<td>150
						<tr>
							<td>�ƶq
							<td><input type="text" name="res.product1">
							<td><input type="text" name="res.product2">
							<td><input type="text" name="res.product3"> </select>
						<tr>
							<td colspan=4>�|���馩: <input type="hidden" name="manager"
								value="login"> �O<input type="radio" name="res.memory"
								value="y"> �_<input type="radio" name="res.memory"
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