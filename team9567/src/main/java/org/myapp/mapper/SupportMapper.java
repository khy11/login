package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;

public interface SupportMapper {
	public List<SupportVO> getSupport();
	
	public List<SupportVO> getSupportWithPaging(Criteria cri);
	
	public void insertSelectKey(SupportVO vo);
	
	public Long count(Criteria cri);
	
	public void delete(Long supportNo);
	
	public SupportVO read(Long supportNo);
	
	public int update(SupportVO vo);
}
