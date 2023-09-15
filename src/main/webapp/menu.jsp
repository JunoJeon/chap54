<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu.jsp</title>
<style type="text/css">
ul {
	list-style: none;
}

li {
	border: 1px solid white;
	padding: 10px;
	width: 100px;
}

li > a{
	text-decoration: none;
}

li:first-child {
	border-radius: 10px 50px 0px 0px;
}

li:nth-child(2n) {
	color: white;
	background: purple;
}

li:nth-child(2n+1) {
	background: silver;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
 <ul>
 	<li><a href = "/alpha/generator">ALPHA</li>
 	<li><a href = "/alpha/rect">RECT</li>
 	<li>DEPT</li>
 	<li>EMP</li>
 	<li>SALGRADE</li>
 	<li>CITY</li>
 	<li>COUNTRY</li>
 	<li>LANGUAGE</li>
 </ul>
</body>
</html>