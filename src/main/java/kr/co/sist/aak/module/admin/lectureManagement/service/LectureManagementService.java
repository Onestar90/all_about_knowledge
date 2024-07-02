package kr.co.sist.aak.module.admin.lectureManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.SubjectManagementDomain;
import kr.co.sist.aak.domain.admin.vo.LectureManagementVO;
import kr.co.sist.aak.domain.admin.vo.MemberManagementVO;
import kr.co.sist.aak.domain.admin.vo.SubjectManagementVO;
import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.domain.admin.MemberManagementDomain;
import kr.co.sist.aak.module.admin.lectureManagement.dao.LectureManagementDAO;


@Service
public class LectureManagementService{
	@Autowired(required = false)
	private LectureManagementDAO lmDAO;
	
	public List<SubjectManagementDomain> searchSubject(){
		List<SubjectManagementDomain> list = null;
		try {
			list = lmDAO.selectSubject()	;
		
			}catch (PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return list;
	}
	
	public SubjectManagementDomain searchDetaleSubject(String sub_code) {
		SubjectManagementDomain smDomain = null;
		try {
			smDomain = lmDAO.selectDetaleSubject(sub_code);
			
		
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return smDomain;
	}
	
	public List<LectureManagementDomain> searchLecture(String sub_code) {
		List<LectureManagementDomain> lecList = null;
		try {
			lecList = lmDAO.selectLecture(sub_code);
			
			
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return lecList;
	}
	
	public int modyifyMember(SubjectManagementVO smVO) {
		int cnt = 0;

		cnt=lmDAO.updateSubject(smVO);
		
		
		return cnt;
	}
	
	
	
	
	
}
