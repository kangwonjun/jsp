<%@page import="com.yedam.vo.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BoardVO board =(BoardVO)request.getAttribute("board");
%>
<h3>수정화면</h3>
<input type="hidden" name="boardNo" value="<%=board.getBoardNo()%>">

<form action="modifyboard.do">
	<table class="table">
		<tr>
			<th>글번호</th>
			<td><%=board.getBoardNo()%></td>
			<th>조회수</th>
			<td><%=board.getViewCnt()%></td>
		</tr>

		<tr>
			<th>제목</th>
			<td colspan="3"><%=board.getTitle()%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3"><%=board.getContent()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td colspan="3"><%=board.getWriter()%></td>
		</tr>
		<tr>
			
			<td colspan="4" align="center">
			<input class="btn btn-danger" type="submit" value="수정">
			<button class="btn btn-warning" type="button">취소</button></td>
		</tr>

	</table>
</form>
