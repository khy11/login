package org.myapp.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SupportVO {
	private Long SupportNo;
	private Long PartCode;
	private String MaterialProcess;
	private Date DaySchedule;
	private Long Requirement;
	private Date DeliveryDate;
	private String PartName;
}
