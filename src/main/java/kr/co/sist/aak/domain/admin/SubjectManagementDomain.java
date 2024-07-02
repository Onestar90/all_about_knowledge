package kr.co.sist.aak.domain.admin;

import java.sql.Date;


public class SubjectManagementDomain {
	
	private String 
	sub_code
	,sub_title
	,Instructor_name
	,cat_name
	,intro
	,goal
	,status
	,image
	,reason
	,comp_time;

	private int  total_no, total_time;
	private Date create_date;
	
	
	@Override
	public String toString() {
		return "SubjectManagementDomain [sub_code=" + sub_code + ", sub_title=" + sub_title + ", Instructor_name="
				+ Instructor_name + ", cat_name=" + cat_name + ", intro=" + intro + ", goal=" + goal + ", status="
				+ status + ", image=" + image + ", reason=" + reason + ", comp_time=" + comp_time + ", total_no="
				+ total_no + ", total_time=" + total_time + ", create_date=" + create_date + "]";
	}


	public String getSub_code() {
		return sub_code;
	}


	public void setSub_code(String sub_code) {
		this.sub_code = sub_code;
	}


	public String getSub_title() {
		return sub_title;
	}


	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}


	public String getInstructor_name() {
		return Instructor_name;
	}


	public void setInstructor_name(String instructor_name) {
		Instructor_name = instructor_name;
	}


	public String getCat_name() {
		return cat_name;
	}


	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}


	public String getIntro() {
		return intro;
	}


	public void setIntro(String intro) {
		this.intro = intro;
	}


	public String getGoal() {
		return goal;
	}


	public void setGoal(String goal) {
		this.goal = goal;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getReason() {
		return reason;
	}


	public void setReason(String reason) {
		this.reason = reason;
	}


	public String getComp_time() {
		return comp_time;
	}


	public void setComp_time(String comp_time) {
		this.comp_time = comp_time;
	}


	public int getTotal_no() {
		return total_no;
	}


	public void setTotal_no(int total_no) {
		this.total_no = total_no;
	}


	public int getTotal_time() {
		return total_time;
	}


	public void setTotal_time(int total_time) {
		this.total_time = total_time;
	}


	public Date getCreate_date() {
		return create_date;
	}


	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	
	

	
}