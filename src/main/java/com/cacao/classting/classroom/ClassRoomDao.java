package com.cacao.classting.classroom;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class ClassRoomDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.cacao.classting.classroom.ClassRoomMpp";
	//adminClass

	public List<ClassRoom> selectListClass(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListClass",vo); return list;}

	public ClassRoom selectOneClass(ClassRoomVo vo) { return sqlSession.selectOne(namespace + ".selectOneClass", vo);}

	public int deleteClass(ClassRoomVo vo) {return sqlSession.update(namespace + ".DeleteClass", vo);}
	
	public int selectOneCount(ClassRoomVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}


	//classMemberView
	public int updateClass(ClassRoom dto)  {return sqlSession.update(namespace + ".updateClass", dto);}

	public ClassRoom selectOneMemberClass(ClassRoom vo)  { return sqlSession.selectOne(namespace + ".selectOneMemberClass", vo);}

	public int deleteMemberForcely(ClassRoom dto) {return sqlSession.update(namespace + ".DeleteMemberForcely", dto);}

//	class
	public ClassRoom selectOneSidebar(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneSidebar", vo);}
	public List<ClassRoom> selectListPost(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListPost",vo); return list;}
	public List<ClassRoom> selectListHomework(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListHomework",vo); return list;}
	public List<ClassRoom> selectListClassMember(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListClassMember",vo); return list;}

	
}