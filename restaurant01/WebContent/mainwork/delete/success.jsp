<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>已成功刪除訂單</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
			${resdao.delete(id) }
			<h2>已刪除${id}號訂單</h2>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>
</body>
</html>