<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<script type="text/javascript">
window.onload = () => {
	
	//JSON(Javascript Object Notation)
	btn.onclick = () => {
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false); //동기
		xhr.send();
		
		let alpha = JSON.parse(xhr.responseText);
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
	}
	
	btn100.onclick = () => {
		setInterval(()=> {
			let xhr = new XMLHttpRequest();
			xhr.open('GET', '/alpha', false); //동기
			xhr.send();
			let alpha = JSON.parse(xhr.responseText);
			
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
		}, 1000)
	}
}
</script>
</head>
<body>
<h1>Alpha Generator</h1>
<button id="btn">Ajax</button>
<button id="btn100">Ajax100</button>
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