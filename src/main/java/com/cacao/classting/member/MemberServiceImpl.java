package com.cacao.classting.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cacao.classting.common.util.UtilUpload;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int insert(Member dto) throws Exception {
		
		dao.insert(dto);
		
//		int j = 0;
//		for(MultipartFile multipartFile : dto.getFile0()) {
//			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
//			UtilUpload.uploadMember(multipartFile, pathModule, dto);
//			
//			dto.setTableName("ctMemberUploaded");
//			dto.setType(0);
//			dto.setDefaultNy(1);
//			dto.setSort(j); 	
//			dto.setDelNy(0);
//			dto.setPseq(dto.getMmSeq());
//			
//			dao.insertUploaded(dto);
//			j++;
//			
//		}
		
		return 1;
		
		
	}

	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int insertClass(Member dto) throws Exception {
		return dao.insertClass(dto);
	}

	@Override
	public int insertClassMember(Member dto) throws Exception {
		return dao.insertClassMember(dto);
	}

	@Override
	public Member selectOneClass(MemberVo vo) throws Exception {
		return dao.selectOneClass(vo);
	}

	@Override
	public List<Member> selectListClass(MemberVo vo) throws Exception {
		return dao.selectListClass(vo);
	}

	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOnePassword(Member dto) throws Exception {
		return dao.selectOnePassword(dto);
	}

//	@Override
//	public List<Member> selectListMemberUploaded(MemberVo vo) throws Exception {
//		return dao.selectListMemberUploaded(vo);
//	}
//
//	@Override
//	public int insertUploaded(Member dto) throws Exception {
//		return 0;
//	}
//
//	@Override
//	public int updateUploaded(Member dto) throws Exception {
//		return 0;
//	}

	@Override
	public List<Member> selectListMember(MemberVo vo) throws Exception {
		return dao.selectListMember(vo);
	}

	@Override
	public int deleteMember(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Member selectOneMember(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectOneCountMember(MemberVo vo) throws Exception {
		
		return dao.selectOneCountMember(vo);
	}


	

}
