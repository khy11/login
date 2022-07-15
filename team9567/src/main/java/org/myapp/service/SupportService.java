package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;

public interface SupportService {
	public List<SupportVO> getSupport(Criteria cri);
	
	public Long count(Criteria cri);
	
	public void register(SupportVO vo);
	
	public void remove(Long supportNo);
	
	public SupportVO get(Long supportNo);
	
	public boolean modify(SupportVO vo);
}
