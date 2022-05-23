package com.cacao.classting.classroom;


import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cacao.classting.common.constants.Constants;
import com.cacao.classting.common.util.UtilDateTime;
import com.cacao.classting.member.Member;
import com.cacao.classting.member.MemberVo;



@Controller
public class ClassRoomController {
	
	@Autowired
	ClassRoomServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(ClassRoomController.class);


	@RequestMapping(value = "/classStudentForm")
	public String classStudentForm(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "member/classroom/student/classStudentForm";
	}
	@RequestMapping(value = "/classMemberView")
	public String classMemberView(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "member/classroom/common/classMemberView";
	}
	@RequestMapping(value = "/noticeBoard")
	public String classNoticeList(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		List<ClassRoom> list = service.selectListPost(vo);
		model.addAttribute("list", list);
		
		return "member/classroom/common/noticeBoard";
	}

	@RequestMapping(value = "/adminClassList"/*  */)
	public String adminClassList(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
		System.out.println("UtilDateTime.nowLocalDateTime()" + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate()"+UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString()"+UtilDateTime.nowString());
		
		 
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getShDateEnd()));

		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 0 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		
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
	@RequestMapping(value = "/adminClassView")
	public String adminClassView(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
			ClassRoom item = service.selectOneClass(vo);
			model.addAttribute("item", item);
			
			  List<ClassRoom> list = service.selectListClassMember(vo);
			  model.addAttribute("list", list);
			 
		return "xdmin/member/classroom/adminClassView";
	}

	@RequestMapping(value = "/deleteClass") 
	public String deleteClass(ClassRoomVo vo , RedirectAttributes redirectAttributes ) throws Exception {
		  service.deleteClass(vo);
			
		  
		  return "redirect:/adminClassList";
	  }
	
	@RequestMapping(value = "/deleteClassMulti") 
	public String deleteClassMulti(ClassRoomVo vo, RedirectAttributes redirectAttributes) throws Exception {

		  String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		  System.out.println("vo.getCheckboxSeqArray():" + vo.getCheckboxSeqArray());
		  for(String checkboxSeq : checkboxSeqArray) {
			  vo.setCtcsSeq(checkboxSeq);
			  service.deleteClassMulti(vo);
		  }
		  
		   
		  
		  
		  return "redirect:/adminClassList";
	  }


	@RequestMapping(value = "/classBoardUpload")
	public String postUpload(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "member/classroom/common/classBoardUpload";
	}
	

	@RequestMapping(value = "/member/classroom/common/classPostInst")
	public String classPostInst(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, String temp, Model model, HttpSession httpSession) throws Exception {

		System.out.println("dto.getCtptTitle(): " + dto.getCtptTitle());
		System.out.println("dto.getCtptContent(): " + dto.getCtptContent());
		httpSession.getAttribute("sessSeq");
		
		// 로그인 세션값인 로그인아이디 정보를 가져와서 writer 에다가 세팅하는 작업입니다. 
		dto.setCtptWriter(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
		
		// 임시저장인지 아닌지 확인하는 메서드
		if(temp.equals("temp")) {
			System.out.println("input 값 체크 : " + dto.toString());
			
			dto.setCtboSeq("4");
			
			int result = service.insertPost(dto);
			
			vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
			System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

			List<ClassRoom> memberList = service.selectListClassMember(vo);
			model.addAttribute("memberList", memberList);
			
			List<ClassRoom> list = service.selectListStorage(vo);
			model.addAttribute("list", list);
			
			return "member/classroom/common/classStorage";
		}else {
			System.out.println("input 값 체크 : " + dto.toString());
			// 입력을 작동시킨다.
			int result = service.insertPost(dto);
			
			vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
			System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
			
//			게시물 리스트 불러오기
			List<ClassRoom> list = service.selectListPost(vo);
			model.addAttribute("list", list);
			
//			회원리스트 불러오기
			List<ClassRoom> memberList = service.selectListClassMember(vo);
			model.addAttribute("memberList", memberList);
			
			
			System.out.println("result: " + result);

			return "member/classroom/common/classMain";
		}
		
	}	
	
	@RequestMapping(value = "/classStorage")
	public String classStorage(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		List<ClassRoom> list = service.selectListStorage(vo);
		model.addAttribute("list", list);
		
		return "member/classroom/common/classStorage";
	}
	
	@RequestMapping(value = "/classPostEdit")
	public String classPostEdit3(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "member/classroom/common/classPostEdit";
	}

	@RequestMapping(value = "/classSetting")
	public String classSetting(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "member/classroom/teacher/classSetting";
	}	


	@RequestMapping(value = "/chat")
	public String chat(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "chat/chat";
	}	




	@RequestMapping(value = "/classMain")
	public String classMain(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {

		if(vo.getCtcsSeq() != null) {
			httpSession.setAttribute("ctcsSeq", vo.getCtcsSeq());
		}

		//사이드바 구현을 위한  
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		httpSession.setAttribute("ctcsSeq", vo.getCtcsSeq());

		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		
		
		System.out.println("vo.getMmSeq :" + vo.getMmSeq());
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
		ClassRoom rt = service.selectOneSidebar(vo);
		model.addAttribute("item", rt);

//		클래스 입장 하면서 세션에 스페이스이름 값 세팅 => 사이드바 include 파일에서 활용
		httpSession.setAttribute("ctcsYear", rt.getCtcsYear());
		httpSession.setAttribute("ctcsName", rt.getCtcsName());
		httpSession.setAttribute("ctcmSeq", rt.getCtcmSeq());
		httpSession.setAttribute("ctcmName", rt.getCtcmName());
		httpSession.setAttribute("teacherNy", rt.getCtcmTeacherNy());
		
		
		System.out.println("httpSession.setAttribute(\"ctcsName\", rt.getCtcsName()) : " + rt.getCtcsName());
		System.out.println("httpSession.setAttribute(\"ctcsName\", rt.getCtcsYear()) : " + rt.getCtcsYear());
		System.out.println("httpSession.setAttribute(\"ctcmSeq\", rt.getCtcmSeq()) : " + rt.getCtcmSeq());
		System.out.println("httpSession.setAttribute(\"ctcmSeq\", rt.getCtcmName()) : " + rt.getCtcmName());
		System.out.println("httpSession.setAttribute(\"ctcsName\", rt.getCtcmTeacherNy()) : " + rt.getCtcmTeacherNy());

//		클래스 리스트 불러오기
		List<ClassRoom> list = service.selectListPost(vo);
		model.addAttribute("list", list);
//		회원리스트 불러오기
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		//출석 체크
		String today = LocalDate.now().toString();
		String now = LocalDateTime.now().toString();
		
		ClassRoom attendance = service.getClassId(vo); // mmseq와 ctcsseq로 ctcmseq를 조회
		
		System.out.println("오늘:" + today);
		System.out.println("클래스멤버" + attendance.getCtcmSeq());
		
		attendance.setCtadRegDateTime(now); //attendance에 지금 시각 기록
		attendance.setAttendanceToday(today); //오늘날짜 기록
		
		System.out.println("입장시간:" + attendance.getCtadRegDateTime());
		System.out.println("클래스멤버번호:" + attendance.getCtcmSeq());
		System.out.println("오늘날짜:" + attendance.getAttendanceToday());
		int todayEnterNum = service.today(attendance); //오늘 입장 횟수 조회
		System.out.println("등록된 멤버수: "+ todayEnterNum);
		
		  if(todayEnterNum < 1 && rt.getCtcmTeacherNy()==0 ) {
			  service.attendance(attendance) ; 
			  System.out.println("출석부에 등록"); 
		  }else {
			  System.out.println("오늘 이미 출석기록이 있거나 선생님입니다.");
		  }
		return "member/classroom/common/classMain";
	}
	
	@RequestMapping(value = "/classMemberList")
	public String classMemberList(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

		List<ClassRoom> list = service.selectListClassMember(vo);
		model.addAttribute("list", list);
		
		return "member/classroom/common/classMemberList";
	}
	
	@RequestMapping(value = "/classInvitation")
	public String classInvitation(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
		ClassRoom rt = service.selectOneClassInfo(vo);
		model.addAttribute("item", rt);
		
		return "member/classroom/teacher/classInvitation";
	}
	


	@RequestMapping(value = "member/class/student/learningprogress")
	public String learnpro(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) {
		
		return "member/classroom/student/classLearningProgress";
	}
	
	
	
	@RequestMapping(value = "member/class/common/postlist")
	public String postlist(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
//		게시물 리스트 불러오기
		List<ClassRoom> list = service.selectListPost(vo);
		model.addAttribute("list", list);
		
//		회원리스트 불러오기
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		return "member/classroom/common/classPostList";
	}
	@RequestMapping(value = "member/class/common/postdatalist")
	public String postdatalist(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

//		게시물 리스트 불러오기
		List<ClassRoom> list = service.selectListPost(vo);
		model.addAttribute("list", list);
		
//		회원리스트 불러오기
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		return "member/classroom/common/classPostDataList";
	}
	@RequestMapping(value = "member/class/common/postpicturelist")
	public String postpicturelist(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

//		게시물 리스트 불러오기
		List<ClassRoom> list = service.selectListPost(vo);
		model.addAttribute("list", list);
		
//		회원리스트 불러오기
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		return "member/classroom/common/classPostPictureList";
	}

	
	@RequestMapping(value = "member/class/teacher/homeworkreport")
	public String homeworkReport(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession){
		
		return "member/classroom/teacher/classHomeworkReport";
	}
	
	@RequestMapping(value = "member/class/teacher/homeworklist")
	public String homeworkList(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		List<ClassRoom> list = service.selectListHomework(vo);
		model.addAttribute("list", list);
		
		return "member/classroom/common/classHomeworkList";
	}
	

	@RequestMapping(value = "member/class/teacher/attendance")
	public String classattendance(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession){
		System.out.println("출석부 :" +  httpSession.getAttribute("sessSeq"));
		return "member/classroom/teacher/classAttendance";
	}
	
	@RequestMapping(value = "member/class/common/postview")
	public String classPostView(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		service.hitUpdate(dto); //조회수 증가
		
//		게시물
		ClassRoom rt = service.selectOneClassPost(vo);
		model.addAttribute("item", rt);

//		멤버리스트
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
//		댓글리스트
		List<ClassRoom> replyList = service.selectListReply(vo);
		model.addAttribute("replyList", replyList);
		
		System.out.println("vo.getCtptSeq():"+vo.getCtptSeq());
		
		
		return "member/classroom/common/classPostView";
	}
	@RequestMapping(value = "member/class/common/replyInst")
	public String replyInst(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
//		댓글등록
		service.insertReply(dto);
		
		System.out.println("dto.getCtrpWriter() : "+dto.getCtrpWriter());
		System.out.println("되능겨?");
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/class/common/postview";
	}
	
	@RequestMapping(value = "member/class/common/homeworkPostView")
	public String homeworkPostView(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
//		멤버리스트
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
//		homeworkPostView
		ClassRoom rt = service.selectOneHomeworkSubmit(vo);
		model.addAttribute("item", rt);
		
		return "member/classroom/common/classHomeworkPostView";
	}
//	과제점수 업데이트
	@RequestMapping(value = "member/class/common/submitScoreUpdt")
	public String submitScoreUpdt(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, RedirectAttributes redirectAttributes,HttpSession httpSession) throws Exception{

		service.updateHomeworkSubmitScore(dto);
		
		vo.setCthpSeq(dto.getCthpSeq());
		vo.setCthsSeq(dto.getCthsSeq());
		System.out.println("cthsSeq : "+vo.getCthsSeq());
		System.out.println("cthpSeq : "+vo.getCthpSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/member/class/common/homeworkview";
	}
	
//	모든과제
	@RequestMapping(value = "member/class/common/homeworkview")
	public String postHomeworkview(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq"));
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getMmSeq :" + vo.getMmSeq());
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());

		ClassRoom rt2 = service.selectOneSidebar(vo);
		model.addAttribute("item", rt2);

//		homeworkView
		ClassRoom rt = service.selectOneClassHomework(vo);
		model.addAttribute("item", rt);
//		
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);

//		selectListHomeworkSubmit : 해당 과제에 과제물 제출 목록
		List<ClassRoom> submitList = service.selectListHomeworkSubmit(vo);
		model.addAttribute("submitList", submitList);
		
		
		System.out.println("vo.getCthpSeq() : "+vo.getCthpSeq());
		
		httpSession.setAttribute("teacherNy", rt2.getCtcmTeacherNy());
		System.out.println("httpSession.setAttribute(\"ctcsName\", rt2.getCtcmTeacherNy()) : " + rt2.getCtcmTeacherNy());
		
//		homeworkPostView(학생화면)
//		제출
//		제출한 과제 보여주기

		
		return "member/classroom/common/classHomeworkView";
		
	}
//	과제제출(학생)
	@RequestMapping(value = "/member/classroom/common/homeworkSubmitInst")
	public String homeworkSubmitInst(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession, RedirectAttributes redirectAttributes) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
//		댓글등록
		service.insertHomeworkSubmit(dto);
		
		System.out.println("dto.getCtrpWriter() : "+dto.getCtrpWriter());
		System.out.println("되능겨?");
		
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/member/class/common/homeworkview";
	}
	@RequestMapping(value = "member/class/student/classHomeworkView_student")
	public String classHomeworkView_student(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
		
//		homeworkView
		ClassRoom rt = service.selectOneClassHomework(vo);
		model.addAttribute("item", rt);
		
//		
		List<ClassRoom> memberList = service.selectListClassMember(vo);
		model.addAttribute("memberList", memberList);
		
		
		return "member/classroom/student/classHomeworkView_student";
	}
	@RequestMapping(value = "member/class/common/postedit")
	public String classPostEdit(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
		return "member/classroom/common/classPostEdit";
	}

	@RequestMapping(value = "member/class/common/postedit2")
	public String classPostEdit2(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession){
		
		return "member/classroom/common/classPostEdit2";
	}
	@RequestMapping(value = "member/class/common/classGrade")
	public String classGrade(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession){
		
		return "member/classroom/common/classGrade";
	}
	@RequestMapping(value = "member/class/common/classGraded")
	public String classGraded(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession) throws Exception{
		
//		System.out.println("여긴 graded");
//		vo.setMmSeq((String) httpSession.getAttribute("sessSeq"));
//		vo.setCtcsSeq((String) httpSession.getAttribute("ctcsSeq"));
//		System.out.println("vo.getMmSeq :" + vo.getMmSeq());
//		System.out.println("vo.getCtcsSeq :" + vo.getCtcsSeq());
//
//		ClassRoom rt = service.selectOneHomeworkSubmitStudent(vo);
//		model.addAttribute("itemSubmit", rt);
//		
		return "member/classroom/common/classGraded";
	}
	@RequestMapping(value = "member/class/common/classGradeStandby")
	public String classGradeStandby(@ModelAttribute("vo") ClassRoomVo vo, ClassRoom dto, Model model, HttpSession httpSession){
		
		return "member/classroom/common/classGradeStandby";
	}

}