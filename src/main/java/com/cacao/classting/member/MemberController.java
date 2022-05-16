package com.cacao.classting.member;

import java.util.HashMap;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cacao.classting.classroom.ClassRoom;
import com.cacao.classting.classroom.ClassRoomVo;
import com.cacao.classting.code.CodeServiceImpl;
import com.cacao.classting.common.constants.Constants;
import com.cacao.classting.common.util.UtilDateTime;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/index")
	public String index() {
		
		return "index/index";
	}
	
	@RequestMapping(value = "/main")
	public String main_teacher(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception  {
		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		System.out.println("httpSession.getAttribute(\"sessSeq\") : " + httpSession.getAttribute("sessSeq"));
		
		List<Member> list = service.selectListClass(vo);
		model.addAttribute("list", list);
		
		return "member/main";
	}
	
	@RequestMapping(value = "/memberForm_main")
	public String memberForm_main(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		model.addAttribute("CodeLogin", CodeServiceImpl.selectListCachedCode("7"));
		return "member/memberForm_main";
	}
	
	@RequestMapping(value = "/memberForm_user")
	public String memberForm_user(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception{
		
		model.addAttribute("CodeGender", CodeServiceImpl.selectListCachedCode("2"));
		model.addAttribute("CodeGrade", CodeServiceImpl.selectListCachedCode("3"));
		model.addAttribute("CodeLogin", CodeServiceImpl.selectListCachedCode("7"));
		
		return "member/memberForm_user";
	}
	
	@RequestMapping(value = "/memberInst")
	public String memberInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);

		return "redirect:/index";
	}
	@RequestMapping(value = "/memberInfo")
	public String memberInfo(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception {

		System.out.println("httpSession.getAttribute(\"sessSeq\"): " + httpSession.getAttribute("sessSeq"));
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		
		Member rt = service.selectOne(vo);
		model.addAttribute("item", rt);
		
		return "member/memberInfo";
	}
	
	@RequestMapping(value = "/memberInfoEdit")
	public String memberInfoEdit(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception{
		
		System.out.println("httpSession.getAttribute(\"sessSeq\"): " + httpSession.getAttribute("sessSeq"));
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		
		Member rt = service.selectOne(vo);
		model.addAttribute("rt", rt);
		
		return "member/memberInfoEdit";
	}
	@RequestMapping(value = "/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes,HttpSession httpSession) throws Exception{

		service.update(dto);
		
		System.out.println("httpSession.getAttribute(\"sessSeq\") update맞냐: " + httpSession.getAttribute("sessSeq"));
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );

//		vo.setMmSeq(dto.getMmSeq());
		redirectAttributes.addFlashAttribute("vo",vo);
		
		return "redirect:/memberInfo";
	}
	
//	아이디찾기
	@RequestMapping(value = "/findId")
	public String findId(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception{
		
		Member rt = service.selectOneId(dto);
		model.addAttribute("item", rt);
		
		return "member/findId";
	}
	
	@ResponseBody
	@RequestMapping(value = "member/getId", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> getId(Member dto, HttpSession httpSession, Model model) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneId(dto);
//		model.addAttribute("item", rt);
//		if(rtMember != null) {
////			rtMember = service.selectOneId(dto);
//			if(rtMember.getMmSeq() != null) {
////				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
//				System.out.println("rtMember.getMmSeq() : " + rtMember.getMmSeq());
//				System.out.println("rtMember.getMmDelNy() : " + rtMember.getMmDelNy());
//				httpSession.setAttribute("sessFISeq", rtMember.getMmSeq());
//				httpSession.setAttribute("sessFIId", rtMember.getMmId());
//				httpSession.setAttribute("sessFIName", rtMember.getMmName());
//				httpSession.setAttribute("sessFINumber", rtMember.getMmPhoneNumber());
//				
//				returnMap.put("rt", "success");
//			} else {
//				returnMap.put("rt", "fail1");
//			}
//		} else {
//			System.out.println("rtMember : " + rtMember);
//			returnMap.put("rt", "fail2");
//		}
		return returnMap;
	}
	@ResponseBody	
	@RequestMapping(value = "/member/outId")
	public Map<String, Object> outId(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		System.out.println("되등녀?");
		returnMap.put("rt", "success");
		return returnMap;
	}
//	비번찾기
	@RequestMapping(value = "/findPwd")
	public String findPwd(@ModelAttribute("vo") MemberVo vo, Member dto, Model model) throws Exception{
		
		Member rt = service.selectOnePassword(dto);
		model.addAttribute("item", rt);
		
		return "member/findPwd";
	}
	@ResponseBody
	@RequestMapping(value = "member/getPassword", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> getPassword(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOnePassword(dto);
		
		if(rtMember != null) {
//			rtMember = service.selectOnePassword(dto);
			if(rtMember.getMmSeq() != null) {
//				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				System.out.println("rtMember.getMmSeq() : " + rtMember.getMmSeq());
				System.out.println("rtMember.getMmName() : " + rtMember.getMmName());
				System.out.println("rtMember.getMmDelNy() : " + rtMember.getMmDelNy());
				httpSession.setAttribute("sessFPSeq", rtMember.getMmSeq());
				httpSession.setAttribute("sessFPId", rtMember.getMmId());
				httpSession.setAttribute("sessFPPassword", rtMember.getMmPassword());
				httpSession.setAttribute("sessFPName", rtMember.getMmName());
				httpSession.setAttribute("sessFPNumber", rtMember.getMmPhoneNumber());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail1");
			}
		} else {
			System.out.println("rtMember : " + rtMember);
			returnMap.put("rt", "fail2");
		}
		return returnMap;
	}
//	클래스생성
	
	@RequestMapping(value = "/classForm")
	public String classForm() throws Exception{
		
		return "member/classroom/teacher/classForm";
	}
	
	@RequestMapping(value = "/classForm2")
	public String classForm2() throws Exception{

		
		return "member/classroom/teacher/classForm2";
	}
	
	@RequestMapping(value = "/classInst")
	public String classInst(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		service.insertClass(dto);
		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		vo.setCtcsSeq(dto.getCtcsSeq());
		
		System.out.println("httpSession.getAttribute(\"sessSeq\") : " + httpSession.getAttribute("sessSeq"));
		System.out.println("vo.getCtcsSeq() inst: " +vo.getCtcsSeq());
		System.out.println("dto.getCtcsSeq() inst: " +dto.getCtcsSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/classForm3";
	}
	
	
	@RequestMapping(value = "/classForm3", method = RequestMethod.GET)
	public String classForm3(@ModelAttribute("vo") MemberVo vo, Model model, Member dto, HttpSession httpSession) throws Exception{
		
		Member rt = service.selectOneClass(vo);
		model.addAttribute("item", rt);
		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		System.out.println("httpSession.getAttribute(\"sessSeq\") : " + httpSession.getAttribute("sessSeq"));

		
		return "member/classroom/teacher/classForm3";
	}
	@RequestMapping(value = "/classMemberInst")
	public String classMemberInst(Member dto, MemberVo vo, Model model, RedirectAttributes redirectAttributes, HttpSession httpSession) throws Exception {
		
		service.insertClassMember(dto);
		 
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		System.out.println("httpSession.getAttribute(\"sessSeq\") : " + httpSession.getAttribute("sessSeq"));
		System.out.println("dto.getCtcsSeq() : " +vo.getCtcsSeq());
		
		redirectAttributes.addFlashAttribute("vo",vo);
		return "redirect:/main";
	}
	
	
	@RequestMapping(value = "/classList")
	public String classList(@ModelAttribute("vo") MemberVo vo, Member dto, Model model, HttpSession httpSession) throws Exception {
		
		vo.setMmSeq((String) httpSession.getAttribute("sessSeq") );
		System.out.println("httpSession.getAttribute(\"sessSeq\") : " + httpSession.getAttribute("sessSeq"));
		
		List<Member> list = service.selectListClass(vo);
		model.addAttribute("list", list);
		
		return "member/classList";
	}
	
//	기본로그인
	@ResponseBody
	@RequestMapping(value = "member/loginProc", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null) {
//			rtMember = service.selectOneLogin(dto);
			if(rtMember.getMmSeq() != null) {
//				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				
				httpSession.setAttribute("sessSeq", rtMember.getMmSeq());
				httpSession.setAttribute("sessId", rtMember.getMmId());
				httpSession.setAttribute("sessName", rtMember.getMmName());
				httpSession.setAttribute("sessTeacher", rtMember.getMmTeacherNy());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody	//	로그아웃
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	//페북 로그인
		@ResponseBody
		@RequestMapping(value = "/member/FBLgProc")
		public Map<String, Object> FBLgProc(@RequestParam("mmName")String name, Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			System.out.println("페북"+name);
			httpSession.setAttribute("sessName", name);
			httpSession.setAttribute("sessId","페이스북 회원입니다");
			httpSession.setAttribute("sessSeq","페이스북 회원입니다");
			
			returnMap.put("item", "success");
			
			return returnMap;	
		}
	
	
// admin member
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

		@RequestMapping(value = "/adminMemberList" /*method = RequestMethod.GET*/)
		public String adminMemberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
			vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
			vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getShDateEnd()));

			
			vo.setShOptionDate(vo.getShOptionDate() == null ? 0 : vo.getShOptionDate());
			vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
			vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
			
			int count = service.selectOneCountMember(vo);
			vo.setParamsPaging(count);
			if(count !=0) {
				List<Member> list = service.selectListMember(vo);
				model.addAttribute("list", list);
			
			}
			else {
			//by pass	
				
			}
			return "xdmin/member/adminMemberList";
		}
	
	
	
	//------------------------------------------------------------------------------------------------------------
		
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
				
		return "member/include/classCommon";
	}
	@RequestMapping(value = "/basetemplate", method = RequestMethod.GET)
	public String baseTemplate() {
		
		return "member/include/classBaseTemplate";
		
	}
	@RequestMapping(value = "/include", method = RequestMethod.GET)
	public String include() {
		
		return "member/include/classCommon";
	}
	
	@RequestMapping(value = "/side", method = RequestMethod.GET)
	public String side() {
		
		return "member/include/classSidebar";
	}
	
	@RequestMapping(value = "/nav", method = RequestMethod.GET)
	public String nav() {
		
		return "member/include/classNavbar";
	}
}
