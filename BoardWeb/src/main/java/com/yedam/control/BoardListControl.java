package com.yedam.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;
import com.yedam.commom.PageDTO;
import com.yedam.commom.SearchVO;
import com.yedam.vo.BoardVO;

public class BoardListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String page = req.getParameter("page");
		page = page == null ? "1" : page;
		String sc =req.getParameter("searchCondition");
		String kw =req.getParameter("keyword");
		
		SearchVO search = new SearchVO();
		search.setKeyword(kw);
		search.setPage(Integer.parseInt(page));
		search.setSearchCondition(sc);
		
		
		req.setAttribute("myName", "홍길동");
		BoardService svc = new BoardServiceImpl();
		List<BoardVO> list =  svc.boardList(search);
		req.setAttribute("boardList", list);
		
		
		//paging
		int totalCnt = svc.totalCount(search);
		PageDTO pageDTO = new PageDTO(Integer.parseInt(page),totalCnt);
		
		req.setAttribute("paging", pageDTO);
		req.setAttribute("search", search);
		req.getRequestDispatcher("WEB-INF/jsp/boardList.jsp")
		.forward(req, resp); // 페이지 재지정.
		req.setAttribute("searchCondition",sc);
		req.setAttribute("keyword",kw);
		
		
		req.setAttribute("boardList", list);
		req.getRequestDispatcher("WEB-INF/jsp/boardList.jsp")
		.forward(req, resp); // 페이지 재지정.

	}

}
