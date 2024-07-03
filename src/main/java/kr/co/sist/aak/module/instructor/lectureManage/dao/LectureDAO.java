package kr.co.sist.aak.module.instructor.lectureManage.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.instructor.InstructorInfoDomain;
import kr.co.sist.aak.domain.instructor.LectureDomain;
import kr.co.sist.aak.domain.instructor.RejectDomain;
import kr.co.sist.aak.domain.instructor.vo.InstructorInfoVO;
import kr.co.sist.aak.domain.instructor.vo.LectureLessonVO;
import kr.co.sist.aak.domain.instructor.vo.LectureVO;
import kr.co.sist.aak.domain.student.domain.InstructorDomain;
import kr.co.sist.aak.util.MybatisDAO;
import oracle.net.aso.m;

@Repository
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
	
	//���ο��η� �� �з�
	public List<LectureDomain> selectLectureStatus(int status) throws PersistenceException {
		List<LectureDomain> list = null;

		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);

		list = ss.selectList("kr.co.sist.aak.instructor", status);
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	//����˻�
	public List<LectureDomain> selectLectureTitle(String sub_title) throws PersistenceException {
		List<LectureDomain> list = null;
		
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		list = ss.selectList("kr.co.sist.aak.instructor.searchTitle", sub_title);
		
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	//���� ������û �߰���ư������ AJAX�� ������ LECTURE
	//���� ������
	public LectureVO insertLecture(String sub_code)   {
		LectureVO lecVO=null;
		
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		lecVO=ss.selectOne("kr.co.sist.aak.instructor.insertLecture",sub_code);
		mbDAO.closeHanlder(ss);
		
		return lecVO;
		
	}

	//���Ǹ���
	public LectureLessonVO lectureLesson(String sub_code, String lec_code)   {
		
		LectureLessonVO leclessVO=null;
		
		MybatisDAO mbDAO=MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		leclessVO=ss.selectOne(sub_code);
		
		mbDAO.closeHanlder(ss);
		return leclessVO;
	}

}

