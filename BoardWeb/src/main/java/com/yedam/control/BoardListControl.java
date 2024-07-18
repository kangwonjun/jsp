package com.yedam.control;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;
import com.yedam.vo.BoardVO;

public class BoardListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setAttribute("myName", "홍길동");
		BoardService boardService = new BoardServiceImpl();
		List<BoardVO> list = boardService.boardList();
		req.setAttribute("boardList", list);
		req.getRequestDispatcher("WEB-INF/jsp/boardList.jsp")
		.forward(req, resp); // 페이지 재지정.

	}

}
