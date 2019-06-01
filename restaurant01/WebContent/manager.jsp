<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>管理介面登入</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>請輸入帳號密碼
		<tr>
			<td><form action="loginaction" method="post">
					<table>
						<tr>
							<td>帳號<input type="text" name="login.name">
						<tr>
							<td>密碼<input type="password" name="login.password">
						<tr>
							<td><input type="submit" value="OK">
					</table>
				</form>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>
</body>
</html>