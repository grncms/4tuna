package com.cacao.classting.member;


import java.util.List;

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
	public Member selectOneId(Member dto) {return sqlSession.selectOne(namespace +".selectOneId", dto);}
	public Member selectOnePassword(Member dto) {return sqlSession.selectOne(namespace +".selectOnePassword", dto);}

	public int insertClass(Member dto) {return sqlSession.insert(namespace +".insertClass", dto);}
	public int insertClassMember(Member dto) {return sqlSession.insert(namespace +".insertClassMember", dto);}
	public Member selectOneClass(MemberVo vo) {return sqlSession.selectOne(namespace +".selectOneClass", vo);}
	public List<Member> selectListClass(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListClass",vo); }
	
	public List<Member> selectListMemberUploaded(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListMemberUploaded",vo); }
	public int insertUploaded(Member dto) {return sqlSession.insert(namespace +".insertUploaded", dto);}
	public int updateUploaded(Member dto) {return sqlSession.update(namespace +".updateUploaded", dto);}
	
}