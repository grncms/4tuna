package com.cacao.classting.classroom;

import java.util.Date;

public class ClassRoom {

//	ctClass
	private String ctcsSeq;
	private String ctcsBelongto;
	private String ctcsName;
	private String ctcsYear;
	private Integer ctcsGradeCd;
	private String ctcsDesc;
	private String ctcsCode;
	private Integer ctcsDelNy;
	private Date regDateTime;
	private Date regDateTimeSvr;
	private Date modDateTime;
	private Date modDateTimeSvr;
	
//	ctClassMember
	private String ctcmSeq;
	private String ctcmName;
	private String ctcmDesc;
	private Integer ctcmTeacherNy;
	private Integer ctcmAlarmReplyNy;
	private Integer ctcmAlarmReactionNy;
	private Integer ctcmDelNy;
	private String mmSeq;
	
//	ctAddendance
	private String ctadSeq;
	private Date ctadRegDateTime;
	
//	ctHomework
	private String cthwSeq;
	private String cthwTitle;
	private String cthwData;
	private String cthwDesc;
	private Integer cthwCd;
	private Integer cthwMaxScore;
	private Integer cthwScore;
	private Integer cthwUseNy;
	private Integer cthwDelNy;
	private Date cthwEndDate;
	
//	ctHomeworkPost
	private String cthpSeq;	
	private String cthpTitle;	
	private Integer cthpWriter;
	private String cthpDesc;	
	private String cthpData;	
	private Integer cthpUseNy;	
	private Integer cthpDelNy;	
	private Date cthpEndDateTime;
	
//	ctBoard
	private String ctboSeq;	
	private Integer ctboTypeCd;	
	private Integer ctboDelNy;	
	
//	ctPost
	private String ctptSeq;	
	private String ctptTitle;	
	private String ctptContent;	
	private String ctptTag;	
	private Integer ctptWriter;	
	private Integer ctptView;	
	private Integer ctptReservationTypeCd;	
	private Integer ctptLike1;	
	private Integer ctptLike2;	
	private Integer ctptLike3;	
	private Integer ctptDelNy;	
	
//	ctTag
	private String cttgSeq;	
	private String cttgName;	

//	ctReply
	private String ctrpSeq;	
	private String ctrpContent;	
	private String ctrpUserId;	
	private Integer ctrpDelNy;	
	
//	ctPostUploaded
	private String seq;	
	private String originalName;	
	private String uuidName;	
	private String ext;	
	private Integer type;	
	private Integer defaultNy;	
	private Integer sort;	
	private long size;	
	private Integer delNy;	
	private Integer pseq;
	public String getCtcsSeq() {
		return ctcsSeq;
	}
	public void setCtcsSeq(String ctcsSeq) {
		this.ctcsSeq = ctcsSeq;
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
	public String getCtcmSeq() {
		return ctcmSeq;
	}
	public void setCtcmSeq(String ctcmSeq) {
		this.ctcmSeq = ctcmSeq;
	}
	public String getCtcmName() {
		return ctcmName;
	}
	public void setCtcmName(String ctcmName) {
		this.ctcmName = ctcmName;
	}
	public String getCtcmDesc() {
		return ctcmDesc;
	}
	public void setCtcmDesc(String ctcmDesc) {
		this.ctcmDesc = ctcmDesc;
	}
	public Integer getCtcmTeacherNy() {
		return ctcmTeacherNy;
	}
	public void setCtcmTeacherNy(Integer ctcmTeacherNy) {
		this.ctcmTeacherNy = ctcmTeacherNy;
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
	public String getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(String mmSeq) {
		this.mmSeq = mmSeq;
	}
	public String getCtadSeq() {
		return ctadSeq;
	}
	public void setCtadSeq(String ctadSeq) {
		this.ctadSeq = ctadSeq;
	}
	public Date getCtadRegDateTime() {
		return ctadRegDateTime;
	}
	public void setCtadRegDateTime(Date ctadRegDateTime) {
		this.ctadRegDateTime = ctadRegDateTime;
	}
	public String getCthwSeq() {
		return cthwSeq;
	}
	public void setCthwSeq(String cthwSeq) {
		this.cthwSeq = cthwSeq;
	}
	public String getCthwTitle() {
		return cthwTitle;
	}
	public void setCthwTitle(String cthwTitle) {
		this.cthwTitle = cthwTitle;
	}
	public String getCthwData() {
		return cthwData;
	}
	public void setCthwData(String cthwData) {
		this.cthwData = cthwData;
	}
	public String getCthwDesc() {
		return cthwDesc;
	}
	public void setCthwDesc(String cthwDesc) {
		this.cthwDesc = cthwDesc;
	}
	public Integer getCthwCd() {
		return cthwCd;
	}
	public void setCthwCd(Integer cthwCd) {
		this.cthwCd = cthwCd;
	}
	public Integer getCthwMaxScore() {
		return cthwMaxScore;
	}
	public void setCthwMaxScore(Integer cthwMaxScore) {
		this.cthwMaxScore = cthwMaxScore;
	}
	public Integer getCthwScore() {
		return cthwScore;
	}
	public void setCthwScore(Integer cthwScore) {
		this.cthwScore = cthwScore;
	}
	public Integer getCthwUseNy() {
		return cthwUseNy;
	}
	public void setCthwUseNy(Integer cthwUseNy) {
		this.cthwUseNy = cthwUseNy;
	}
	public Integer getCthwDelNy() {
		return cthwDelNy;
	}
	public void setCthwDelNy(Integer cthwDelNy) {
		this.cthwDelNy = cthwDelNy;
	}
	public Date getCthwEndDate() {
		return cthwEndDate;
	}
	public void setCthwEndDate(Date cthwEndDate) {
		this.cthwEndDate = cthwEndDate;
	}
	public String getCthpSeq() {
		return cthpSeq;
	}
	public void setCthpSeq(String cthpSeq) {
		this.cthpSeq = cthpSeq;
	}
	public String getCthpTitle() {
		return cthpTitle;
	}
	public void setCthpTitle(String cthpTitle) {
		this.cthpTitle = cthpTitle;
	}
	public String getCthpDesc() {
		return cthpDesc;
	}
	public void setCthpDesc(String cthpDesc) {
		this.cthpDesc = cthpDesc;
	}
	public String getCthpData() {
		return cthpData;
	}
	public void setCthpData(String cthpData) {
		this.cthpData = cthpData;
	}
	public Integer getCthpUseNy() {
		return cthpUseNy;
	}
	public void setCthpUseNy(Integer cthpUseNy) {
		this.cthpUseNy = cthpUseNy;
	}
	public Integer getCthpDelNy() {
		return cthpDelNy;
	}
	public void setCthpDelNy(Integer cthpDelNy) {
		this.cthpDelNy = cthpDelNy;
	}
	public String getCtboSeq() {
		return ctboSeq;
	}
	public void setCtboSeq(String ctboSeq) {
		this.ctboSeq = ctboSeq;
	}
	public Integer getCtboTypeCd() {
		return ctboTypeCd;
	}
	public void setCtboTypeCd(Integer ctboTypeCd) {
		this.ctboTypeCd = ctboTypeCd;
	}
	public Integer getCtboDelNy() {
		return ctboDelNy;
	}
	public void setCtboDelNy(Integer ctboDelNy) {
		this.ctboDelNy = ctboDelNy;
	}
	public String getCtptSeq() {
		return ctptSeq;
	}
	public void setCtptSeq(String ctptSeq) {
		this.ctptSeq = ctptSeq;
	}
	public String getCtptTitle() {
		return ctptTitle;
	}
	public void setCtptTitle(String ctptTitle) {
		this.ctptTitle = ctptTitle;
	}
	public String getCtptContent() {
		return ctptContent;
	}
	public void setCtptContent(String ctptContent) {
		this.ctptContent = ctptContent;
	}
	public String getCtptTag() {
		return ctptTag;
	}
	public void setCtptTag(String ctptTag) {
		this.ctptTag = ctptTag;
	}
	public Integer getCtptWriter() {
		return ctptWriter;
	}
	public void setCtptWriter(Integer ctptWriter) {
		this.ctptWriter = ctptWriter;
	}
	public Integer getCtptView() {
		return ctptView;
	}
	public void setCtptView(Integer ctptView) {
		this.ctptView = ctptView;
	}
	public Integer getCtptLike1() {
		return ctptLike1;
	}
	public void setCtptLike1(Integer ctptLike1) {
		this.ctptLike1 = ctptLike1;
	}
	public Integer getCtptLike2() {
		return ctptLike2;
	}
	public void setCtptLike2(Integer ctptLike2) {
		this.ctptLike2 = ctptLike2;
	}
	public Integer getCtptLike3() {
		return ctptLike3;
	}
	public void setCtptLike3(Integer ctptLike3) {
		this.ctptLike3 = ctptLike3;
	}
	public Integer getCtptDelNy() {
		return ctptDelNy;
	}
	public void setCtptDelNy(Integer ctptDelNy) {
		this.ctptDelNy = ctptDelNy;
	}
	public String getCttgSeq() {
		return cttgSeq;
	}
	public void setCttgSeq(String cttgSeq) {
		this.cttgSeq = cttgSeq;
	}
	public String getCttgName() {
		return cttgName;
	}
	public void setCttgName(String cttgName) {
		this.cttgName = cttgName;
	}
	public String getCtrpSeq() {
		return ctrpSeq;
	}
	public void setCtrpSeq(String ctrpSeq) {
		this.ctrpSeq = ctrpSeq;
	}
	public String getCtrpContent() {
		return ctrpContent;
	}
	public void setCtrpContent(String ctrpContent) {
		this.ctrpContent = ctrpContent;
	}
	public String getCtrpUserId() {
		return ctrpUserId;
	}
	public void setCtrpUserId(String ctrpUserId) {
		this.ctrpUserId = ctrpUserId;
	}
	public Integer getCtrpDelNy() {
		return ctrpDelNy;
	}
	public void setCtrpDelNy(Integer ctrpDelNy) {
		this.ctrpDelNy = ctrpDelNy;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
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
	public Integer getPseq() {
		return pseq;
	}
	public void setPseq(Integer pseq) {
		this.pseq = pseq;
	}
	public Integer getCthpWriter() {
		return cthpWriter;
	}
	public void setCthpWriter(Integer cthpWriter) {
		this.cthpWriter = cthpWriter;
	}
	public Date getCthpEndDateTime() {
		return cthpEndDateTime;
	}
	public void setCthpEndDateTime(Date cthpEndDateTime) {
		this.cthpEndDateTime = cthpEndDateTime;
	}
	public Integer getCtptReservationTypeCd() {
		return ctptReservationTypeCd;
	}
	public void setCtptReservationTypeCd(Integer ctptReservationTypeCd) {
		this.ctptReservationTypeCd = ctptReservationTypeCd;
	}
	
	
	



}
