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
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
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
