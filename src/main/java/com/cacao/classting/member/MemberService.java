package com.cacao.classting.member;


public interface MemberService {
	
	
	public int insert(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
}