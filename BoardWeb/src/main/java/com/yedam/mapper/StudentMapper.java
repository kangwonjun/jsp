package com.yedam.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.MemberVO;
import com.yedam.vo.StudentVO;

public interface StudentMapper {
	List<StudentVO> studentList();
	StudentVO selectOne(String sno);
	int insertStudent(StudentVO svo);
	public int deleteStudent(String stdNo);
	
	// 로그인 체크
	MemberVO selectMember(@Param("id") String id, @Param("pw") String pw); // xml에서 사용
	List<MemberVO> selectMembers();
	
	
	
	//차트 (작성자별 건수)
	List<Map<String,Object>> selectCountByMember();
}
