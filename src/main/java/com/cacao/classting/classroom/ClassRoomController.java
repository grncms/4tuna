package com.cacao.classting.classroom;


import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cacao.classting.member.Member;
import com.cacao.classting.member.MemberVo;



@Controller
public class ClassRoomController {
	
	@Autowired
	ClassRoomServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(ClassRoomController.class);
//동훈	

//	@RequestMapping(value = "/classForm", method = RequestMethod.GET)
//	public String classForm() {
//		
//		return "member/classroom/teacher/classForm";
//	}
//	@RequestMapping(value = "/classForm2", method = RequestMethod.GET)
//	public String classForm2() {
//		
//		return "member/classroom/teacher/classForm2";
//	}
//	@RequestMapping(value = "/classForm3", method = RequestMethod.GET)
//	public String classForm3() {
//		
//		return "member/classroom/teacher/classForm3";
//	}
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

	@RequestMapping(value = "/adminClassList"/* , method = RequestMethod.GET */)
	public String adminClassList(@ModelAttribute("vo") ClassRoomVo vo, Model model) throws Exception {
		
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if(count !=0) {
			List<ClassRoom> list = service.selectListClass(vo);
			model.addAttribute("list", list);
		
		}
		else {
		//by pass	
			
		}
		
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
	public String classPostEdit3() {
		
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
	@RequestMapping(value = "/findId")
	public String findId() {
		
		return "member/findId";
	}
	@RequestMapping(value = "/findPwd")
	public String findPwd() {
		
		return "member/findPwd";
	}
	@RequestMapping(value = "/main")
	public String main_teacher() {
		
		return "member/main";
	}

	@RequestMapping(value = "/classMain")
	public String classMain(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		System.out.println("httpSession.getAttribute(\"sessSeq\") : " + httpSession.getAttribute("sessSeq"));
//		vo.setCtcsSeq(dto.getCtcsSeq() );
		System.out.println("dto.getCtcsSeq(); " + dto.getCtcsSeq());
		
		return "member/classroom/common/classMain";
	}
	@RequestMapping(value = "/classMemberList")
	public String classMemberList() {
		
		return "member/classroom/common/classMemberList";
	}
	@RequestMapping(value = "/classInvitation")
	public String classInvitation() {
		
		return "member/classroom/teacher/classInvitation";
	}
	

//규원
	@RequestMapping(value = "member/class/student/learningprogress", method = RequestMethod.GET)
	public String learnpro() {
		
		return "member/classroom/student/classLearningProgress";
	}
	
	
	
	@RequestMapping(value = "member/class/common/postlist", method = RequestMethod.GET)
	public String postlist() {
		
		return "member/classroom/common/classPostList";
	}
	@RequestMapping(value = "member/class/common/postdatalist", method = RequestMethod.GET)
	public String postdatalist() {
		
		return "member/classroom/common/classPostDataList";
	}
	@RequestMapping(value = "member/class/common/postpicturelist", method = RequestMethod.GET)
	public String postpicturelist() {
		
		return "member/classroom/common/classPostPictureList";
	}

	
	@RequestMapping(value = "member/class/teacher/homeworkreport", method = RequestMethod.GET)
	public String homeworkReport(){
		
		return "member/classroom/teacher/classHomeworkReport";
	}
	
	@RequestMapping(value = "member/class/teacher/homeworklist", method = RequestMethod.GET)
	public String homeworkList(){
		
		return "member/classroom/common/classHomeworkList";
	}
	

	@RequestMapping(value = "member/class/teacher/attendance", method = RequestMethod.GET)
	public String classattendance(){
		
		return "member/classroom/teacher/classAttendance";
	}
	@RequestMapping(value = "member/class/common/postview", method = RequestMethod.GET)
	public String classPostView(){
		
		return "member/classroom/common/classPostView";
	}
	@RequestMapping(value = "member/class/common/postedit", method = RequestMethod.GET)
	public String classPostEdit(){
		
		return "member/classroom/common/classPostEdit";
	}

	@RequestMapping(value = "member/class/common/postedit2", method = RequestMethod.GET)
	public String classPostEdit2(){
		
		return "member/classroom/common/classPostEdit2";
	}
	@RequestMapping(value = "member/class/common/classGrade", method = RequestMethod.GET)
	public String classGrade(){
		
		return "member/classroom/common/classGrade";
	}
	@RequestMapping(value = "member/class/common/classGraded", method = RequestMethod.GET)
	public String classGraded(){
		
		return "member/classroom/common/classGraded";
	}
	@RequestMapping(value = "member/class/common/classGradeStandby", method = RequestMethod.GET)
	public String classGradeStandby(){
		
		return "member/classroom/common/classGradeStandby";
	}

}