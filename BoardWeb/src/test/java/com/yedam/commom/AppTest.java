package com.yedam.commom;

import org.apache.ibatis.session.SqlSession;

import com.yedam.Service.BoardService;
import com.yedam.Service.BoardServiceImpl;
import com.yedam.mapper.BoardMapper;
import com.yedam.vo.BoardVO;



public class AppTest {

	public static void main(String[] args) {
		SqlSession sqlSession = //
				DataSource.getInstance().openSession();
		BoardMapper mapper = sqlSession.getMapper(BoardMapper.class);
		
		BoardVO brd = new BoardVO();
		brd.setTitle("돼지");
		brd.setContent("돼지국밥");
		brd.setWriter("pig");
		brd.setBoardNo(5);
		
		if(mapper.delectBoard(19) == 1) {
			System.out.println("삭제완료");
		}
		
//		if(mapper.updateBoard(brd) == 1){
//			System.out.println("ok");
//		}
		
		BoardService svc = new BoardServiceImpl();
		svc.boardList().forEach(System.out::println);
		System.out.println("- END -");
		
		mapper.selectList()//
		.forEach(board ->System.out.println(board.toString()));
		
		
	}	
}	