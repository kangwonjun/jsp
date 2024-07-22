package com.yedam.Service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.commom.DataSource;
import com.yedam.mapper.BoardMapper;
import com.yedam.mapper.StudentMapper;

public class MemberServiceImpl implements MemberService {
	SqlSession sqlSession = //
			DataSource.getInstance().openSession();
	StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);

	
	
	
	
	
	@Override
	public boolean loginCheck(String id, String pw) {
		return mapper.selectMember(id, pw) == 1;
	}

	
}
