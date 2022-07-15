package org.myapp.domain;

import lombok.Data;

@Data
public class PageDTO {
	private boolean prev, next;
	private int startPage, endPage;
	
	private Long total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, Long total) {
		this.cri=cri;
		this.total=total;
		
		endPage = (int) Math.ceil(cri.getPageNum() / 10.0) * 10;
		startPage = endPage-9;
		prev = startPage > 1;
		
		int realEnd = (int) Math.ceil(total*1.0 / cri.getAmount());
		
		if(endPage > realEnd) {
			endPage = realEnd;
		}
		next = endPage < realEnd;
	}

}
