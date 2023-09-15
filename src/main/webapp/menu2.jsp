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
	width: 1000px;
}

li {
	border: 1px solid white;
	padding: 10px;
	width: 100px;
	text-align: center;
	
	float:left;
}

li > a {
	text-decoration: none;
}


li:nth-child(2n) {
	color: white;
	background: purple;
}

li:nth-child(2n+1) {
	background: silver;
}

li:first-child { 
	border-radius: 10px 50px 0px 0px; 
}

li:last-child {
	border-radius: 0px 0px 50px 10px; 
} 

body {
	border: 5px solid blue;
}

a:link {
	color: black;
	font-size: 1.2em;
}

a:visited {
	color: black;
}

p::first-letter, li::first-letter {
	font-size: 2em;
	color: blue;
}

p::first-line {
	text-decoration: overline;
	font-size: 1.5em;
}
p::selection {
	color: red;
	text-decoration: line-through;
}

li::before {
	content: "^";
	
}

li::after {
	content: "/";
}

p::after {
	content: "";
	background: url(/media/pavicon.png)	
}

</style>
<script type="text/javascript">

</script>
</head>
<body>
<ul>
	<li><a href = "/alpha/generator">Alpha</a></li>
	<li><a href = "/alpha/rect">Rect</a></li>
	<li><a href = "dept/list">Dept</a></li>
	<li><a href = "emp/list">Emp</a></li>
	<li><a href = "salgrade/list">Salgrade</a></li>
	<li><a href = "city/list">City</a></li>
	<li><a href = "country/list">Country</a></li>
	<li><a href = "language/list">Language</a></li>
</ul>
<hr>
<div style="width: 100px; height: 100px; border: 1px solid red;">box1</div>
<div style="width: 100pt; height: 100pt; border: 1px solid red;">box2</div>
<div style="width: 80%; height: 80%; border: 1px solid red;">box3</div>
<hr>

<p>
	Hello Alpha
</p>

<p>
	Today’s special moments are tomorrow’s memories.
	Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it. 
</p>

<p>
</p>
</body>
</html>