package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.commom.Control;

public class LogoutControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// TODO Auto-generated method stub
		//세션객체의 정보를 삭제하거나 setAttribute("logid",id)
		HttpSession session = req.getSession();
		session.invalidate(); //세션객체의 정보를 삭제,
		resp.sendRedirect("loginForm.do");
	}

}
