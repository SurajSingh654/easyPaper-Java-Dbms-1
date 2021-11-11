package com.easyPaper.Model;

public class addQuestionModel {
	private int question_id;
	private String qpaper;
	private String qclass;
	private String question;
	private int paper_id;
	public int getPaper_id() {
		return paper_id;
	}
	public void setPaper_id(int paper_id) {
		this.paper_id = paper_id;
	}
	public int getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}
	public String getQpaper() {
		return qpaper;
	}
	public void setQpaper(String qpaper) {
		this.qpaper = qpaper;
	}
	public String getQclass() {
		return qclass;
	}
	public void setQclass(String qclass) {
		this.qclass = qclass;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
}
