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
	public int deleteClass(ClassRoomVo vo) throws Exception {
		
		return dao.deleteClass(vo);
	}
	@Override
	public int deleteClassMulti(ClassRoomVo vo) throws Exception {
		
		return dao.deleteClassMulti(vo);
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

	@Override
	public List<ClassRoom> selectListHomework(ClassRoomVo vo) throws Exception {
		return dao.selectListHomework(vo);
	}

	@Override
	public List<ClassRoom> selectListClassMember(ClassRoomVo vo) throws Exception {
		return dao.selectListClassMember(vo);
	}

	@Override
	public ClassRoom selectOneClass(ClassRoomVo vo) throws Exception {
		
		return dao.selectOneClass(vo);
	}

	@Override
	public ClassRoom selectOneClassInfo(ClassRoomVo vo) throws Exception {
		return dao.selectOneClassInfo(vo);
	}

	@Override
	public List<ClassRoom> selectListStorage(ClassRoomVo vo) throws Exception {
		return dao.selectListStorage(vo);
	}

	@Override
	public ClassRoom selectOneClassPost(ClassRoomVo vo) throws Exception {
		return dao.selectOneClassPost(vo);
	}


//	@Override
	public List<ClassRoom> selectListReply(ClassRoomVo vo) throws Exception {
		return dao.selectListReply(vo);
	}

	@Override
	public int hitUpdate(ClassRoom dto) throws Exception {
		dao.hitUpdate(dto);
		return 0;
	}

	@Override
	public ClassRoom selectOneClassHomework(ClassRoomVo vo) throws Exception {
		return dao.selectOneClassHomework(vo);
	}

	@Override
	public ClassRoom getClassId(ClassRoomVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.getClassId(vo);
	}

	@Override
	public int attendance(ClassRoom dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.attendance(dto);
	}

	@Override
	public int today(ClassRoom dto) throws Exception {
		return dao.today(dto);//
	}

	@Override
	public List<ClassRoom> selectListHomeworkSubmit(ClassRoomVo vo) throws Exception {
		return dao.selectListHomeworkSubmit(vo);
	}


	@Override
	public int selectOneMemberCount(ClassRoomVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public ClassRoom selectOneHomeworkSubmit(ClassRoomVo vo) throws Exception {
		return dao.selectOneHomeworkSubmit(vo);
	}






	

}
