package kr.co.sist.aak.module.student.myPage.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.student.vo.MyExamVO;
import kr.co.sist.aak.util.SpringMyBatis;

@Component
public class MyExamRepository {
	
	@Autowired(required = false)
	private SpringMyBatis myBatisDAO;
	
	public List<MyExamVO> selectExam(String subCode) {
		List<MyExamVO> myLectureList = null;
		SqlSession ss = myBatisDAO.getMyBatisHandler(false);
		myLectureList = ss.selectList("kr.co.sist.aak.student.mypage.exam.selectExam", subCode);
		ss.close();
		return myLectureList;
	}


}
