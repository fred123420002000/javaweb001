<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>�q��d��</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
				<table>
					<tr>
						<td width=25%>�q��s���d��
						<td colspan=3>
							<form action="queryaction" method="post">
								<input type="text" name="id" value="0">
								<input type="submit" value="�d��">
							</form>
					<tr>
						<td>�q��s��
						<td colspan=3>${res.getId() }
					<tr>
						<td>�Ȥ�W��
						<td colspan=3>${res.getName() }
					<tr>
						<td>�@���\
						<td width=25%>${res.getProduct1() }
						<td width=25%>�p�p
						<td width=25%>${res.getProduct1()*100 }
					<tr>
						<td>�G���\
						<td>${res.getProduct2() }
						<td>�p�p
						<td>${res.getProduct2()*120 }
					<tr>
						<td>�T���\
						<td>${res.getProduct3() }
						<td>�p�p
						<td>${res.getProduct3()*150 }
					<tr>
						<td>�|��
						<td colspan=3>${res.getMemory() }
					<tr>
						<td>�`�p
						<td colspan=3>${res.getSum() }
					<tr>
						<td>�q��ɶ�
						<td colspan=3>${res.getOrderdate() }
				</table>
		<tr>
			<td>
				<button type="button"
					onclick="location.href='/restaurant01/index.jsp'">�T�w</button>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>

</body>
</html>