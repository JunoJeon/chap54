<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo4.jsp</title>
<style type="text/css">
:first-of-type {
	border: 1px solid red;
}

li:first-of-type {
	background: red;
}

li:last-of-type {
	background: blue;
}

div > :first-of-type {
	background: red;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>구조 선택자 :first-of-type :last-of-type :nth-of-type(n)</h1>
<hr>
<ol>
 	<li>java</li>
 	<li>python</li>
 	<li>c/c++</li>
 	<li>html</li>
 	<li>css</li>
 	<li>javascript</li>
 	<li>sql</li>
</ol>
<hr>
<div>
	<p>java</p>
	<h1>python</h1>
	<header>c/c++</header>
	<p>html</p>
	<p>css</p>
	<header>javascript</header>
	<h1>sql</h1>
</div>
<hr>

</body>
</html>