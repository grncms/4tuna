package com.cacao.classting.member;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/index")
	public String index() {
		
		return "index/index";
	}
	
//	기본로그인
	@ResponseBody
	@RequestMapping(value = "member/loginProc", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null) {
			rtMember = service.selectOneLogin(dto);
			if(rtMember.getMmSeq() != null) {
//				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
				
				httpSession.setAttribute("sessSeq", rtMember.getMmSeq());
				httpSession.setAttribute("sessId", rtMember.getMmId());
				httpSession.setAttribute("sessName", rtMember.getMmName());
				
				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	
	
	
	
	
	
	
	
	
	
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
