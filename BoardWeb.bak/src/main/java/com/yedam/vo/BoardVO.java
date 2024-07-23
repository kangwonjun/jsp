package com.yedam.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private int boardNo; //board_no 기본키
	private String writer;
	private String title;
	private String content;
	private int viewCnt;
	private Date writeDate;
	private String image;
	
	
	
}	
