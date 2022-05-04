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
	@RequestMapping(value = "/noticeBoard", method = RequestMethod.GET)
	public String classNoticeList() {
		
		return "member/classroom/common/noticeBoard";
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

	//수빈
	@RequestMapping(value = "index/index")
	public String index() {
		
		return "index/index";
	}
	@RequestMapping(value = "member/findId")
	public String findId() {
		
		return "member/findId";
	}
	@RequestMapping(value = "member/findPwd")
	public String findPwd() {
		
		return "member/findPwd";
	}
	@RequestMapping(value = "member/main")
	public String main_teacher() {
		
		return "member/main";
	}
	@RequestMapping(value = "member/classList")
	public String test() {
		
		return "member/classList";
	}
	@RequestMapping(value = "member/memberForm_main")
	public String memberForm_main() {
		
		return "member/memberForm_main";
	}
	@RequestMapping(value = "member/memberForm_user")
	public String memberForm_user() {
		
		return "member/memberForm_user";
	}
	@RequestMapping(value = "member/memberInfo")
	public String memberInfo() {
		
		return "member/memberInfo";
	}
	@RequestMapping(value = "member/memberInfoEdit")
	public String memberInfoEdit() {
		
		return "member/memberInfoEdit";
	}
	@RequestMapping(value = "member/classroom/common/classMain")
	public String classMain() {
		
		return "member/classroom/common/classMain";
	}
	@RequestMapping(value = "member/classroom/common/classMemberList")
	public String classMemberList() {
		
		return "member/classroom/common/classMemberList";
	}
	@RequestMapping(value = "member/classroom/teacher/classInvitation")
	public String classInvitation() {
		
		return "member/classroom/teacher/classInvitation";
	}
	

	//일단 임시
		@RequestMapping(value = "/attendance", method = RequestMethod.GET)
		public String classAttendance() {
			
			return "member/classroom/teacher/classAttendance";
		}	


}
