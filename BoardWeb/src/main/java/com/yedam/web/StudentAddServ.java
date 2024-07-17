package com.yedam.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.yedam.commom.DataSource;
import com.yedam.mapper.StudentMapper;
import com.yedam.vo.StudentVO;


@WebServlet("/StudentAddServ")
public class StudentAddServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public StudentAddServ() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sno = request.getParameter("sno");
		String sname = request.getParameter("sname");
		String phone = request.getParameter("sphone");
		String birth = request.getParameter("sbirth");
		StudentVO svo = new StudentVO();
		svo.setStdNo(sno);
		svo.setStdName(sname);
		svo.setStdPhone(phone);
		svo.setBirthdate(birth);
		
		
    	SqlSession sqlSession =DataSource.getInstance().openSession(true);
    	StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
    	
    	
    	mapper.insertStudent(svo);
		
    	response.sendRedirect("SampleServlet");
    	
    	
    	
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
