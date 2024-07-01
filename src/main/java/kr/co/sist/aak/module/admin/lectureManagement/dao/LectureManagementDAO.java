package kr.co.sist.aak.module.admin.lectureManagement.dao;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.domain.admin.vo.LectureManagementVO;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class LectureManagementDAO {
	
	private static LectureManagementDAO lecDAO;
	
	private LectureManagementDAO() {
		
	}
	
	public static LectureManagementDAO getInstance() {
		if(lecDAO == null) {
			lecDAO = new LectureManagementDAO();
		}
		return lecDAO;
	}

	public List<LectureManagementDomain> selectSubject()throws PersistenceException {
		List<LectureManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectList("kr.co.sist.aak.admin7.selectLecture");
		mbDAO.closeHanlder(ss);
		
		return list;
	}
	
	
	public LectureManagementDomain selectDetaleSubject(String code) throws PersistenceException {
		
		LectureManagementDomain lecDomain = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		lecDomain = ss.selectOne("kr.co.sist.aak.admin7.selectLecture");
		mbDAO.closeHanlder(ss);
		
		
		return lecDomain;
	}
	
	public int insertSubject(LectureManagementVO lecVO) {
		int cnt = 0;
		
		return cnt;
		
	}
	
	public int updateSubject(LectureManagementVO lecVO) {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(true);
		cnt = ss.update("kr.co.sist.aak.admin7.updateLecture",lecVO);
		mbDAO.closeHanlder(ss);
		return cnt;
		
	}
	
	
	public List<LectureManagementDomain> searchLecture()throws PersistenceException {
		List<LectureManagementDomain> list = null;
		
		return list;
	}
	
	
	public LectureManagementDomain selectDetaleLecture(String code) throws PersistenceException {
		LectureManagementDomain lecDomain = null;
		
		return lecDomain;
	}
	
	
	
	
	
	
	
	
	
	
}
