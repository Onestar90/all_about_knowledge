package kr.co.sist.aak.domain.instructor.vo;

import java.util.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@NoArgsConstructor
@ToString
public class NoticeVO {
	private String noti_no,title,id,content,status;
	private Date write_date;

}
