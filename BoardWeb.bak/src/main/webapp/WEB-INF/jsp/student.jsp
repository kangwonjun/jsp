<%@page import="com.yedam.commom.DataSource"%>
<%@page import="com.yedam.vo.StudentVO"%>
<%@page import="com.yedam.mapper.StudentMapper"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
	String sno = request.getParameter("sno"); //?sno=s2024-05
	StudentVO std = mapper.selectOne(sno);
	%>

	<h3>학생정보보기</h3>
	<table border="2">
		<tr>
			<th>학생번호</th>
			<td><%=std.getStdNo()%></td>
		</tr>
		<tr>
			<th>이름</th>
			<td><%=std.getStdName()%></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><%=std.getStdPhone()%></td>
		</tr>
		<tr>
			<th>주소</th>
			<td><%=std.getAddress()%></td>
		</tr>
	</table>



</body>
</html>