package org.myapp.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CompanyVO {
	private Long Code;
	private String Name;
	private String Business_Number;
	private String Taxcode;
	private String Owner;
	private String Contact;
	private String Address;
	private String Account;
	private String Company_Size;
	private String Category;
	private Long Sales;
	private String Deal_Type;
	private String Domestic_Foreign;
	private String Currency;
	private Date Start_Date;
	private Date End_Date;
	private String Invoice_Issue;
}
