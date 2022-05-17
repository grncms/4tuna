package com.cacao.classting.member;

import java.util.List;

import com.cacao.classting.classroom.ClassRoom;
import com.cacao.classting.classroom.ClassRoomVo;

public interface MemberService {
	
	public Member selectOne(MemberVo vo) throws Exception;
	public int insert(Member dto) throws Exception;
	public int update(Member dto) throws Exception;
	public Member selectOneLogin(Member dto) throws Exception;
	public List<Member> selectListId(MemberVo vo) throws Exception;
	public Member selectOneId(Member dto) throws Exception;
	public Member selectOnePassword(Member dto) throws Exception;
	
	public int insertClass(Member dto) throws Exception;
	public int insertClassMember(Member dto) throws Exception;
	public Member selectOneClass(MemberVo vo) throws Exception;
	public List<Member> selectListClass(MemberVo vo) throws Exception;

	public List<Member> selectListNotice(MemberVo vo) throws Exception;
//	public List<Member> selectListMemberUploaded(MemberVo vo) throws Exception;
//	public int insertUploaded(Member dto) throws Exception;
//	public int updateUploaded(Member dto) throws Exception;
	
//admin
	
	public List<Member> selectListMember(MemberVo vo) throws Exception;

	public int deleteMember(Member dto) throws Exception;

	public Member selectOneMember(Member dto) throws Exception;
	
	public int selectOneCountMember(MemberVo vo) throws Exception;
}