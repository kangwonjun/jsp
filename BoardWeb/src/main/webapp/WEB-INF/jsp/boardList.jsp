<%@page import="com.yedam.commom.SearchVO"%>
<%@page import="com.yedam.commom.PageDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ include file="../includes/header.jsp"%>
<h3>게시글목록(boardList.jsp)</h3>
<!-- 검색기능 -->
<div class="center">
 <form action="">
 	<div class="row">
 	 <div class="col-sm-4"> <!-- select 목록 -->
 	 <select name="searchCondition" class="form-control">
 	 <option value="">선택하세요</option>
 	 <option value="T"${searchCondition == 'T' ? 'selected' :'' }>제목</option>
 	 <option value="W"${searchCondition == 'W' ? 'selected' :'' }>작성자</option> 
 	 <option value="TW"${searchCondition == 'TW' ? 'selected' :'' }>제목 & 작성자</option>
 	 </select>
 	</div>
 	<div class="col-sm-6">
	<input type="text" name="keyword" value="${keyword }" class="form-control"> 	
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
		//추가 속성을 받아온다.
		
	%>
	<tbody>
		<c:forEach var="board" items="${boardList }">
		<tr>
			<td>${board.boardNo }</td>
			<td><a href="board.do?page=${paging.page}&bno=${board.boardNo }">${board.title }</a></td>
			<td>${board.writer }</td>
			<td>${board.writeDate }</td>
		</tr>
		</c:forEach>
		
	</tbody>



</table>
<p>${paging }</p>
<!-- 페이지 부분. -->
<nav aria-label="Page navigation example">
	<ul class="pagination justfy-content-center">
	  <!-- prev 페이지 -->
	  <c:if test="${paging.prev }">
	  <li class="page-item">
	  	<a class="page-link" href="boardList.do?searchCondition=${searchCondition } %keyword=${keyword }&page=${paging.startpage-1 } "aria-label="Previous">  
				<span aria-hidden="true">&laquo;</span>
     	</a>
      </li>
	  </c:if>
		<!-- 페이지갯수만큼 링크생성 . -->
		<c:forEach var ="p" begin="${paging.startpage }" end="${paging.endpage }">
			<c:choose>
				<c:when test="${paging.page ==p }">
			  		<li class="page-item ative" aria-current="page">
						<span class="page-link">${p }</span>
			  		</li>
		    	</c:when>
		    	<c:otherwise>
		      		<li class="page-item"><a class="page-link"
			   			href="boardList.do?searchCondition==${searchCondition }${p}</a></li>
		    	</c:otherwise>
		    </c:choose>
		</c:forEach>
	
		<!-- next 페이지. -->

		<c:if test="${paging.next }">
		   <li class="page-item">
		      <a class="page-link"
			     href="boardList.do?searchcondition=${paging.Endpage }">aria-label="Next"> <span aria-hidden="true">&raquo;</span>
		      </a>
		   </li>
	    </c:if>
		
	</ul>
</nav>
<!-- 페이지 부분. -->
<%@ include file="../includes/footer.jsp"%>

