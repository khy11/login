package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.CompanyVO;
import org.myapp.domain.Criteria;

public interface CompanyMapper {
	public List<CompanyVO> getCompany();
	
	public List<CompanyVO> getCompanyWithPaging(Criteria cri);
	
	public void insertSelectKey(CompanyVO vo);
	
	public Long count(Criteria cri);
	
	public void delete(Long code);
	
	public CompanyVO read(Long code);
	
	public int update(CompanyVO vo);
}
