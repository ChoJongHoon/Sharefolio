package kr.ac.inhatc.mvc.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.inhatc.mvc.service.PortfolioService;

@Controller
public class PortfolioController {

	@Autowired
	PortfolioService portfolioService;

	@RequestMapping("/portfolio")
	public ModelAndView portfolio(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sessionId = "";
		if(request.getSession().getAttribute("id") == null) {
			response.sendRedirect("/login");
		}else {
			sessionId = request.getSession().getAttribute("id").toString();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("portfolioList", portfolioService.selectPortfolioList(sessionId));
		mv.addObject("user_id", sessionId);
		mv.setViewName("portfolio");
		return mv;
	}

	@RequestMapping("/")
	public String index() {
		return "portfolio";
	}
}
