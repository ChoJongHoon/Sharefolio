package kr.ac.inhatc.mvc.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginGET() {
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginPOST(String id, HttpSession session, HttpServletResponse resopnse) throws Exception {
		session.setAttribute("id", id);
		resopnse.sendRedirect("/portfolio");
		return "login";
	}
}
