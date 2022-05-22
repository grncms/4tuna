package com.cacao.classting.classroom;

import java.util.List;


public interface ClassRoomService {
	
	//adminClass


	public List<ClassRoom> selectListClass(ClassRoomVo vo) throws Exception;
	public int insertClass(ClassRoom dto) throws Exception;

	public int deleteClass(ClassRoomVo vo) throws Exception;

	public ClassRoom selectOneClass(ClassRoomVo vo) throws Exception;
	
	public int selectOneCount(ClassRoomVo vo) throws Exception;
	
	int deleteClassMulti(ClassRoomVo vo) throws Exception;

	//classMemberView
	public int updateClass(ClassRoom dto) throws Exception;

	public ClassRoom selectOneMemberClass(ClassRoom vo) throws Exception;

	public int deleteMemberForcely(ClassRoom dto) throws Exception;
	// 조회수 
	public int hitUpdate(ClassRoom dto) throws Exception;

//	클래스 내 정보
	public ClassRoom selectOneSidebar(ClassRoomVo vo) throws Exception;
	public ClassRoom selectOneClassInfo(ClassRoomVo vo) throws Exception;
	public ClassRoom selectOneClassPost(ClassRoomVo vo) throws Exception;
	public ClassRoom selectOneClassHomework(ClassRoomVo vo) throws Exception;
	public ClassRoom selectOneHomeworkSubmit(ClassRoomVo vo) throws Exception;
	public int selectOneMemberCount(ClassRoomVo vo) throws Exception;
	public List<ClassRoom> selectListPost(ClassRoomVo vo) throws Exception;
	public List<ClassRoom> selectListStorage(ClassRoomVo vo) throws Exception;
	public List<ClassRoom> selectListHomework(ClassRoomVo vo) throws Exception;
	public List<ClassRoom> selectListHomeworkSubmit(ClassRoomVo vo) throws Exception;
	public List<ClassRoom> selectListClassMember(ClassRoomVo vo) throws Exception;
	public List<ClassRoom> selectListReply(ClassRoomVo vo) throws Exception;
	public int insertReply(ClassRoom dto) throws Exception;
	public int insertHomeworkSubmit(ClassRoom dto) throws Exception;
	
	
//출석부
	public ClassRoom getClassId(ClassRoomVo vo) throws Exception;
	public int attendance(ClassRoom dto) throws Exception;
	public int today(ClassRoom dto) throws Exception;
	
	
//게시글등록
	public int insertPost(ClassRoom dto) throws Exception;
	public int insertAddress(ClassRoom dto);
}