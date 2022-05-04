package com.cacao.classting.classroom;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClassRoomController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClassRoomController.class);
	
	
	

//동훈	
	@RequestMapping(value = "/classForm", method = RequestMethod.GET)
	public String classForm() {
		
		return "member/classroom/teacher/classForm";
	}
	@RequestMapping(value = "/classForm2", method = RequestMethod.GET)
	public String classForm2() {
		
		return "member/classroom/teacher/classForm2";
	}
	@RequestMapping(value = "/classForm3", method = RequestMethod.GET)
	public String classForm3() {
		
		return "member/classroom/teacher/classForm3";
	}
	@RequestMapping(value = "/classStudentForm", method = RequestMethod.GET)
	public String classStudentForm() {
		
		return "member/classroom/student/classStudentForm";
	}
	@RequestMapping(value = "/classMemberView", method = RequestMethod.GET)
	public String classMemberView() {
		
		return "member/classroom/common/classMemberView";
	}
	@RequestMapping(value = "/classNoticeList", method = RequestMethod.GET)
	public String classNoticeList() {
		
		return "member/classroom/common/classNoticeList";
	}
	@RequestMapping(value = "/adminClassList", method = RequestMethod.GET)
	public String adminClassList() {
		
		return "xdmin/member/classroom/adminClassList";
	}
	@RequestMapping(value = "/adminClassView", method = RequestMethod.GET)
	public String adminClassView() {
		
		return "xdmin/member/classroom/adminClassView";
	}
	@RequestMapping(value = "/adminMemberView", method = RequestMethod.GET)
	public String adminMemberView() {
		
		return "xdmin/member/adminMemberView";
	}
	@RequestMapping(value = "/adminMemberEdit", method = RequestMethod.GET)
	public String adminMemberEdit() {
		
		return "xdmin/member/adminMemberEdit";
	}
	@RequestMapping(value = "/adminMemberForm", method = RequestMethod.GET)
	public String adminMemberForm() {
		
		return "xdmin/member/adminMemberForm";
	}
	@RequestMapping(value = "/adminMemberList", method = RequestMethod.GET)
	public String adminMemberList() {
		
		return "xdmin/member/adminMemberList";
	}
	
//민수	
	@RequestMapping(value = "/classBoardUpload", method = RequestMethod.GET)
	public String postUpload() {
		
		return "member/classroom/common/classBoardUpload";
	}
	
	@RequestMapping(value = "/classStorage", method = RequestMethod.GET)
	public String classStorage() {
		
		return "member/classroom/common/classStorage";
	}
	
	@RequestMapping(value = "/classPostEdit", method = RequestMethod.GET)
	public String classPostEdit() {
		
		return "member/classroom/common/classPostEdit";
	}

	@RequestMapping(value = "/classSetting", method = RequestMethod.GET)
	public String classSetting() {
		
		return "member/classroom/teacher/classSetting";
	}	

	// 선락 
	@RequestMapping(value = "/chat", method = RequestMethod.GET)
	public String chat() {
		
		return "chat/chat";
	}	

//일단 임시
	@RequestMapping(value = "/attendance", method = RequestMethod.GET)
	public String classAttendance() {
		
		return "member/classroom/teacher/classAttendance";
	}	


}
