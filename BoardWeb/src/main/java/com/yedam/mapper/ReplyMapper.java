package com.yedam.mapper;

import java.util.List;

import com.yedam.common.SearchDTO;
import com.yedam.vo.ReplyVO;

public interface ReplyMapper {
	//datatable연습용.
	List<ReplyVO> selectList(int boardNo);
	List<ReplyVO> selectListPaging(SearchDTO search); // 원본 글번호, 페이지 정보,
	
	int insertReply(ReplyVO rvo);
	int deleteReply(int replyNo);
	int totalReplyCnt(int boardNo);
}