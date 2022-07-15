package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.AttachVO;

public interface AttachMapper {
	public void insert(AttachVO vo);
	
	public void delete(String uuid);
	
	public List<AttachVO> findByPartCode(Long partCode);
}
