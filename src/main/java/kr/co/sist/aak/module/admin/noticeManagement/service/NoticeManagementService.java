package kr.co.sist.aak.module.admin.noticeManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.module.admin.noticeManagement.dao.NoticeManagementDAO;

@Service
public class NoticeManagementService {
	@Autowired(required = false)
	private NoticeManagementDAO nmDAO;

	public List<NoticeManagementDomain> searchAllNotice() {
		List<NoticeManagementDomain> list = null;
		try {
			list = nmDAO.selectAllNotice();

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return list;
	}

	public NoticeManagementDomain searchOneNotice(String noti_no) {
		NoticeManagementDomain nmd = null;

		try {
			nmd = nmDAO.selectOneNotice(noti_no);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return nmd;
	}

	/**
	 * ����Ʈ���� ���� ��µǴ� ����� ���� �ٸ�
	 * status 0: ���� 1: �Խ� 2:���� 3:��ü �Խñ� ��ȸ.
	 * @param status
	 * @return
	 */
	public List<NoticeManagementDomain> searchNoticeStatus(int status) {
		List<NoticeManagementDomain> list = null;

		try {
			list = nmDAO.selectNoticeStatus(status);
			if (status == 3) {
				list = nmDAO.selectAllNotice();
			}
		} catch (PersistenceException pe) {
		}
		return list;

	}

	/**
	 * ���������� ������ �˻��ϴ� method.
	 * title�� null�̶�� ��ü ���������� �˻��ǵ��� ������.
	 * @param title
	 * @return
	 */
	public List<NoticeManagementDomain> searchNoticeTitle(String title) {
		List<NoticeManagementDomain> list = null;

		try {
			list = nmDAO.selectNoticeTitle(title);
			if ("".equals(title)) {
				list = nmDAO.selectAllNotice();
			}

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		return list;

	}
}
