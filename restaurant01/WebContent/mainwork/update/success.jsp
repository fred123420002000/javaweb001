<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/restaurant01/mystyle.css">
<head>
<meta charset="BIG5">
<title>修改成功</title>
</head>
<body>
	<table>
		<tr>
			<td><jsp:include page="/title.jsp" />
		<tr>
			<td>
				<table>
					<tr>
						<td colspan=4><h2>修改成功</h2>
						${resdao.update(id,res) }
					<tr>
						<td width=25%>訂單編號
						<td colspan=3>${id }
					<tr>
						<td>客戶名稱
						<td colspan=3>${res.getName() }
					<tr>
						<td>一號餐
						<td width=25%>${res.getProduct1() }
						<td width=25%>小計
						<td width=25%>${res.getProduct1()*100 }
					<tr>
						<td>二號餐
						<td>${res.getProduct2() }
						<td>小計
						<td>${res.getProduct2()*120 }
					<tr>
						<td>三號餐
						<td>${res.getProduct3() }
						<td>小計
						<td>${res.getProduct3()*150 }
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
			<button type="button" onclick="location.href='/restaurant01/index.jsp'">確定</button>
		<tr>
			<td><jsp:include page="/end.jsp" />
	</table>

</body>
</html>