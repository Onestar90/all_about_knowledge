package kr.co.sist.aak.module.admin.instructorManagement.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.aak.domain.admin.InstructorManagementDomain;
import kr.co.sist.aak.domain.admin.vo.InstructorManagementVO;
import kr.co.sist.aak.module.admin.noticeManagement.dao.NoticeManagementDAO;
import kr.co.sist.aak.util.MybatisDAO;

@Component
public class InstructorManagementDAO {

	public InstructorManagementDAO() {

	}

	/**
	 * ���� �÷��װ� N�� ������ ����Ʈ�� ����ϴ� method
	 * @return
	 * @throws PersistenceException
	 */
	public List<InstructorManagementDomain> selectAllNInstructor() throws PersistenceException {
		List<InstructorManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectList("kr.co.sist.aak.admin2.selectNAllInstructor");
		return list;
	}

	/**
	 * �����÷��װ� Y�� ������ ����Ʈ�� ����ϴ� method
	 * @return
	 * @throws PersistenceException
	 */
	public List<InstructorManagementDomain> selectAllYInstructor() throws PersistenceException {
		List<InstructorManagementDomain> list = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		list = ss.selectList("kr.co.sist.aak.admin2.selectYAllInstructor");
		return list;
	}

	/**
	 * ������ ������ ���λ����� ����ϴ� method
	 * @param inst_id
	 * @return
	 * @throws PersistenceException
	 */
	public InstructorManagementDomain selectOneInstructor(String inst_id) throws PersistenceException {
		InstructorManagementDomain insDomain = null;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		insDomain = ss.selectOne("kr.co.sist.aak.admin2.selectOneInstructor", inst_id);
		return insDomain;
	}

	/**
	 * �Է��� ������ ������ �����ͺ��̽� �ȿ� �����ϴ� method.
	 * @param iVO
	 * @return
	 */
	public int insertInstructor(InstructorManagementVO iVO) {
		int cnt = 0;
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		cnt += ss.insert("kr.co.sist.aak.admin2.insertInstructorInfo",iVO);
		cnt += ss.insert("kr.co.sist.aak.admin2.insertInstructor",iVO.getInst_id());
		if(cnt ==2) {
			ss.commit();
		}
		return cnt;
	}

	public int updateInstructor(InstructorManagementVO iVO) {
		int cnt = 0;

		return cnt;
	}

	public int deleteInstructor(String inst_id) {
		int cnt = 0;

		return cnt;
	}
	public String selectMaxInstId() throws PersistenceException {
		String maxId ="";
		MybatisDAO mbDAO = MybatisDAO.getInstance();
		SqlSession ss = mbDAO.getMyBatisHandler(false);
		
		maxId = ss.selectOne("kr.co.sist.aak.admin2.selectinstIDMaxval");
		mbDAO.closeHanlder(ss);
		
		return maxId;
	}
	public static void main(String[] args) {
		String id =
	new InstructorManagementDAO().selectMaxInstId();
		System.out.println(id);
		int idSub = Integer.parseInt(id.substring(6))+1 ;
		System.out.println(idSub);
		String id1 = String.format("%05d",idSub);
		
		System.out.println(id1);
		
	}
}
