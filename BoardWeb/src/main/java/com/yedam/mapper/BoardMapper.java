package com.yedam.mapper;

import java.util.List;

import com.yedam.commom.SearchVO;
import com.yedam.vo.BoardVO;

public interface BoardMapper {
/*
 *  글목록, 등록, 수정, 삭제, 단건조회,
 */
	List<BoardVO> selectList();
	
	List<BoardVO> selectListPaging(SearchVO SearchVO);//페이지정보 -> 5건씩 출력
	
	//페이징 계산하기 위한 전체건수.
	int selectTotalCount(SearchVO searchVO);
	BoardVO selectBoard(int boardNo);
	
	int insertBoard(BoardVO board);
	
	int updateBoard(BoardVO board);
	
	int delectBoard(int boardNo);
	
	int modifyBoard(BoardVO board);
}
