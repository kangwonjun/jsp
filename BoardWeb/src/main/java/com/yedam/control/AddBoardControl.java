package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;
import com.yedam.vo.BoardVO;

public class AddBoardControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String title = req.getParameter("title");

		BoardService svc = new BoardServiceImpl();
		BoardVO svo = new BoardVO();
		svo.setWriter(writer);
		svo.setContent(content);
		svo.setTitle(title);
		if (svc.addBoard(svo)) { 
			// 목록이동.
			resp.sendRedirect("boardList.do");
		}
	}

}
