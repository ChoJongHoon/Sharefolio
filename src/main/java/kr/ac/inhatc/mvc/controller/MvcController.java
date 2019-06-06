package kr.ac.inhatc.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MvcController {
	@RequestMapping("/")
	public String index() {
		return "portfolio";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
}
