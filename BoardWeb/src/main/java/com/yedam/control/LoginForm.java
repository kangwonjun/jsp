package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.commom.Control;

public class LoginForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.getRequestDispatcher("WEB-INF/jsp/loginForm.jsp")
				.forward(req, resp);
	}
	
}
