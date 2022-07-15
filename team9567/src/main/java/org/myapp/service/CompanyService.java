package org.myapp.service;

import java.util.List;

import org.myapp.domain.CompanyVO;
import org.myapp.domain.Criteria;

public interface CompanyService {
	public List<CompanyVO> getCompany(Criteria cri);
	
	public Long count(Criteria cri);
	
	public void register(CompanyVO vo);
	
	public void remove(Long code);
	
	public CompanyVO get(Long code);
	
	public boolean modify(CompanyVO vo);
}
