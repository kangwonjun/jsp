package com.yedam.commom;

import org.apache.ibatis.session.SqlSession;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.mapper.BoardMapper;
import com.yedam.vo.BoardVO;



public class AppTest {

	public static void main(String[] args) {
		BoardService svc = new BoardServiceImpl();
		SearchVO search = new SearchVO();
		search.setSearchCondition("WT");
		search.setKeyword("웹");
		search.setPage(1);
		
		
		
		svc.boardList(search).forEach(System.out::println);
		System.out.println("- END -");
		
		
		
		
//		SqlSession sqlSession = //
//				DataSource.getInstance().openSession();
//		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		
//		BoardVO brd = new BoardVO();
//		brd.setTitle("돼지");
//		brd.setContent("돼지국밥");
//		brd.setWriter("pig");
//		brd.setBoardNo(5);
//		
//		if(mapper.delectBoard(19) == 1) {
//			System.out.println("삭제완료");
//		}
		
//		if(mapper.updateBoard(brd) == 1){
//			System.out.println("ok");
//		}
		
		
//		mapper.selectList()//
//		.forEach(board ->System.out.println(board.toString()));
//		
		
	}	
}	