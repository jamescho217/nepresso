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
	
	
	//회원가입
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

		System.out.println("loginMember // 로그인 객체 확인 userVO : " + dto);
		
		//아래 vo(db)와 값 비교 위해 새로운 변수 선언
		String user_email = dto.getEmail();
		String user_pwd = dto.getPwd();

		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		LoginDTO vo = userDao.loginUser(user_email);
//		StoreVO storeVO = userDao.getUserStoreVO(store_id);

		System.out.println("loginMember // 로그인 객체 확인 vo : " + vo);

		// 로그인 결과값 
		int result = 0; 

		// 회원 정보가 없을 시 ajax mapping to logincheck css
		if (vo == null) {
			result = 0;
			return result;
		}
		
		// 인증 안 했을 경우 인증하란 메세지 발생
				String y = "Y";
				if (!(vo.getUser_key().equals(y))) {
					result = -1;
					return result;
				}


		// 입력한 아이디와 스토어id값을 통해 정보가 존재 할 경우
		if (vo != null) {
			// 아이디,비번,스토어id가 모두 같은경우
			System.out.println("1단계");
			
			//값 비교
			if (vo.getEmail().equals(user_email) && vo.getPwd().equals(user_pwd)) {
				
				
				System.out.println("2단계");
				// 쿠키 생성하여 클라이언트 쪽에 email 저장
				Cookie cookie = new Cookie("user_check", user_email);
				
				if (user_check.equals("true")) {//check 되어 있으면 response객체을 이용해 쿠키 보내기
					
					response.addCookie(cookie);
					System.out.println("3단계-쿠키 아이디저장 O");
					// 쿠키 확인
					// System.out.println("Service check" + cookie);
				} else {
					System.out.println("3단계-쿠키 아이디저장 X"); //체크 안되어 있으면 쿠키 없애고 값을 서버로 보냄
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}

				System.out.println("3단계-로그인단계");
				
				vo.setPwd(""); //session에 저장함 객체의 비밀번호가 그대로 노출이 되지 않도록 빈문자열로 저장

				// 세션에 vo 객체 저장
				httpSession.setAttribute("userSession", vo);
				System.out.println("회원아이디 세션 userSession : " + httpSession.getAttribute("userSession"));
				
				
				result = 1;//다음 페이지 이동
				
			}
			
		}
		
		
		return result;
		
	}
	
	//이메일 중복 체크 코딩
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
	System.out.print("주문내역 아래 리스트 service: " + email + ", " + type1 + ", " + type2 + "," + orderNum);
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
