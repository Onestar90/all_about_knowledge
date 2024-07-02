package kr.co.sist.aak.module.admin.memberManagement.service;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.sist.aak.domain.admin.MemberManagementDomain;
import kr.co.sist.aak.domain.admin.vo.MemberManagementVO;
import kr.co.sist.aak.module.admin.memberManagement.dao.MemberManagementDAO;
@Service
public class MemberManagementService {
	@Autowired(required = false)
	private MemberManagementDAO mmDAO;
	
	public List<MemberManagementDomain> searchMember() {
		List<MemberManagementDomain> list = null;
		try {
		list = mmDAO.selectMember()	;
	
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return list;
	}
	
	
	public MemberManagementDomain searchDetaleMember(String std_id) {
		MemberManagementDomain mmDomain = null;
		try {
			mmDomain = mmDAO.selectDetaleMember(std_id);
		
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}
		
		return mmDomain;
	}
	
	public int modyifyMember(MemberManagementVO mmVO) {
		int cnt = 0;

		cnt=mmDAO.updateMember(mmVO);
		
		
		return cnt;
	}
	
	public String searchMembers() {
		int non=0;
		int pre=0;
		JSONObject jsonObj = new JSONObject();
		try {
			non = mmDAO.selectNonMember();
			pre = mmDAO.selectPreMember();
			jsonObj.put("n", non);
			jsonObj.put("p", pre);
		}catch (PersistenceException e) {
			e.printStackTrace();
		}
		return jsonObj.toJSONString();
	}
	
	
	
	
	
	
	
	
	
}
