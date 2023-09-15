<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pseudo3.jsp</title>
<style type="text/css">
:first-child {
	border: 1px solid purple;
}

:last-child {
	border: 2px dotted blue;
}

li:nth-child(2n) {
	text-decoration: line-through;
}

li:nth-last-child(3n+1) {
	background: orange;
}

div > :nth-child(2n+1) {
	text-decoration: overline;
}
</style>
<script type="text/javascript">

</script>
</head>
<body>
<h1>구조 선택자 :first-of-child :last-of-child :nth-of-child</h1>
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