package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;

public class DeleteBoard implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String bno = req.getParameter("bno");
		
		BoardService svc = new BoardServiceImpl();
		if(svc.removeBoard(Integer.parseInt(bno))) {
			//목록으로 이동
			resp.sendRedirect("boardList.do");
			
		}else {
			//삭제페이지로 이동.
			resp.sendRedirect("removeBoard.do?bno=" + bno);
		}

	}

}
