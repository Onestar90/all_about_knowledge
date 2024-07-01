package kr.co.sist.aak.module.student.myPage.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.student.vo.DetailLectureVO;
import kr.co.sist.aak.util.SpringMyBatis;

@Component
public class DetailLectureRepository {

	@Autowired(required = false)
	private SpringMyBatis myBatisDAO;
	
	public List<DetailLectureVO> selectDetailLecture(String subCode, String stdId) {
		List<DetailLectureVO> detailLectureVO = null;
		SqlSession ss = myBatisDAO.getMyBatisHandler(false);
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("subCode", subCode);
		param.put("stdId", stdId);
		
		detailLectureVO = ss.selectList("kr.co.sist.aak.student.mypage.detail_lecture.selectDeailLecture", param);
		ss.close();
		return detailLectureVO;
	}
}
