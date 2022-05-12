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

import com.cacao.classting.code.CodeServiceImpl;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index/index";
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
	
	
	
	@RequestMapping(value = "/classList")
	public String test() {
		
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
