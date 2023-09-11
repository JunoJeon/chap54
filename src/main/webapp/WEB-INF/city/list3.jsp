<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list3.jsp</title>
<script type="text/javascript">
window.onload = () => {
	population.oninput = function(e) {
		let value = e.target.value;
		pop_value.innerText = value.toLocaleString;
		
	}
	pop_value.innerText = parseInt(population.value).toLocaleString;
}
</script>
</head>
<body>
<h1>City List3</h1>
<hr>
<form action="/city/list">
<fieldset>
	<legend>code</legend>
	<input name ="code" value="${param.code}" type="search" list="codes">
	<datalist id="codes">
		<c:forEach var="m" items="${codes}">
			<option value="${m.code}">[${m.code}] ${m.name}</option>
		</c:forEach>
	</datalist>
</fieldset>
<fieldset>
	<legend>population</legend>
	<input id="population" name="population" value="${empty param.population ? 0 : param.population}" type="range" min="0" max="10000000" step="100000">
	<label><span  id="pop_value"></span>이상</label>
</fieldset>
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