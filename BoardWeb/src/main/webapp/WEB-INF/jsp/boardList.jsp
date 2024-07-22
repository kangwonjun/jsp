<%@page import="com.yedam.commom.SearchVO"%>
<%@page import="com.yedam.commom.PageDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<h3>게시글목록(boardList.jsp)</h3>
<!-- 검색기능 -->
<div class="crnter">
 <form action="">
 	<div class="row">
 	 <div class="col-sm-4"> <!-- select 목록 -->
 	 <select name="searchCondition" class="form-control">
 	 <option value="">선택하세요</option>
 	 <option value="T">제목</option>
 	 <option value="TW">제목 & 작성자</option>
 	 </select>
 	</div>
 	<div class="col-sm-6">
	<input type="text" name="keyword" class="form-control"> 	
 	</div>
 	<div class="col-sm-2">
 	<input type="submit" value="조회" class="btn btn-primary">
 	</div>
 </form>
</div>
<!-- 검색기능 -->

<table border="2">
	<thead>
		<tr>
			<th>글번호</th>
			<th>제 목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr>
	</thead>
	<%
	String name = (String) request.getAttribute("myName");
		List<BoardVO> list = (List<BoardVO>) request.getAttribute("boardList");
		PageDTO paging = (PageDTO) request.getAttribute("paging");
		SearchVO searchVO = (SearchVO)request.getAttribute("search");
	%>
	<tbody>
		<%
		for (BoardVO board : list) {
		%>
		<tr>
			<td><%=board.getBoardNo()%></td>
			<td><a href="board.do?bno=<%=board.getBoardNo()%>"><%=board.getTitle()%></a></td>
			<td><%=board.getWriter()%></td>
			<td><%=board.getWriteDate()%></td>
		</tr>
		<%
		}
		%>
	</tbody>



</table>
<p><%=paging %></p>
<!-- 페이지 부분. -->
<nav aria-label="Page navigation example">
	<ul class="pagination">
		<% if (paging.isPrev()) { %>
		<li class="page-item"><a class="page-link" href="#"
			aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
		</a></li>
		<% } %>
		<!-- 페이지갯수만큼 . -->
		<%
			for(int p = paging.getStartpage(); p <= paging.getEndpage(); p++) {
			// paging.getpage() = p 같으면..	
			if(p == paging.getPage()){%>
		<li class="page-item ative"><a class="page-link"
			href="boardList.do?page=<%=p %>"><%=p %></a></li>
		<%
		}else{
		%>
		<li class="page-item"><a class="page-link"
			href="boardList.do?page=<%=p %>"><%=p %></a></li>
		   <% } %>
		<% } %>

		
		<li class="page-item"><a class="page-link"
			href="boardList.do?page=<%=p %>"><%=p %></a></li>
		   <% } %>
		<% } %>
		<!-- next 페이지. -->
		<% if (paging.isNext()) { %>
		<li class="page-item"><a class="page-link"
			href="boardList.do?searchcondition=<%=paging.getEndpage()+1  %>">
			aria-label="Next"> <span aria-hidden="true">&raquo;</span>
		</a></li>
		<% } %>
	</ul>
</nav>
<!-- 페이지 부분. -->
<%@ include file="../includes/footer.jsp"%>
&searchCondition=<%=SearchVO.getSearchsearchCondition() %>&keyword=<%=SearchVO.getKeyword()%>
