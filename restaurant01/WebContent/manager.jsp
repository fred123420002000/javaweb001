<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>�޲z�����n�J</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>�п�J�b���K�X
		<tr>
			<td><form action="loginaction" method="post">
					<table>
						<tr>
							<td>�b��<input type="text" name="login.name">
						<tr>
							<td>�K�X<input type="password" name="login.password">
						<tr>
							<td><input type="submit" value="OK">
					</table>
				</form>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>
</body>
</html>