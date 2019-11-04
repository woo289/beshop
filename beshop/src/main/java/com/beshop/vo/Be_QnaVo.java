package com.beshop.vo;

import java.sql.Date;

public class Be_QnaVo {
	private int qnanum;
	private String sec_pw;
	private String qna_title;
	private String qna_con;
	private String qna_answer;
	private String beuid;
	private int pnum;
	private Date answer_time;
	private Date regist_date;
	private String  qna_category;
	public int getQnanum() {
		return qnanum;
	}
	public void setQnanum(int qnanum) {
		this.qnanum = qnanum;
	}
	public String getSec_pw() {
		return sec_pw;
	}
	public void setSec_pw(String sec_pw) {
		this.sec_pw = sec_pw;
	}
	public String getQna_title() {
		return qna_title;
	}
	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}
	public String getQna_con() {
		return qna_con;
	}
	public void setQna_con(String qna_con) {
		this.qna_con = qna_con;
	}
	public String getQna_answer() {
		return qna_answer;
	}
	public void setQna_answer(String qna_answer) {
		this.qna_answer = qna_answer;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public Date getAnswer_time() {
		return answer_time;
	}
	public void setAnswer_time(Date answer_time) {
		this.answer_time = answer_time;
	}
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
	public String getQna_category() {
		return qna_category;
	}
	public void setQna_category(String qna_category) {
		this.qna_category = qna_category;
	}
	public Be_QnaVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Be_QnaVo(int qnanum, String sec_pw, String qna_title, String qna_con, String qna_answer, String beuid,
			int pnum, Date answer_time, Date regist_date, String qna_category) {
		super();
		this.qnanum = qnanum;
		this.sec_pw = sec_pw;
		this.qna_title = qna_title;
		this.qna_con = qna_con;
		this.qna_answer = qna_answer;
		this.beuid = beuid;
		this.pnum = pnum;
		this.answer_time = answer_time;
		this.regist_date = regist_date;
		this.qna_category = qna_category;
	}
	@Override
	public String toString() {
		return "Be_QnaVo [qnanum=" + qnanum + ", sec_pw=" + sec_pw + ", qna_title=" + qna_title + ", qna_con=" + qna_con
				+ ", qna_answer=" + qna_answer + ", beuid=" + beuid + ", pnum=" + pnum + ", answer_time=" + answer_time
				+ ", regist_date=" + regist_date + ", qna_category=" + qna_category + "]";
	}
	
	
	
}
