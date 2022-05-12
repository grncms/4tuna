package com.cacao.classting.classroom;

import java.util.List;

public interface ClassRoomService {
	
	//adminClass

	public List<ClassRoom> selectListClass(ClassRoomVo vo) throws Exception;

	public int insertClass(ClassRoom dto) throws Exception;

	public int deleteClass(ClassRoom dto) throws Exception;

	public ClassRoom selectOneClass(ClassRoom dto) throws Exception;
	
	public int selectOneCount(ClassRoomVo vo) throws Exception;

	//classMemberView
	public int updateClass(ClassRoom dto) throws Exception;

	public ClassRoom selectOneMemberClass(ClassRoom vo) throws Exception;

	public int deleteMemberForcely(ClassRoom dto) throws Exception;
}