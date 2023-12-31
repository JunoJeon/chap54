<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list2.jsp</title>
</head>
<body>
<h1>City List2</h1>
<hr>
<form action="/city/list">
	<input name ="code" value="${param.code}" type="search" list="codes">
	<datalist id="codes">
		<c:forEach var="m" items="${codes}">
			<option value="${m.code}">[${m.code}] ${m.name}</option>
		</c:forEach>
	</datalist>
	<input type="submit" value="도시검색">
</form>
<hr>
<table border = "1" width = "900">
	<thead>
		<tr>
			<th>no</th>
			<th>Id</th>
			<th>Name</th>
			<th>CountryCode</th>
			<th>District</th>
			<th>Population</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="city" items="${list}" varStatus="status">
			<tr>
				<td>${status.count}</td>
				<td>${city.id}</td>
				<td>${city.name}</td>
				<td>${city.countryCode}</td>
				<td>${city.district}</td>
				<td>${city.population}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>