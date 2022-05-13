package com.cacao.classting.member;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		return dao.insert(dto);
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


	

}
