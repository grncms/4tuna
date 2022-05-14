package com.cacao.classting.member;

import java.util.List;

public interface MemberService {
	
	public Member selectOne(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOnePassword(Member dto) throws Exception;
	
	public int insertClass(Member dto) throws Exception;
	public int insertClassMember(Member dto) throws Exception;
	public Member selectOneClass(MemberVo vo) throws Exception;
	public List<Member> selectListClass(MemberVo vo) throws Exception;
}