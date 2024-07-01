package kr.co.sist.aak.module.admin.lectureManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.LectureManagementDomain;
import kr.co.sist.aak.module.admin.lectureManagement.dao.LectureManagementDAO;


@Service
public class LectureManagementService{
	@Autowired(required = false)
	private LectureManagementDAO lmDAO;
	
	public List<LectureManagementDomain> searchSubject(){
		List<LectureManagementDomain> list = null;
		try {
			list = lmDAO.selectSubject()	;
		
			}catch (PersistenceException pe) {
				pe.printStackTrace();
			}
			
			return list;
		
		
	}
	
	
	
	
}
