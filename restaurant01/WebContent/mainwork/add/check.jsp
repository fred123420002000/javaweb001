<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>�q��T�{</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
				<table>
					<tr>
						<td width=25%>�Ȥ�W��
						<td colspan=3>${res.getName() }
					<tr>
						<td>�@���\
						<td width=25%>${res.getProduct1() }
						<td width=25%>�p�p
						<td width=25%>${res.getProduct1()*100 }
					<tr>
						<td>�G���\
						<td width=25%>${res.getProduct2() }
						<td width=25%>�p�p
						<td width=25%>${res.getProduct2()*120 }
					<tr>
						<td>�T���\
						<td width=25%>${res.getProduct3() }
						<td width=25%>�p�p
						<td width=25%>${res.getProduct3()*150 }
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
			<table>
			<tr><td>�]�[(10%�A�ȶO)<td>���y(5%�A�ȶO)<td>�~�a(5%�馩)
			<tr><td>${tack[0] }<td>${tack[1] }<td>${tack[2] }
			</table>
		<tr>
			<td>
			<a href="add/success.jsp">�T�w</a>
			<a href="add.jsp">���s�]�w</a>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>


</body>
</html>