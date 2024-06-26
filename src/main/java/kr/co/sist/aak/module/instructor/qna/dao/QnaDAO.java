package kr.co.sist.aak.module.instructor.qna.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.QnaDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class QnaDAO {
	//���Ǹ���Ʈ ��ȸ
	public List<QnaDomain> selectQna() throws PersistenceException{
		List<QnaDomain> list= null;
		
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		ss.selectList("kr.co.sist.aak.instructor.qnaList");
		
		mbDAO.closeHanlder(ss);
		return list;
	}
	
	//���Ǹ���Ʈ ��
	public QnaDomain detailQna(String qna_no) throws PersistenceException{
		QnaDomain qd= null;
		
		MybatisDAO mbDAO= MybatisDAO.getInstance();
		SqlSession ss= mbDAO.getMyBatisHandler(false);
		
		qd=ss.selectOne("kr.co.sist.aak.instructor.qnaDetail",qna_no);
		mbDAO.closeHanlder(ss);
		
		return qd;
		
		
	}
}
