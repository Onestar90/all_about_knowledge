package kr.co.sist.aak.module.admin.instructorManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.module.admin.instructorManagement.dao.InstructorManagementDAO;
@Service
public class InstructorManagementService {
	@Autowired(required = false)
	private InstructorManagementDAO imDAO;
	
	/**
	 * ������ ���� �÷��װ� N(������)�� ������� ����Ʈ�� ����ϴ� method
	 * @return
	 */
	public List<InstructorManagementDomain> searchAllNInstructor() {
		List<InstructorManagementDomain> list =null;
		try {
		list = imDAO.selectAllNInstructor()	;
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	/**
	 * ������ ���� �÷��װ� Y(��� ��)�� ������� ����Ʈ�� ����ϴ� method
	 * @return
	 */
	public List<InstructorManagementDomain> searchAllyInstructor() {
		List<InstructorManagementDomain> list =null;
		try {
			list = imDAO.selectAllYInstructor()	;
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}
	public InstructorManagementDomain instructorDetail(String inst_id){
		InstructorManagementDomain imd = null;
		try {
			imd = imDAO.selectOneInstructor(inst_id);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return imd;
	}
}
