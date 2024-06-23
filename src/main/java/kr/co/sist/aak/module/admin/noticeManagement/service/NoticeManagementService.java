package kr.co.sist.aak.module.admin.noticeManagement.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.sist.aak.domain.admin.NoticeManagementDomain;
import kr.co.sist.aak.domain.admin.vo.NoticeManagementVO;
import kr.co.sist.aak.module.admin.noticeManagement.dao.NoticeManagementDAO;

@Service
public class NoticeManagementService {
	@Autowired(required = false)
	private NoticeManagementDAO nmDAO;

//	public List<NoticeManagementDomain> searchAllNotice() {
//		List<NoticeManagementDomain> list = null;
//		try {
//			list = nmDAO.selectAllNotice();
//
//		} catch (PersistenceException pe) {
//			pe.printStackTrace();
//		}
//		return list;
//	}

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
	public String searchNoticeStatus(int status) {
		List<NoticeManagementDomain> list = null;
		JSONObject jsonObj = new JSONObject();
		try {
			list = nmDAO.selectNoticeStatus(status);
			if (status == 3) {
				list = nmDAO.selectAllNotice();
			}
		} catch (PersistenceException pe) {
		}finally {
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			for(NoticeManagementDomain temp :list) {
				jsonTemp = new JSONObject();
				jsonTemp.put("noti_no", temp.getNoti_no());
				jsonTemp.put("write_date",sdf.format(temp.getWrite_date()));
				jsonTemp.put("title",temp.getTitle());
				

			    String status1 = temp.getStatus();
			    if (status1.equals("RESV")) {
			        status1 = "����";
			    } else if (status1.equals("DELT")) {
			        status1 = "����";
			    } else {
			        status1 = "�Խ�";
			    }
			    
				
				jsonTemp.put("status", status1);
				jsonArr.add(jsonTemp);	
			}
			jsonObj.put("list", jsonArr);
		}
		return jsonObj.toJSONString();

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
			
		}finally {
			for(NoticeManagementDomain temp :list) {
				if(temp.getStatus().equals("RESV")) {
					temp.setStatus("����");
				}else if(temp.getStatus().equals("DELT")){
					temp.setStatus("����");
					
				}else {
					temp.setStatus("�Խ�");
					
				}
			}
			
		}

		return list;

	}
	
	public List<NoticeManagementDomain> searchAllNotice() {
		List<NoticeManagementDomain> list = null;
		try {
			list = nmDAO.selectAllNotice();
		}catch (PersistenceException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	 public String searchMaxNoticeVal() {
		 String maxVal ="";
		 
		 StringBuffer pre = new StringBuffer("A_NOT");
		 
		 try{
			 maxVal =nmDAO.selectMaxValue();
			 int num = Integer.parseInt(maxVal.substring(6))+1;
			 String nextVal = String.format("%05d", num);
			 pre.append(nextVal);
		 }catch (PersistenceException e) {
			 e.printStackTrace();
		 }
		 return pre.toString();
	 }
	 public int searchCount() {
		int cnt =0;
		 try {
			cnt =nmDAO.selectCount();
		}catch (PersistenceException e) {
			e.printStackTrace();
		}
		 return cnt;
	}
	 public int addNotice(NoticeManagementVO nVO) {
		int cnt = 0;
		try {
			cnt = nmDAO.insertNotice(nVO);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		return cnt;
	}
	 public int modifyNotice(NoticeManagementVO nVO) {
		 int cnt =0;
		 
		 return cnt;
	 }
}
