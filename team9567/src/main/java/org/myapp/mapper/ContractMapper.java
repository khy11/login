package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.ContractVO;
import org.myapp.domain.Criteria;

public interface ContractMapper {
	/* public List<ContractVO> getContract(); */
	
	public List<ContractVO> getContractWithPaging(Criteria cri);
	
	public void insertSelectKey(ContractVO vo);
	
	public Long count(Criteria cri);
	
	public void delete(Long partCode);
	
	public ContractVO read(Long partCode);
	
	public int update(ContractVO vo);
}
