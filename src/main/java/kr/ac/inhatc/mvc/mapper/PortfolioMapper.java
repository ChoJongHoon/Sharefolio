package kr.ac.inhatc.mvc.mapper;

import java.util.HashMap;
import java.util.List;

public interface PortfolioMapper {
	
	public List<?> selectPortfolioList(String user_id) throws Exception;
	
	public int insertPortfolio(HashMap<String, String> map) throws Exception;
	
	public HashMap selectPortfolioOne(String no) throws Exception;

	public int updatePortfolio(HashMap<String, String> map) throws Exception;

	public int deletePortfolio(String no) throws Exception;
}