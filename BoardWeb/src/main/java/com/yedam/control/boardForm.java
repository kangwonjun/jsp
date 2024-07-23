package com.yedam.control;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.commom.Control;

public class boardForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.getRequestDispatcher("board/boardForm.tiles")
		.forward(req, resp); //페이지 재지정
	}

}
