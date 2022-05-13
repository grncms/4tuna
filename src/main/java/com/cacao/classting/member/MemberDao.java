package com.cacao.classting.member;


import javax.annotation.Resource;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cacao.classting.member.MemberMpp";

	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace +".selectOne", vo);}
	public int insert(Member dto) {return sqlSession.insert(namespace +".insert", dto);}
	public int update(Member dto) {return sqlSession.update(namespace +".update", dto);}
	public Member selectOneLogin(Member dto) {return sqlSession.selectOne(namespace +".selectOneLogin", dto);}

	public int insertClass(Member dto) {return sqlSession.insert(namespace +".insertClass", dto);}
	public int insertClassMember(Member dto) {return sqlSession.insert(namespace +".insertClassMember", dto);}
//	public Member selectOneClass(MemberVo vo) {return sqlSession.selectOne(namespace +".selectOneClass", vo);}
	
}