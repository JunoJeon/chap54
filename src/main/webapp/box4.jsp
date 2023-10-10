<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">
header > div {
 	margin: 10px; 
	
 	border: 20px solid red; 
	border-width: 20px;
	border-style: dotted;
	border-color: maroon;
	
	border-top: 10px solid blue;
	border-top-width: 20px;
	border-top-style: dotted;
	border-top-color: red;
	
	border-bottom: 10px solid black;
	border-bottom-width: 20px;
	border-bottom-style: dotted;
	
	
	padding: 10px;
	
	width: 100px;
	height: 100px;
	
	background: url('/media/slime.png');
}

header {
	border: 1px solid red;
}
</style>
<script type="text/javascript">
window.onload = function() {
	
	let divs = document.querySelectorAll("header > div");
	
	divs.forEach(function(div) {
		div.onmousedown = function(e) {
			let clientWidth = 0;
			let offsetWidth = 0;
			
			let style = getComputedStyle(div);
			clientWidth = style.paddingLeft + style.width + style.paddingRight;
			console.log(`clientWidth = \${clientWidth} : parseInt(style.paddingLeft) + parseInt(style.paddingRight)`);
			console.log(`clientWidth = \${div.clientWidth} : div.clientWidth`);
		
			offsetWidth = parseInt(style.borderLeftWidth) + clientWidth + parseInt(style.borderRightWidth);
			console.log();
			
			e.preventDefault();
		}
	});
	
}

</script>
<style type="text/css">
header ~ div {
	margin: 20px;
	padding: 0px;
	width: 100px;
	height: 100px;
	background: red;
}
</style>
</head>
<body>
<header>
<div>box1</div>
<div>box2</div>
<div>box3</div>
</header>
<hr>
<div>box4</div>
<div>box5</div>
</body>
</html>