<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List OTO</title>
</head>
<body>
	<table border=1>
		<thead>
			<tr>
				<th>Ma Xe</th>
				<th>Bien Kiem Soat</th>
				<th>Ten Xe</th>
				<th>Nam San Xuat</th>
				<th>Hang San Xuat</th>
				<th>Bao Hiem</th>
				<th>Ghi Chu</th>
				<th colspan=3>Thao Tac</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${otos}" var="oto">
				<tr>
					<td><c:out value="${oto.maXe}" /></td>
					<td><c:out value="${oto.bienKiemSoat}" /></td>
					<td><c:out value="${oto.tenXe}" /></td>
					<td><fmt:formatDate pattern="dd-MM-yyyy" value="${oto.namSanXuat}" /></td>
					<td><c:out value="${oto.hangSanXuat}" /></td>
					<td><c:out value="${oto.baoHiem}" /></td>
					<td><c:out value="${oto.ghiChu}" /></td>
					<td><button onclick="location.href='OtoController?action=detail&maXe=<c:out value="${oto.maXe}"/>'">Chi Tiet</button></td>
					<td><button onclick="location.href='OtoController?action=update&maXe=<c:out value="${oto.maXe}"/>'">Cap Nhat</button></td>
					<td><button onclick="location.href='OtoController?action=delete&maXe=<c:out value="${oto.maXe}"/>'">Xoa</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<button onclick="location.href='OtoController?action=insert'">Them Bai Viet</button>
	</p>
	<p>
		<a href="/Ex07/OtoController?action=otoListDoiMoi">Xe đời mới</a> : &rsaquo;= 2005 | Ghi chú: Thiết bị định vị <br />
		<a href="/Ex07/OtoController?action=otoListDoiTrung">Xe đời trung</a> : 1996 - 2004 | Ghi chú: Tay lái trợ lực <br />
		<a href="/Ex07/OtoController?action=otoListDoiCu">Xe đời cũ</a> : &lsaquo;= 1995 | Ghi chú: Số năm đã lưu hành <br />
	</p>
</body>
</html>