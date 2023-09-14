<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>decentant.jsp</title>
<style type="text/css">
body > div > div {
	border: 1px solid red;
}

div div[id] {
	text-decoration: line-through;
}

div div[id^='b'] {
	font-size: 2em;
}

div div[id^='box'] {
	color: magenta; 
}
</style>

<script type="text/javascript">

</script>
</head>
<body>

<h2>후손, 자손 선택자</h2>
<hr>
<div>
	<div>box1</div>
	<div>
		<div id="box11">box11</div>
		<div id="box12">box12</div>
	</div>
	
	<div>box2</div>
	<header>
		<div id="b21">box21</div>
		<div id="b22">box22</div>
		<div id="b23">box23</div>
	</header>
</div>
</body>
</html>