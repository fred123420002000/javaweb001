<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@page import="com.dao.queryby,java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>訂單資料</title>
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
							<td>訂單編號
							<td>客戶名稱
							<td>會員
							<td>總價大於
						<tr>
							<td><input type="text" name="id" value="0">
							<td><input type="text" name="name" value="">
							<td>有<input type="radio" name="memory" value="y"> 
							無 <input type="radio" name="memory" value="n">
							<td><input type="text" name="sum" value="0">
						<tr>
							<td colspan=4><input type="submit" value="OK">
					</table>
				</form>
		<tr>
			<td>
				<table>
					<tr>
						<td>訂單編號
						<td>客戶名稱
						<td>一號餐
						<td>二號餐
						<td>三號餐
						<td>會員
						<td>總計
						<td>訂單時間
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