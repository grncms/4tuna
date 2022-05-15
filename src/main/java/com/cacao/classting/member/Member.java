package com.cacao.classting.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Member {

//	Member
	private String mmSeq;
	private String mmName;
	private String mmId;
	private String mmPassword;
	private String mmMemberEmail;
	private String mmDesc;
	private Integer mmAdminNy;
	private Integer mmDormacyNy;
	private Integer mmTeacherNy;
	private Integer mmSchoolCd;
	private Integer mmGradeCd;
	private Integer mmGenderCd;
	private Integer mmTypeOfLoginCd;
	private Integer mmTermsOfserviceNy;
	private Integer mmEventNotificationNy;
	private Integer mmPersonalInfoNy;
	private Integer mmAlarmInvitationNy;
	private Integer mmAlarmReplyNy;
	private Integer mmDelNy;
	private String mmPhoneNumber;
	private Date mmPwdModDate;
	private String mmDob;
	private Date regDateTime;
	private Date regDateTimeSvr;
	private Date modDateTime;
	private Date modDateTimeSvr;
	
	private String ctcsSeq;
	private String ctcsBelongto;
	private String ctcsName;
	private String ctcsYear;
	private Integer ctcsGradeCd;
	private String ctcsDesc;
	private String ctcsCode;
	private Integer ctcsDelNy;
	
	private String ctcmName;
	private Integer ctcmAlarmReplyNy;
	private Integer ctcmAlarmReactionNy;
	private Integer ctcmDelNy;
	
	private String tableName;
	private String seq;
	private Integer type;
	private String uuidName;
	private String originalName;
	private Integer defaultNy;
	private Integer sort;
	private String ext;
	private long size;
	private Integer delNy;
	private String pseq;
	
	private MultipartFile[] file0;
	private MultipartFile[] file1;
	
	public String getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(String mmSeq) {
		this.mmSeq = mmSeq;
	}
	public String getMmName() {
		return mmName;
	}
	public void setMmName(String mmName) {
		this.mmName = mmName;
	}
	public String getMmId() {
		return mmId;
	}
	public void setMmId(String mmId) {
		this.mmId = mmId;
	}
	public String getMmPassword() {
		return mmPassword;
	}
	public void setMmPassword(String mmPassword) {
		this.mmPassword = mmPassword;
	}
	public String getMmMemberEmail() {
		return mmMemberEmail;
	}
	public void setMmMemberEmail(String mmMemberEmail) {
		this.mmMemberEmail = mmMemberEmail;
	}
	public String getMmDesc() {
		return mmDesc;
	}
	public void setMmDesc(String mmDesc) {
		this.mmDesc = mmDesc;
	}
	public Integer getMmAdminNy() {
		return mmAdminNy;
	}
	public void setMmAdminNy(Integer mmAdminNy) {
		this.mmAdminNy = mmAdminNy;
	}
	public Integer getMmDormacyNy() {
		return mmDormacyNy;
	}
	public void setMmDormacyNy(Integer mmDormacyNy) {
		this.mmDormacyNy = mmDormacyNy;
	}
	public Integer getMmTeacherNy() {
		return mmTeacherNy;
	}
	public void setMmTeacherNy(Integer mmTeacherNy) {
		this.mmTeacherNy = mmTeacherNy;
	}
	public Integer getMmSchoolCd() {
		return mmSchoolCd;
	}
	public void setMmSchoolCd(Integer mmSchoolCd) {
		this.mmSchoolCd = mmSchoolCd;
	}
	public Integer getMmGradeCd() {
		return mmGradeCd;
	}
	public void setMmGradeCd(Integer mmGradeCd) {
		this.mmGradeCd = mmGradeCd;
	}
	public Integer getMmGenderCd() {
		return mmGenderCd;
	}
	public void setMmGenderCd(Integer mmGenderCd) {
		this.mmGenderCd = mmGenderCd;
	}
	public Integer getMmTypeOfLoginCd() {
		return mmTypeOfLoginCd;
	}
	public void setMmTypeOfLoginCd(Integer mmTypeOfLoginCd) {
		this.mmTypeOfLoginCd = mmTypeOfLoginCd;
	}
	public Integer getMmTermsOfserviceNy() {
		return mmTermsOfserviceNy;
	}
	public void setMmTermsOfserviceNy(Integer mmTermsOfserviceNy) {
		this.mmTermsOfserviceNy = mmTermsOfserviceNy;
	}
	public Integer getMmEventNotificationNy() {
		return mmEventNotificationNy;
	}
	public void setMmEventNotificationNy(Integer mmEventNotificationNy) {
		this.mmEventNotificationNy = mmEventNotificationNy;
	}
	public Integer getMmPersonalInfoNy() {
		return mmPersonalInfoNy;
	}
	public void setMmPersonalInfoNy(Integer mmPersonalInfoNy) {
		this.mmPersonalInfoNy = mmPersonalInfoNy;
	}
	public Integer getMmDelNy() {
		return mmDelNy;
	}
	public void setMmDelNy(Integer mmDelNy) {
		this.mmDelNy = mmDelNy;
	}
	public Date getMmPwdModDate() {
		return mmPwdModDate;
	}
	public void setMmPwdModDate(Date mmPwdModDate) {
		this.mmPwdModDate = mmPwdModDate;
	}
	public String getMmDob() {
		return mmDob;
	}
	public void setMmDob(String mmDob) {
		this.mmDob = mmDob;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getRegDateTimeSvr() {
		return regDateTimeSvr;
	}
	public void setRegDateTimeSvr(Date regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public Date getModDateTimeSvr() {
		return modDateTimeSvr;
	}
	public void setModDateTimeSvr(Date modDateTimeSvr) {
		this.modDateTimeSvr = modDateTimeSvr;
	}
	public Integer getMmAlarmInvitationNy() {
		return mmAlarmInvitationNy;
	}
	public void setMmAlarmInvitationNy(Integer mmAlarmInvitationNy) {
		this.mmAlarmInvitationNy = mmAlarmInvitationNy;
	}
	public Integer getMmAlarmReplyNy() {
		return mmAlarmReplyNy;
	}
	public void setMmAlarmReplyNy(Integer mmAlarmReplyNy) {
		this.mmAlarmReplyNy = mmAlarmReplyNy;
	}
	public String getMmPhoneNumber() {
		return mmPhoneNumber;
	}
	public void setMmPhoneNumber(String mmPhoneNumber) {
		this.mmPhoneNumber = mmPhoneNumber;
	}
	public String getCtcsBelongto() {
		return ctcsBelongto;
	}
	public void setCtcsBelongto(String ctcsBelongto) {
		this.ctcsBelongto = ctcsBelongto;
	}
	public String getCtcsName() {
		return ctcsName;
	}
	public void setCtcsName(String ctcsName) {
		this.ctcsName = ctcsName;
	}
	public String getCtcsYear() {
		return ctcsYear;
	}
	public void setCtcsYear(String ctcsYear) {
		this.ctcsYear = ctcsYear;
	}
	public Integer getCtcsGradeCd() {
		return ctcsGradeCd;
	}
	public void setCtcsGradeCd(Integer ctcsGradeCd) {
		this.ctcsGradeCd = ctcsGradeCd;
	}
	public String getCtcsDesc() {
		return ctcsDesc;
	}
	public void setCtcsDesc(String ctcsDesc) {
		this.ctcsDesc = ctcsDesc;
	}
	public String getCtcsCode() {
		return ctcsCode;
	}
	public void setCtcsCode(String ctcsCode) {
		this.ctcsCode = ctcsCode;
	}
	public Integer getCtcsDelNy() {
		return ctcsDelNy;
	}
	public void setCtcsDelNy(Integer ctcsDelNy) {
		this.ctcsDelNy = ctcsDelNy;
	}
	public String getCtcmName() {
		return ctcmName;
	}
	public void setCtcmName(String ctcmName) {
		this.ctcmName = ctcmName;
	}
	public Integer getCtcmAlarmReplyNy() {
		return ctcmAlarmReplyNy;
	}
	public void setCtcmAlarmReplyNy(Integer ctcmAlarmReplyNy) {
		this.ctcmAlarmReplyNy = ctcmAlarmReplyNy;
	}
	public Integer getCtcmAlarmReactionNy() {
		return ctcmAlarmReactionNy;
	}
	public void setCtcmAlarmReactionNy(Integer ctcmAlarmReactionNy) {
		this.ctcmAlarmReactionNy = ctcmAlarmReactionNy;
	}
	public Integer getCtcmDelNy() {
		return ctcmDelNy;
	}
	public void setCtcmDelNy(Integer ctcmDelNy) {
		this.ctcmDelNy = ctcmDelNy;
	}
	public String getCtcsSeq() {
		return ctcsSeq;
	}
	public void setCtcsSeq(String ctcsSeq) {
		this.ctcsSeq = ctcsSeq;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public MultipartFile[] getFile0() {
		return file0;
	}
	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}
	public MultipartFile[] getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	
	
	
	

}
