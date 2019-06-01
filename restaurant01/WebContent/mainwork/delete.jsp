<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>刪除訂單</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
				<table>
					<tr>
						<td colspan=4><h2>搜尋訂單</h2>
					<tr>
						<td width=25%>訂單編號
						<td colspan=3>
							<form action="deleteaction" method="post">
								<input type="text" name="id" value="0">
								<input type="submit" value="確定">
							</form>
				</table>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>

</body>
</html>