package com.gyojincompany.profileweb.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MemberDto {		
	
	private String mid;//가입한 아이디
	private String mpw;//비밀번호
	private String mname;//가입한 이름
	private String memail;//가입한 이메일
	private String mdate;//가입한 날짜	
	

}
