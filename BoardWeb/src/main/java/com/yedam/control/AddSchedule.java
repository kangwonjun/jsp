package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.BoardService;
import com.yedam.service.BoardServiceImpl;
import com.yedam.vo.BoardVO;

public class AddSchedule implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title = req.getParameter("title");
		String std = req.getParameter("start");
		String end = req.getParameter("end");
		
		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setWriter(std);
		bvo.setContent(end);
		
	}
}