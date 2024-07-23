package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;
import com.yedam.vo.BoardVO;

public class board implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String bno = req.getParameter("bno");
		String page = req.getParameter("page");
		
		
		
		BoardService svc = new BoardServiceImpl();
		BoardVO board = svc.getBoard(Integer.parseInt(bno));
		
		req.setAttribute("board", board);
		req.setAttribute("page", page);
		
		req.getRequestDispatcher("board/board.tiles")
		.forward(req, resp); //페이지 재지정
		
		
	}

	
}
