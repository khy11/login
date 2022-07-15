package org.myapp.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ContractVO {
	private Long ContractNo;
	private String PartsSupply;
	private String TransferConditions;
	private Long UnitPrice;
	private Long PartCode;
	private Long Code;
	private Date ContractDate;
	private String PartName;
	private String Name;
}
