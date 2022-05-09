package com.cacao.classting.chat;


import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	

	
}