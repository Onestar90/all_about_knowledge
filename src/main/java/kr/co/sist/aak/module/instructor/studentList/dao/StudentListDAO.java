package kr.co.sist.aak.module.instructor.studentList.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.instructor.StudentListDomain;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class StudentListDAO {
	
	@Autowired(required = false)
	private MybatisDAO mbDAO;
	
	public List<StudentListDomain> selectList()throws PersistenceException{
		List<StudentListDomain>list=null;
		SqlSession ss=mbDAO.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.aak.instructor2.select_studentList_all");
		mbDAO.closeHanlder(ss);
		return list;
	}

}
