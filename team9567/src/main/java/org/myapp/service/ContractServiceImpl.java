package org.myapp.service;

import java.util.List;

import org.myapp.domain.ContractVO;
import org.myapp.domain.Criteria;
import org.myapp.mapper.CompanyMapper;
import org.myapp.mapper.ContractMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ContractServiceImpl implements ContractService {
	private ContractMapper contractMapper;
	
	@Override
	public List<ContractVO> getContract(Criteria cri) { 
		return contractMapper.getContractWithPaging(cri);
	}
	
	@Override
	public Long count(Criteria cri) {
		return contractMapper.count(cri);
	}
	
	@Override
	public void register(ContractVO vo) {
		contractMapper.insertSelectKey(vo);
	}
	
	@Override
	public void remove(Long partCode) {
		contractMapper.delete(partCode);
	}
	
	@Override
	public ContractVO get(Long partCode) {
		return contractMapper.read(partCode);
	}
	
	@Override
	public boolean modify(ContractVO vo) {
		return (contractMapper.update(vo) == 1);
	}
}
