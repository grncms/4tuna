package com.cacao.classting.member;

public class MemberVo {

	private String mmSeq;
	private String ctcsSeq;

	private String mmName;
	private String mmPhoneNumber;
	private Integer mmDelNy;
	
	public String getMmSeq() {
		return mmSeq;
	}

	public void setMmSeq(String mmSeq) {
		this.mmSeq = mmSeq;
	}

	public String getCtcsSeq() {
		return ctcsSeq;
	}

	public void setCtcsSeq(String ctcsSeq) {
		this.ctcsSeq = ctcsSeq;
	}

	public String getMmName() {
		return mmName;
	}

	public void setMmName(String mmName) {
		this.mmName = mmName;
	}

	public String getMmPhoneNumber() {
		return mmPhoneNumber;
	}

	public void setMmPhoneNumber(String mmPhoneNumber) {
		this.mmPhoneNumber = mmPhoneNumber;
	}

	public Integer getMmDelNy() {
		return mmDelNy;
	}

	public void setMmDelNy(Integer mmDelNy) {
		this.mmDelNy = mmDelNy;
	}

}
