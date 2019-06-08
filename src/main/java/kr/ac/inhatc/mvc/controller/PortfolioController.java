package kr.ac.inhatc.mvc.controller;


import java.util.HashMap;

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
	
	@RequestMapping("/newPortfolio")
	public ModelAndView newPortfolio(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String sessionId = "";
		if(request.getSession().getAttribute("id") == null) {
			response.sendRedirect("/login");
		}else {
			sessionId = request.getSession().getAttribute("id").toString();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", sessionId);
		mv.setViewName("newPortfolio");
		return mv;
	}
	
	@RequestMapping("/insertPortfolio.do")
	public ModelAndView insertPortfolio(String user_id, String title, String content, String tech, String img_url, String github_url, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HashMap<String, String> hashMap = new HashMap<String, String>();
		hashMap.put("user_id", user_id);
		hashMap.put("title", title);
		hashMap.put("content", content);
		hashMap.put("tech", tech);
		hashMap.put("img_url", img_url);
		hashMap.put("github_url", github_url);
		portfolioService.insertPortfolio(hashMap);
		response.sendRedirect("/portfolio");
		return portfolio(request, response);
	}
	
	@RequestMapping("/detailPortfolio.do")
	public ModelAndView detailPortfolio(String no) throws Exception{
		ModelAndView mv = new ModelAndView();
		mv.addObject("portfolio", portfolioService.selectPortfolioOne(no));
		mv.setViewName("detailPortfolio");
		return mv;
	}
	
//	@RequestMapping("/updatePortfolio")
//	public ModelAndView updatePortfolio(String no) throws Exception{
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("portfolio", portfolioService.selectPortfolioOne(no));
//		mv.setViewName("updatePortfolio");
//		return mv;
//	}
}
