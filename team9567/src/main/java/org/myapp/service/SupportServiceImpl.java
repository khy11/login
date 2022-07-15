package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;
import org.myapp.mapper.SupportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class SupportServiceImpl implements SupportService {
	private SupportMapper supportMapper;
	
	@Override
	public List<SupportVO> getSupport(Criteria cri) { 
		return supportMapper.getSupportWithPaging(cri);
	}
	
	@Override
	public Long count(Criteria cri) {
		return supportMapper.count(cri);
	}
	
	@Override
	public void register(SupportVO vo) {
		supportMapper.insertSelectKey(vo);
	}
	
	@Override
	public void remove(Long supportNo) {
		supportMapper.delete(supportNo);
	}
	
	@Override
	public SupportVO get(Long supportNo) {
		return supportMapper.read(supportNo);
	}
	
	@Override
	public boolean modify(SupportVO vo) {
		return (supportMapper.update(vo) == 1);
	}
}
