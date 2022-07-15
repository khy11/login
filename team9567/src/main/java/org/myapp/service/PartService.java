package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.PartVO;

public interface PartService {
	public List<PartVO> getPart(Criteria cri);
	
	public Long count(Criteria cri);
	
	public void register(PartVO vo);
	
	public void remove(Long partCode);
	
	public PartVO get(Long partCode);
	
	public boolean modify(PartVO vo);
}
