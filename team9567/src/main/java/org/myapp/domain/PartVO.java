package org.myapp.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PartVO {
	private Long PartCode;
	private String PartName;
	private String NickName;
	private String Library;
	private String Remark;
	private Long Common;
	private Long Drw_No;
	private String Drw_Img;
	
	private List<AttachVO> attachList;
}
