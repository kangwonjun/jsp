package com.yedam.web;
/*
 * FrontController 역할은 사용자의 모든 요청을 처리.
 * 서블릿. a.do, sample.do
 * 객체 생성 -> init -> service -> destroy.
 */

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.commom.Control;
import com.yedam.control.ActionControl;
import com.yedam.control.AddBoardControl;
import com.yedam.control.BoardListControl;
import com.yedam.control.DeleteBoard;
import com.yedam.control.LoginControl;
import com.yedam.control.LoginForm;
import com.yedam.control.LogoutControl;
import com.yedam.control.ModifyBoard;
import com.yedam.control.RemoveBoard;
import com.yedam.control.StudentListControl;
import com.yedam.control.UpdateBoard;
import com.yedam.control.board;
import com.yedam.control.boardForm;

public class FrontController extends HttpServlet{
	
	Map<String, Control> map;
	
	public FrontController() {
		map = new HashMap<>();
	}
	
	
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		map.put("/boardList.do", new BoardListControl());
		
		//글등록 구현 : 등록화면(boardForm.do) + DB등록(addBoard.do) -> 글목록페이지들
		map.put("/boardForm.do", new boardForm());// 글 생성 화면
		map.put("/addBoard.do", new AddBoardControl());// 글 추가 기능
		map.put("/board.do", new board());// 상세화면
		
		//학생목록
		map.put("/stdList.do", new StudentListControl());
		//태그연습
		map.put("/action.do", new ActionControl());
				
		//삭제
		map.put("/removeBoard.do", new RemoveBoard()); //삭제화면
		map.put("/deleteBoard.do", new DeleteBoard()); //삭제처리
		//수정
		map.put("/modifyBoard.do", new ModifyBoard()); //수정화면
		map.put("/updateBoard.do", new UpdateBoard()); //수정처리
		
		//로그인
		map.put("/loginForm.do", new LoginForm());  //로그인화면
		map.put("/login.do", new LoginControl());	//로그인 처리
		map.put("/logout.do", new LogoutControl()); //로그아웃 기능.
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//boardList.do -목록. addBoard.do -등록.
		String uri = req.getRequestURI(); //URL(http://localhost/Boardweb/boardList.do) vs.URI
		String context = req.getContextPath();//프로젝트 명.
		String path = uri.substring(context.length()); // "/boardList.do"
		//이름 안넣으면 못쓴다.
		System.out.println(path);
		Control sub = map.get(path);
		try {
			sub.exec(req,resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}
