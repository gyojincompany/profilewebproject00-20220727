package com.gyojincompany.profileweb.dao;

public interface IDao {
	
	//member 관련 dao 메서드
	public void joinDao(String mid, String mpw, String mname, String memail);//회원 가입 메서드
	public int checkIdDao(String mid);//회원가입 여부 체크 메서드(아이디가 존재하면 1, 아니면 0이 반환)
	
	
	//board 관련 dao 메서드
}
