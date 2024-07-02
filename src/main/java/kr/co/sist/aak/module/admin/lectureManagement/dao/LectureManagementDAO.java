package kr.co.sist.aak.module.admin.lectureManagement.dao;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.domain.admin.SubjectManagementDomain;
import kr.co.sist.aak.domain.admin.vo.SubjectManagementVO;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class LectureManagementDAO {
	
	private static LectureManagementDAO lmDAO;
	
	private LectureManagementDAO() {
		
	}
	
	public static LectureManagementDAO getInstance() {
		if(lmDAO == null) {
			lmDAO = new LectureManagementDAO();
		}
		return lmDAO;
	}

	public List<SubjectManagementDomain> selectSubject()throws PersistenceException {
		List<SubjectManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectList("kr.co.sist.aak.admin7.selectSubject");
		mbDAO.closeHanlder(ss);
		
		return list;
	}
	
	
	public SubjectManagementDomain selectDetaleSubject(String sub_code) throws PersistenceException {
		
		SubjectManagementDomain smDomain = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		smDomain = ss.selectOne("kr.co.sist.aak.admin7.selectDetaleSubject", sub_code);
		mbDAO.closeHanlder(ss);
		
		
		return smDomain;
	}
	
	public List<LectureManagementDomain> selectLecture(String sub_code) throws PersistenceException {
		
		List<LectureManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectOne("kr.co.sist.aak.admin7.selectLecture", sub_code);
		mbDAO.closeHanlder(ss);
		
		
		return list;
	}
	
	
	 public int updateSubject(SubjectManagementVO smVO) { 
	 int cnt = 0;
	 MybatisDAO mbDAO = MybatisDAO.getInstance(); 
	 SqlSession ss = mbDAO.getMyBatisHandler(true); 
	 cnt = ss.update("kr.co.sist.aak.admin7.updateLecture",smVO);
	 mbDAO.closeHanlder(ss); 
	 
	 return cnt;
	 
	 }
	
	
	
	
	
	
	
	
	
	
	
}
