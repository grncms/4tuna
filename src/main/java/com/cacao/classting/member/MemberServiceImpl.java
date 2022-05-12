package com.cacao.classting.member;


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
	

}
