package org.myapp.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Criteria {
	private int pageNum=1;
	private int amount=10;
	
	public Criteria() {
		
	}
	
	private String type;
	private String keyword;
	
	private String ctype;
	private String ckeyword;
	
	public String[] getTypeArr() {
		return type==null? new String[] {} : type.split("");
	}
	
	public String[] getCtypeArr() {
		return ctype==null? new String[] {} : ctype.split("");
	}
	
}
