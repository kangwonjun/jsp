package com.yedam.mapper;

import java.util.List;

import com.yedam.vo.BoardVO;

public interface BoardMapper {
/*
 *  글목록, 등록, 수정, 삭제, 단건조회,
 */
	List<BoardVO> selectList();
	int insertBoard(BoardVO board);
	int updateBoard(BoardVO board);
	int delectBoard(int boardNo);
	BoardVO selectBoard(int boardNo);

}
