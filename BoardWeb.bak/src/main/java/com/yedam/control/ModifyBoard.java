package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;
import com.yedam.vo.BoardVO;

public class ModifyBoard implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.getRequestDispatcher("WEB-INF/jsp/modifyForm.jsp").forward(req, resp); // 페이지 재지정
		String bno = req.getParameter("bno");
//		String title = resp.get

		BoardService svc = new BoardServiceImpl();
		if (svc.removeBoard(Integer.parseInt(bno))) {
			// 목록으로 이동
			resp.sendRedirect("boardList.do");

		} else {
			// 수정페이지로 이동.
			resp.sendRedirect("modifyBoard.do?bno=" + bno);
		}

	}

}
