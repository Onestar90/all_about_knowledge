package kr.co.sist.aak.module.instructor.studentList.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.instructor.StudentListDomain;
import kr.co.sist.aak.module.instructor.studentList.dao.StudentListDAO;
@Service
public class StudentListService {
	
	private StudentListDAO stDAO;
	
	public List<StudentListDomain> searchList(){
		List<StudentListDomain>list=null;
		try {
			list=stDAO.selectList();
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}

}
