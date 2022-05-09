package com.cacao.classting.classroom;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClassRoomServiceImpl implements ClassRoomService{

	@Autowired
	ClassRoomDao dao;
	

}
