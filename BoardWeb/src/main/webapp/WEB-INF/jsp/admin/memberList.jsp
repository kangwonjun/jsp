<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>회원목록...</h3>
<table class="table table-dark table-hover">

<ul class="nav nav-pills">
  <li class="nav-item">
    <a class="nav-link active"  aria-current="page" href="#">사용자</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">관리자</a>
  </li>
  
  
	<thead>
		<tr>
			<th>#</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>권한</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="member" items="${members}" varStatus="stat">
			<tr>
				<th scope="row">${stat.count }</th>
				<td>${member.memberId}</td>				
				<td>${member.memberPw}</td>
				<td>${member.memberNm}</td>
				<td>${member.responsibility}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>