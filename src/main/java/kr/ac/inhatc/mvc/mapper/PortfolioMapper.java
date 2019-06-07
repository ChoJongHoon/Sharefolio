package kr.ac.inhatc.mvc.mapper;

import java.util.List;

public interface PortfolioMapper {
	
	public List<?> selectPortfolioList(String user_id) throws Exception;

}