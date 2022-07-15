package org.myapp.service;

import java.util.List;

import org.myapp.domain.ContractVO;
import org.myapp.domain.Criteria;

public interface ContractService {
	public List<ContractVO> getContract(Criteria cri);
	
	public Long count(Criteria cri);
	
	public void register(ContractVO vo);
	
	public void remove(Long partCode);
	
	public ContractVO get(Long partCode);
	
	public boolean modify(ContractVO vo);
}
