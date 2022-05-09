package com.cacao.classting.classroom;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ClassRoomDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	

	
}