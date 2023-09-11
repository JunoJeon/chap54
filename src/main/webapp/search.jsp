<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search.jsp</title>
</head>
<body>
<select>
	<option>java backend</option>
	<option>python backend</option>
	<option>html backend</option>
	<option>css backend</option>
	<option>node backend</option>
</select>
<hr>
<input type="search" list="lang">
<datalist id = "lang">
	<option value = "java">java backend</option>
	<option value = "python">python backend</option>
	<option value = "html">html backend</option>
	<option value = "css">css backend</option>
	<option value = "node">node backend</option>
</datalist>
</body>
</html>