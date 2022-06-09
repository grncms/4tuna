package com.cacao.classting.classroom;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cacao.classting.common.util.UtilDateTime;
import com.cacao.classting.common.util.UtilUpload;


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
	public ClassRoom selectOneClassPostUrl(ClassRoomVo vo) throws Exception {
		
		return dao.selectOneClassPostUrl(vo);
	}

	@Override
	public int insertUrl(ClassRoom dto) throws Exception {
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		dao.insertUrl(dto);
		
		return 1;
	}



	@Override
	public int updateClassMember(ClassRoom dto) throws Exception {
		dao.updateClassMember(dto);
		String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
	     UtilUpload.uploadClassMember(dto.getFile0(), pathModule, dto);
	     
	     dto.setTableName("ctClassMemberUploaded");
	     dto.setType(0);
	     dto.setDefaultNy(1);
	     dto.setSort(0);
	     dto.setDelNy(0);
	     dto.setPseq(dto.getMmSeq());
	     
	     dao.updateUploaded(dto);
		
		return 1;
	}

	@Override
	public int updateUploaded(ClassRoom dto) throws Exception {
		
		return dao.updateUploaded(dto);
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
	public ClassRoom selectOneMemberClass(ClassRoomVo vo) throws Exception {
		
		return dao.selectOneMemberClass(vo);
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
	public List<ClassRoom> selectListReserv(ClassRoomVo vo) throws Exception {
		return dao.selectListReserv(vo);
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
		return dao.selectOneMemberCount(vo);
	}

	@Override
	public ClassRoom selectOneHomeworkSubmit(ClassRoomVo vo) throws Exception {
		return dao.selectOneHomeworkSubmit(vo);
	}

	@Override
	public int insertPost(ClassRoom dto) {
		// TODO Auto-generated method stub
		return dao.insertPost(dto);
	}



	public int insertAddress(ClassRoom dto) {
		// TODO Auto-generated method stub
		return dao.insertAddress(dto);
	}

	@Override
	public int insertReply(ClassRoom dto) throws Exception {
		return dao.insertReply(dto);
	}

	@Override
	public int insertHomeworkSubmit(ClassRoom dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		dao.insertHomeworkSubmit(dto);
		
		return 1;
	}

	@Override
	public ClassRoom selectOneHomeworkSubmitStudent(ClassRoomVo vo) throws Exception {
		return dao.selectOneHomeworkSubmitStudent(vo);
	}

	@Override
	public int updateHomeworkSubmitScore(ClassRoom dto) throws Exception {
		return dao.updateHomeworkSubmitScore(dto);
	}

	@Override
	public int updateHomeworkSubmit(ClassRoom dto) throws Exception {
		return dao.updateHomeworkSubmit(dto);
	}

	@Override
	public int insertHomeworkPost(ClassRoom dto) throws Exception {
	
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		dao.insertHomeworkPost(dto);
		
		return 1;
		
	}

	@Override
	public List<ClassRoom> enterLog(Map<String, String> dates) throws Exception {
	return	dao.enterLog(dates);
	}

	@Override
	public int selectOneSubmitCount(ClassRoomVo vo) throws Exception {
		
		return dao.selectOneSubmitCount(vo);
	}

	@Override
	public int insertHomeworkReply(ClassRoom dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());
		dao.insertHomeworkReply(dto);
		
		return 1;
	}

	@Override
	public int insertHomeworkSubmitReply(ClassRoom dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());
		dao.insertHomeworkSubmitReply(dto);
		
		return 1;
	}

	@Override
	public List<ClassRoom> selectListHomeworkReply(ClassRoomVo vo) throws Exception {
		return dao.selectListHomeworkReply(vo);
	}

	@Override
	public List<ClassRoom> selectListHomeworkSubmitReply(ClassRoomVo vo) throws Exception {
		return dao.selectListHomeworkSubmitReply(vo);
	}

	@Override
	public List<ClassRoom> homeworkSubmit(ClassRoom dto) throws Exception {
		return dao.homeworkSubmit(dto);
	}

	@Override
	public List<ClassRoom> homeworkWriter(ClassRoom dto) throws Exception {
		return dao.homeworkWriter(dto);
	}

	@Override
	public int updateReplyUele(ClassRoom dto) throws Exception {
		return dao.updateReplyUele(dto);
	}

	@Override
	public int updateHomeworkReplyUele(ClassRoom dto) throws Exception {
		return dao.updateHomeworkReplyUele(dto);
	}

	@Override
	public int updateHomeworkSubmitReplyUele(ClassRoom dto) throws Exception {
		return dao.updateHomeworkSubmitReplyUele(dto);
	}



	@Override
	public List<ClassRoom> scoreAvg(ClassRoomVo vo) throws Exception {
		return dao.scoreAvg(vo);
	}

	@Override
	public List<ClassRoom> selectListClassPostUrl(ClassRoomVo vo) throws Exception {
		
		return dao.selectListClassPostUrl(vo);
	}

	@Override
	public int updateClassMemberDel(ClassRoom dto) throws Exception {
		return dao.updateClassMemberDel(dto);
	}

	@Override
	public List<ClassRoom> selectListMemberUploaded(ClassRoomVo vo) throws Exception {
		
		return dao.selectListMemberUploaded(vo);
	}


	

}
