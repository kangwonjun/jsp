package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.Service.MemberService;
import com.yedam.Service.MemberServiceImpl;
import com.yedam.commom.Control;

public class LoginControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// id, pw 파라미터 => 게시글목록 or 로그인화면으로 이동
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		System.out.println(id + " " + pw);
		
		MemberService svc = new MemberServiceImpl();
		if(svc.loginCheck(id, pw)) {
			//세션객체(attribute)
			HttpSession session = req.getSession();
			session.setAttribute("logid", id);
			session.setMaxInactiveInterval(30 * 60);
			
			resp.sendRedirect("boardList.do");
		}else {
			//msg를 "아이디와 비번을 확인 하세요"		
			req.setAttribute("msg", "아이디와 비번을 확인하세요!");
			req.getRequestDispatcher("WEB-INF/jsp/loginForm.jsp")//
				.forward(req, resp); //페이지 재지정
		}
		
	}
	
}
