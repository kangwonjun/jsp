package com.yedam.stream;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO implements Serializable{
	private int memberNo;
	private String memberName;
	private int point;
}
