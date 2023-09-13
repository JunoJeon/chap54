<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<style type="text/css">
table {
	font-family: monospace;
	font-size: 25px;
}
</style>
<script type="text/javascript">
window.onload = () => {
	
	//JSON(Javascript Object Notation)
	function sync() {
		abtn.disabled = true;
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false); //동기
		xhr.send();
		
		let alpha = JSON.parse(xhr.responseText);
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		abtn.disabled = false;
	}
	
	function async() {
		abtn.disabled = true;
		let xhr = new XMLHttpRequest();
		xhr.onload = (e) => {
			let alpha = JSON.parse(xhr.responseText);
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
			abtn.disabled = false;
		}
		xhr.open('GET', '/alpha'); //비동기
		xhr.send();
	}
	
	btn.onclick = sync;
	abtn.onclick = async;
	
	setInterval(() => {
		let cnt = no.innerText;
		no.innerText = ++cnt;
	}, 500)
	
// 	btn100.onclick = () => {
// 		setInterval(()=> {
// 			let xhr = new XMLHttpRequest();
// 			xhr.open('GET', '/alpha', false); //동기
// 			xhr.send();
// 			let alpha = JSON.parse(xhr.responseText);
			
// 			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
// 			td.style.color = alpha.fg;
// 			td.style.background = alpha.bg;
// 			td.innerText = alpha.ch;
// 		}, 500)
// 	}
	
}
</script>
</head>
<body>
<h1>Alpha Generator</h1>
<hr>
<button id="btn">Ajax</button>
<button id="abtn">Ajax(a)</button>
<span id="no">0</span>
<hr>
<table id="surface">
	<tbody>
	<c:forEach var="row" items="${surface}">
		<tr>
		<c:forEach var="a" items="${row}">
			<td style="color:black; background:black;">${a.ch}</td>
		</c:forEach>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>