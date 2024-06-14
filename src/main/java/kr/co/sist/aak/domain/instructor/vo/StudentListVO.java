package kr.co.sist.aak.domain.instructor.vo;



public class StudentListVO {
	
	private String sub_code,STD_ID,name,status;
	private int score,Try;
	public StudentListVO(String sub_code, String sTD_ID, String name, String status, int score, int try1) {
		super();
		this.sub_code = sub_code;
		STD_ID = sTD_ID;
		this.name = name;
		this.status = status;
		this.score = score;
		Try = try1;
	}
	public StudentListVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSub_code() {
		return sub_code;
	}
	public void setSub_code(String sub_code) {
		this.sub_code = sub_code;
	}
	public String getSTD_ID() {
		return STD_ID;
	}
	public void setSTD_ID(String sTD_ID) {
		STD_ID = sTD_ID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getTry() {
		return Try;
	}
	public void setTry(int try1) {
		Try = try1;
	}
	@Override
	public String toString() {
		return "StudentListVO [sub_code=" + sub_code + ", STD_ID=" + STD_ID + ", name=" + name + ", status=" + status
				+ ", score=" + score + ", Try=" + Try + "]";
	}

	
}
