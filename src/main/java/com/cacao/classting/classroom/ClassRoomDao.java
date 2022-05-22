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

	public int deleteClass(ClassRoomVo vo) {return sqlSession.update(namespace + ".deleteClass", vo);}
	
	public int selectOneCount(ClassRoomVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}

	public int deleteClassMulti(ClassRoomVo vo) {return sqlSession.update(namespace + ".deleteClassMulti", vo);}


	//classMemberView
	public int updateClass(ClassRoom dto)  {return sqlSession.update(namespace + ".updateClass", dto);}

	public ClassRoom selectOneMemberClass(ClassRoom vo)  { return sqlSession.selectOne(namespace + ".selectOneMemberClass", vo);}

	public int deleteMemberForcely(ClassRoom dto) {return sqlSession.update(namespace + ".DeleteMemberForcely", dto);}

//	class
	public ClassRoom selectOneSidebar(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneSidebar", vo);}
	public ClassRoom selectOneClassInfo(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneClassInfo", vo);}
	public ClassRoom selectOneClassPost(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneClassPost", vo);}
	public ClassRoom selectOneClassHomework(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneClassHomework", vo);}
	public ClassRoom selectOneHomeworkSubmit(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneHomeworkSubmit", vo);}
	public int selectOneMemberCount(ClassRoomVo vo) {return sqlSession.selectOne(namespace +".selectOneMemberCount", vo);}
	public List<ClassRoom> selectListPost(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListPost",vo); return list;}
	public List<ClassRoom> selectListStorage(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListStorage",vo); return list;}
	public List<ClassRoom> selectListHomework(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListHomework",vo); return list;}
	public List<ClassRoom> selectListHomeworkSubmit(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListHomeworkSubmit",vo); return list;}
	public List<ClassRoom> selectListClassMember(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListClassMember",vo); return list;}
	public List<ClassRoom> selectListReply(ClassRoomVo vo) { List<ClassRoom> list = sqlSession.selectList(namespace + ".selectListReply",vo); return list;}
	
	public int insertReply(ClassRoom dto) {return sqlSession.insert(namespace+ ".insertReply", dto);}
	public int insertHomeworkSubmit(ClassRoom dto) {return sqlSession.insert(namespace+ ".insertHomeworkSubmit", dto);}
	

//��ȸ��
	
	public int hitUpdate(ClassRoom dto) {return sqlSession.update(namespace + ".hitUpdate",dto);}
	
	
	// 출석부
	public ClassRoom getClassId(ClassRoomVo vo) {
		return sqlSession.selectOne(namespace+".getClassId",vo);
		
	}
	
	public int attendance(ClassRoom dto) {
		return sqlSession.insert(namespace + ".attendance",dto);
		
	}
	
	public int today(ClassRoom dto){
		return sqlSession.selectOne(namespace+ ".today",dto);
		
	}

	
//게시글
	public int insertPost(ClassRoom dto) {
		return sqlSession.insert(namespace+ ".insertPost", dto);
	}
	
	public int insertAddress(ClassRoom dto) {
		return sqlSession.insert(namespace + ".insertAddress", dto);
	}
	
/*
 * public int updatePost(ClassRoom dto) {
 * 
 * }
 */
	
}