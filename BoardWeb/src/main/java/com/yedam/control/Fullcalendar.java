package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.BoardService;
import com.yedam.service.BoardServiceImpl;

public class Fullcalendar implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// "[{title":"sample", "start": "2023-01-05"},{"title":"회의", "start":2023-01-21T13:00:00","end":2023-01-21T16:00:00"}]"
		// resp.getWriter().print("[{\"title\":\"sample\", \"start\":\"2023-01-05\"},{\"title\":\"회의\", \"start\":\"2023-01-21T13:00:00\",\"end\":\"2023-01-21T16:00:00\"}]");
		resp.setContentType("text/json;charset=utf-8");
		BoardService svc = new BoardServiceImpl();
		
		
	}

}
