<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>訂單確認</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
				<table>
					<tr>
						<td width=25%>客戶名稱
						<td colspan=3>${res.getName() }
					<tr>
						<td>一號餐
						<td width=25%>${res.getProduct1() }
						<td width=25%>小計
						<td width=25%>${res.getProduct1()*100 }
					<tr>
						<td>二號餐
						<td width=25%>${res.getProduct2() }
						<td width=25%>小計
						<td width=25%>${res.getProduct2()*120 }
					<tr>
						<td>三號餐
						<td width=25%>${res.getProduct3() }
						<td width=25%>小計
						<td width=25%>${res.getProduct3()*150 }
					<tr>
						<td>會員
						<td colspan=3>${res.getMemory() }
					<tr>
						<td>總計
						<td colspan=3>${res.getSum() }
					<tr>
						<td>訂單時間
						<td colspan=3>${res.getOrderdate() }
				</table>
		<tr>
			<td>
			<table>
			<tr><td>包廂(10%服務費)<td>雅座(5%服務費)<td>外帶(5%折扣)
			<tr><td>${tack[0] }<td>${tack[1] }<td>${tack[2] }
			</table>
		<tr>
			<td>
			<a href="add/success.jsp">確定</a>
			<a href="add.jsp">重新設定</a>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>


</body>
</html>