package com.cacao.classting.member;

public interface MemberService {
	
	public Member selectOne(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	
}