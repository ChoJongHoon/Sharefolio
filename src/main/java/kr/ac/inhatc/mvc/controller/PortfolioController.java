package kr.ac.inhatc.mvc.controller;


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
	public ModelAndView portfolio(String user_id) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("portfolioList", portfolioService.selectPortfolioList(user_id));
		mv.addObject("user_id", user_id);
		mv.setViewName("portfolio");
		return mv;
	}

	@RequestMapping("/")
	public String index() {
		return "portfolio";
	}
}
