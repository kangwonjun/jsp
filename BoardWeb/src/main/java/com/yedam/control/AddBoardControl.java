package com.yedam.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.commom.Control;
import com.yedam.vo.BoardVO;

public class AddBoardControl implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		// key=value 처리위한 application/x-www-form-urlencode 방식.
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String title = req.getParameter("title");
		
		//파일 전송 "multipart/form-data" 방식. cos라이브러리.
		//1.파일업로드 (images) 2.DB입력.
		String savePath = req.getServletContext().getRealPath("images");
		int maxSize = 1024 * 1024 * 5;
		MultipartRequest request = new MultipartRequest(req  // 1.요청정보
				, savePath//, 업로드 경로 
				, maxSize // 3.최대크기지정.
				, "utf-8" // 4.파일명 해석 인코딩 방식 지정.
				, new DefaultFileRenamePolicy()// 5.리네임정책.
		);
		writer = request.getParameter("writer");
		content = request.getParameter("content");
		title = request.getParameter("title");
		String image = request.getFilesystemName("img");
		
		
		BoardVO brd = new BoardVO();
		brd.setWriter(writer);
		brd.setContent(content);
		brd.setTitle(title);
		brd.setImage(image);
		
		BoardService svc = new BoardServiceImpl();
		if (svc.addBoard(svo)) { 
			// 목록이동.
			resp.sendRedirect("boardList.do");
		}
	}

}
