package com.gyojincompany.profileweb.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BoardDto {
	
	private int qnum;//게시판 번호
	private String qid;//게시판 글쓴이 아이디
	private String qname;//게시판 글쓴이 이름
	private String qcontent;//게시판 내용
	private String qemail;//게시판 글쓴이 메일
	private String qdate;//게시판 글쓴 날짜

}
