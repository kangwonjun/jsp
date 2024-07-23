package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.commom.Control;

public class ActionControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("WEB-INF/jsp/actionForm.jsp")//
		.forward(req, resp); //페이지 재지정.

	}

}
