<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>actionForm.jsp</title>
</head>
<body>
  <h3>액션태그연습.</h3>
  <%
  	request.setAttribute("myName", "홍길동");
  %>
  
  
  <h3>Jsp Standard Tag Library & Expression Language</h3>
  <p>${10 +4 }</p>
  <p>${10 > 20 }</p>
  <p>${'Hello' += 'would' }</p>
  <p>${10 > 5 ? '참' : '거짓' }</p>
  <p>이름은 ${myName }</p>
</body>
</html>