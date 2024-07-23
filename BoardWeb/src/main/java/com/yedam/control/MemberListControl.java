package com.yedam.control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Control;
import com.yedam.service.MemberService;
import com.yedam.service.MemberServiceImpl;
import com.yedam.vo.MemberVO;

public class MemberListControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<MemberVO> memberList = new ArrayList<MemberVO>();
		MemberService memberService = new MemberServiceImpl();
		memberList = memberService.getMemberList();
		
		
		
		//paging
		req.setAttribute("memId", memberList);
		req.setAttribute("memPw", memberList);
		req.setAttribute("memNm", memberList);
		req.setAttribute("responsibility", memberList);
		
		
		req.getRequestDispatcher("admin/memberList.tiles").forward(req, resp);	
		
	}

}
