package com.user.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.exe.dto.LoginDTO;
import com.exe.dto.MyMachineDTO;
import com.exe.dto.MyOrderDTO;
import com.exe.dto.OrderListDTO;
import com.user.inter.UserDaoInterface;

public class MemberService {
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	private UserDaoInterface userDao;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
	
	
	//ȸ������
	public int insertMember(LoginDTO dto) {
	
	int resultCnt = 0;

	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	try {
		resultCnt = userDao.regUser(dto);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return resultCnt;
}
	
	public void insertMachine(MyMachineDTO dtom) throws Exception{
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);

		userDao.insertMachine(dtom);
	}
	
	//login session + cookie
	public int loginMember(LoginDTO dto, HttpSession httpSession, String user_check,
			HttpServletResponse response) {

		System.out.println("loginMember // �α��� ��ü Ȯ�� userVO : " + dto);
		
		//�Ʒ� vo(db)�� �� �� ���� ���ο� ���� ����
		String user_email = dto.getEmail();
		String user_pwd = dto.getPwd();

		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		LoginDTO vo = userDao.loginUser(user_email);
//		StoreVO storeVO = userDao.getUserStoreVO(store_id);

		System.out.println("loginMember // �α��� ��ü Ȯ�� vo : " + vo);

		// �α��� ����� 
		int result = 0; 

		// ȸ�� ������ ���� �� ajax mapping to logincheck css
		if (vo == null) {
			result = 0;
			return result;
		}
		
		// ���� �� ���� ��� �����϶� �޼��� �߻�
				String y = "Y";
				if (!(vo.getUser_key().equals(y))) {
					result = -1;
					return result;
				}


		// �Է��� ���̵�� �����id���� ���� ������ ���� �� ���
		if (vo != null) {
			// ���̵�,���,�����id�� ��� �������
			System.out.println("1�ܰ�");
			
			//�� ��
			if (vo.getEmail().equals(user_email) && vo.getPwd().equals(user_pwd)) {
				
				
				System.out.println("2�ܰ�");
				// ��Ű �����Ͽ� Ŭ���̾�Ʈ �ʿ� email ����
				Cookie cookie = new Cookie("user_check", user_email);
				
				if (user_check.equals("true")) {//check �Ǿ� ������ response��ü�� �̿��� ��Ű ������
					
					response.addCookie(cookie);
					System.out.println("3�ܰ�-��Ű ���̵����� O");
					// ��Ű Ȯ��
					// System.out.println("Service check" + cookie);
				} else {
					System.out.println("3�ܰ�-��Ű ���̵����� X"); //üũ �ȵǾ� ������ ��Ű ���ְ� ���� ������ ����
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}

				System.out.println("3�ܰ�-�α��δܰ�");
				
				vo.setPwd(""); //session�� ������ ��ü�� ��й�ȣ�� �״�� ������ ���� �ʵ��� ���ڿ��� ����

				// ���ǿ� vo ��ü ����
				httpSession.setAttribute("userSession", vo);
				System.out.println("ȸ�����̵� ���� userSession : " + httpSession.getAttribute("userSession"));
				
				
				result = 1;//���� ������ �̵�
				
			}
			
		}
		
		
		return result;
		
	}
	
	//�̸��� �ߺ� üũ �ڵ�
	public int userEmailCheck(String email) {

		userDao = sessionTemplate.getMapper(UserDaoInterface.class);

		return userDao.checkOverEmail(email);

}
	
	public int orderNumCheck(int orderNum) {
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		return userDao.ordernumCheck(orderNum);
	}
	
public LoginDTO getReadDataInfo(String email) {
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
				
		return userDao.getReadDataInfo(email);			

	} 
	
	public MyMachineDTO getReadDataMachine(String email,int num) {
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
				
		return userDao.getReadDataMachine(email,num);			

	} 


	public void updateAd_ok(LoginDTO dto) {
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	try {
		
		userDao.updateAd_ok(dto);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}
	 

	public void updatePinfo(LoginDTO dto) {
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		System.out.println("updatePinfo");
		try {
			
			userDao.updatePinfo(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}


}
	
public void updatePwd(LoginDTO dto) {
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		System.out.println("updatePwd");
		try {
			
			userDao.updatePwd(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}


}

public void updateMachineDate(MyMachineDTO dtom) {
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	System.out.println("service : machineDate");
	
	try {
		
		userDao.updateMachineDate(dtom);
	} catch (Exception e) {
		e.printStackTrace();
	}
	
}

public int getMaxNum() {
	
	int maxNum = 0;
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	
	maxNum = userDao.getMaxNum();
	
	return maxNum;
}

public int getDataCount() {
	
	int totalDataCount = 0;

	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	return totalDataCount;
	
}


public List<MyMachineDTO> list(String email) throws Exception{
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	return userDao.getMachineList(email);
}

public void deleteMachine(int num) throws Exception {
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);

	
	userDao.deleteMachine(num);
}

public void insertMyOrder(MyOrderDTO dtoOrder) throws Exception {
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	userDao.insertMyOrder(dtoOrder);
}
	 
public List<MyOrderDTO> myOrderList(String email) throws Exception{
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	return userDao.getMyOrderlist(email);
}

public MyOrderDTO readMyOrder(String email,int orderNum) throws Exception{
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);

	return userDao.readMyOrder(email,orderNum);
	
}

//orderNum
public int maxOrderNum(){
	
	int maxOrderNum = 0;

	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	maxOrderNum = userDao.maxOrderNum();

	return maxOrderNum;

}

public List<OrderListDTO> getOrderListBottm(String email, String type1, String type2,int orderNum) throws Exception{		
	System.out.print("�ֹ����� �Ʒ� ����Ʈ service: " + email + ", " + type1 + ", " + type2 + "," + orderNum);
	Map<String, Object> hmap = new HashMap<String, Object>();
	
	hmap.put("email", email);
	hmap.put("type1", type1);
	hmap.put("type2", type2);
	hmap.put("orderNum", orderNum);
	
	
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);

	
	List<OrderListDTO> lists = 
			userDao.getOrderListBottm(hmap);		
	Iterator<OrderListDTO> io = lists.iterator();
	
	while(io.hasNext()) {
		
		OrderListDTO dto = io.next();
		System.out.println("," + dto.getOrderNum());
	}
	
	System.out.println(", " + lists.size());
	return lists;
}

//orderList setNum
	public int maxNumOrderList() {
	
		int maxNum = 0;
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);

		maxNum = userDao.maxNumOrderList();
		
		System.out.println(maxNum);
		
		return maxNum;
		
	}
	//insertOrderList
	public void insertOrderList(OrderListDTO oldto) throws Exception{
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		userDao.insertOrderList(oldto);
		
	}
	//getOrderListCount
	public int getOrderListCount(String email) throws Exception{
		
	int su = 0;
	
	userDao = sessionTemplate.getMapper(UserDaoInterface.class);
	
	su = userDao.getOrderListCount(email);
	
	System.out.println(su);

	return su;

	}
	
	//getOrderListCount
		public int getMyOrderNum(String email) throws Exception{
			
		int su = 0;
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		su = userDao.getMyOrderNum(email);
		
		System.out.println(su);

		return su;

		}
	
	
	//totalprice
	public int getTotalPrice(String email) throws Exception{
		
		int totalPrice = 0;
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);

		totalPrice = userDao.getTotalPrice(email);
		
		return totalPrice;
	}
	
	public MyOrderDTO getTotalPriceViaOrderNum(String email,int orderNum) throws Exception{
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);

		return userDao.getTotalPriceViaOrderNum(email,orderNum);
		
	}
	
	
}
