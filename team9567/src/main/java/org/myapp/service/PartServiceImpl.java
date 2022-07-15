package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.PartVO;
import org.myapp.mapper.PartMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PartServiceImpl implements PartService {
	private PartMapper partMapper;
	
	@Override
	public List<PartVO> getPart(Criteria cri) { 
		return partMapper.getPartWithPaging(cri);
	}
	
	@Override
	public Long count(Criteria cri) {
		return partMapper.count(cri);
	}
	
	@Override
	public void register(PartVO vo) {
		partMapper.insertSelectKey(vo);
	}
	
	@Override
	public void remove(Long partCode) {
		partMapper.delete(partCode);
	}
	
	@Override
	public PartVO get(Long partCode) {
		return partMapper.read(partCode);
	}
	
	@Override
	public boolean modify(PartVO vo) {
		return (partMapper.update(vo) == 1);
	}
}
