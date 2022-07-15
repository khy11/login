package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.PartVO;
import org.myapp.domain.Criteria;

public interface PartMapper {
	/* public List<PartVO> getPart(); */
	
	public List<PartVO> getPartWithPaging(Criteria cri);
	
	public void insertSelectKey(PartVO vo);
	
	public Long count(Criteria cri);
	
	public void delete(Long partCode);
	
	public PartVO read(Long partCode);
	
	public int update(PartVO vo);
}
