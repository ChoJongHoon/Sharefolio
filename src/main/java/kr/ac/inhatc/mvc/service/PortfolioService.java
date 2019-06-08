package kr.ac.inhatc.mvc.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.inhatc.mvc.mapper.PortfolioMapper;

@Service
public class PortfolioService {
	@Autowired
	PortfolioMapper portfolio;
	 
	public List<?> selectPortfolioList(String user_id) throws Exception {
		return portfolio.selectPortfolioList(user_id);
	}
	
	public int insertPortfolio(HashMap<String, String> map) throws Exception{
		return portfolio.insertPortfolio(map);
	}

	public HashMap selectPortfolioOne(String no) throws Exception {
		return portfolio.selectPortfolioOne(no);
	}

	public int updatePortfolio(HashMap<String, String> map) throws Exception{
		return portfolio.updatePortfolio(map);
	}

}