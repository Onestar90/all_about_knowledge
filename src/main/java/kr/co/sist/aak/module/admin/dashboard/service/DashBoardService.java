package kr.co.sist.aak.module.admin.dashboard.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.module.admin.dashboard.dao.DashBoardDAO;




@Service
public class DashBoardService {
	
	@Autowired(required = false)
	private DashBoardDAO dmDAO;
	

	public List<Integer> searchDataCount(){
		List<Integer> list = new ArrayList<Integer>();
		try {
			
			
			
			list.add(Integer.valueOf(dmDAO.selectCountAllInstructor()));
			list.add(Integer.valueOf(dmDAO.selectCountAllMember()));
			list.add(Integer.valueOf(dmDAO.selectCountExitMember()));
			list.add(Integer.valueOf(dmDAO.selectCountNeedChkQuestion()));
			list.add(Integer.valueOf(dmDAO.selectCountNeedChkSubject()));
			}catch (PersistenceException pe) {
				pe.printStackTrace();
			}
		
		
		return list;
	}
	
	
	
	

}
