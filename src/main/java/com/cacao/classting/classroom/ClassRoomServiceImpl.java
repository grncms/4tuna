package com.cacao.classting.classroom;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClassRoomServiceImpl implements ClassRoomService{

	@Autowired
	ClassRoomDao dao;

	@Override
	public List<ClassRoom> selectListClass(ClassRoomVo vo) throws Exception {
		
		
		return dao.selectListClass(vo);
	}

	@Override
	public int insertClass(ClassRoom dto) throws Exception {
		
		return 0;
	}

	@Override
	public int deleteClass(ClassRoom dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public ClassRoom selectOneClass(ClassRoom dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectOneCount(ClassRoomVo vo) throws Exception {
		
		return dao.selectOneCount(vo);
	}

	@Override
	public int updateClass(ClassRoom dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ClassRoom selectOneMemberClass(ClassRoom vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMemberForcely(ClassRoom dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ClassRoom selectOneSidebar(ClassRoomVo vo) throws Exception {
		return dao.selectOneSidebar(vo);
	}

	@Override
	public List<ClassRoom> selectListPost(ClassRoomVo vo) throws Exception {
		return dao.selectListPost(vo);
	}
	

}
