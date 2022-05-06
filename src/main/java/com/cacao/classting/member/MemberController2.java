package com.cacao.classting.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController2 {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController2.class);
	
	@RequestMapping(value = "member/class/student/learningprogress", method = RequestMethod.GET)
	public String learnpro() {
		
		return "member/classroom/student/classLearningProgress";
	}
	
	
	
	@RequestMapping(value = "member/class/common/postlist", method = RequestMethod.GET)
	public String postlist() {
		
		return "member/classroom/common/classPostList";
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
	
	

}
