<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@page import="com.dao.queryby,java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>�q����</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/WEB-INF/manager/title.jsp" />
		<tr>
			<td>
				<form action="managerqueryaction" method="post">
					<table>
						<tr>
							<td>�q��s��
							<td>�Ȥ�W��
							<td>�|��
							<td>�`���j��
						<tr>
							<td><input type="text" name="id" value="0">
							<td><input type="text" name="name" value="">
							<td>��<input type="radio" name="memory" value="y"> 
							�L <input type="radio" name="memory" value="n">
							<td><input type="text" name="sum" value="0">
						<tr>
							<td colspan=4><input type="submit" value="OK">
					</table>
				</form>
		<tr>
			<td>
				<table>
					<tr>
						<td>�q��s��
						<td>�Ȥ�W��
						<td>�@���\
						<td>�G���\
						<td>�T���\
						<td>�|��
						<td>�`�p
						<td>�q��ɶ�
					<tr>
						<td>${res.getId() }
						<td>${res.getName() }
						<td>${res.getProduct1() }
						<td>${res.getProduct2() }
						<td>${res.getProduct3() }
						<td>${res.getMemory() }
						<td>${res.getSum() }
						<td>${res.getOrderdate() }
						<%
						try{
							ResultSet rs = queryby.queryby(
									Integer.valueOf(session.getAttribute("id").toString()), 
									session.getAttribute("name").toString(),
									session.getAttribute("memory").toString(), 
									Integer.valueOf(session.getAttribute("sum").toString()));
							while (rs.next()) {
								out.print("<tr>");
								for (int i = 1; i <= 8; i++) {
									out.print("<td>" + rs.getObject(i));
								}
							}
						}catch(NullPointerException | NumberFormatException e){}
						session.invalidate();
						%>
				</table>
		<tr>
			<td><jsp:include page="/WEB-INF/manager/end.jsp" />
	</table>
</body>
</html>
<body>

</body>
</html>