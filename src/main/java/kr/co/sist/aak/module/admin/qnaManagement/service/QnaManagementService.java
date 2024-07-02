package kr.co.sist.aak.module.admin.qnaManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.QnaManagementDomain;
import kr.co.sist.aak.domain.admin.vo.MemberManagementVO;
import kr.co.sist.aak.domain.admin.vo.QnaManagementVO;
import kr.co.sist.aak.module.admin.qnaManagement.dao.QnaManagementDAO;
@Service
public class QnaManagementService {
	@Autowired(required = false)
	private QnaManagementDAO qmDAO;
	
	public List<QnaManagementDomain> searchQna(){
		List<QnaManagementDomain> list = null;
		try {
			list=qmDAO.selectQna();
			
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	
	public QnaManagementDomain searchDetaleQna ( String qna_no) {
		QnaManagementDomain qnaDomain = null;
		try {
			qnaDomain = qmDAO.selectDetalQna(qna_no);
		
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return qnaDomain;
	}
	
	
	public int modyifyQnaAnswer(QnaManagementVO qnaVO) {
		int cnt = 0;

		cnt=qmDAO.updateQnaAnswer(qnaVO);
		
		
		return cnt;
	}
	
	public int addQnaAnswer(QnaManagementVO qnaVO) {
		int cnt = 0;

		cnt=qmDAO.insertQnaAnswer(qnaVO);
		
		if(cnt==2) {
			cnt=1;
		}
		
		return cnt;
	}
	
	public int deleteQna(QnaManagementVO qnaVO) {
		int cnt = 0;

		cnt=qmDAO.deleteQna(qnaVO);
		
		
		return cnt;
	}
	
}
