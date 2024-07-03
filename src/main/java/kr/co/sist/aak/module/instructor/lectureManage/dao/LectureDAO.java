package kr.co.sist.aak.module.instructor.lectureManage.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.domain.instructor.vo.LectureLessonVO;
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class LectureDAO {
	//���Ǹ���Ʈ
	public List<LectureDomain> selectAllLecture()throws PersistenceException{
		List<LectureDomain> list=null;
		
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		list=ss.selectList("kr.co.sist.aak.instructor.lectureList");
		mbDAO.closeHanlder(ss);
		
		return list;
		
	}
	
	//���ǻ�
	public LectureDomain lectureDetail(String sub_code) throws PersistenceException{
		LectureDomain ltd=null;
		
		MybatisDAO mbDAO=MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		ltd=ss.selectOne("kr.co.sist.aak.instructor.lectureDetail",sub_code);
		mbDAO.closeHanlder(ss);
		
		return ltd;
	}
	
//	
//	//���� ������û �߰���ư������ AJAX�� ������ LECTURE
//	public LectureDomain insertLecture(LectureVO)   {
//		
//	}
//	public LectureDomain insertLecture(LectureVO)   {
//		
//	}

}
