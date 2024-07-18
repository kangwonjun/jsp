package com.yedam.Service;
/*
 * MVC 패턴의 디자인에 따라서 Model영역(service, dao:mapper).
 * 책: 4강 MVC기반 웹 프로젝트 참고.
 * 숙제: 536페이지 MVC 대해 자세히 읽기
 */

import java.util.List;

import com.yedam.vo.BoardVO;

public interface BoardService {
	List<BoardVO> boardList();
	boolean addBoard(BoardVO board);
	boolean modifyBoard(BoardVO board);
	boolean removeBoard(int boardNo);
	BoardVO getBoard(int boardNo);
}
