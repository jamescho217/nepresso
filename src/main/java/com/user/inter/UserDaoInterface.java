package com.user.inter;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.exe.dto.LoginDTO;
import com.exe.dto.MyMachineDTO;
import com.exe.dto.MyOrderDTO;
import com.exe.dto.OrderListDTO;

public interface UserDaoInterface {
	
	//ȸ������ �޼ҵ�
	int regUser(LoginDTO dto) throws SQLException;
	
	//�ӽ� ��� �޼ҵ�
	public void insertMachine(MyMachineDTO dtom) throws Exception;
	// ���� ����Ű ���� �޼���
	int GetKey(String email, String user_key); 
	// ���� ����Ű Y�� �ٲ��ִ� �޼���
	int alter_userKey(String user_id, String key);

	//���� �α��� �޼ҵ�(header + login)
	LoginDTO loginUser(@Param("email")String email);
	
	//�̸��� �ߺ�üũ
	int checkOverEmail(String user_email);
	//�ӽ� ��� �ֱ�
	int searchPassword(String email,String key);
	//ȸ�� �̸� ��������
	LoginDTO userInfo(String email);
	//�ð�
	LoginDTO getDate(String email);
	

	
	//*********************myPage***********************
	
	//ad
	MyMachineDTO getReadDataMachine(@Param("email") String email,@Param("num") int num);
	
	LoginDTO getReadDataInfo(String email);

	
	//updateAd
	public void updateAd_ok(LoginDTO dto) throws Exception;
	
	//updatepinfo
	public void updatePinfo(LoginDTO dto) throws Exception;
	
	//updatePwd
	public void updatePwd(LoginDTO dto) throws Exception;
	
	//updateMachineDate
	public void updateMachineDate(MyMachineDTO dtom) throws Exception;
	//totalDataCount
	int getDataCount() throws Exception; 
	//updateMachineList
	public List<MyMachineDTO> getMachineList(String email) throws Exception;
	//getMaxNum
	public int getMaxNum();
	//deleteMachine
	public void deleteMachine(int num) throws Exception;
	//insert MyOrder
	public void insertMyOrder(MyOrderDTO dtoOrder) throws Exception;
	//show MyOrderList
	public List<MyOrderDTO> getMyOrderlist(@Param("email") String email) throws Exception;
	//read my order
	public MyOrderDTO readMyOrder(@Param("email") String email,@Param("orderNum") int orderNum) throws Exception;
	//orderList
	public List<OrderListDTO> getOrderListBottm(Map<String, Object> hmap) throws Exception;
	//orderNum maxNum
	public int maxOrderNum();
	//get MyOrderNum
	public int getMyOrderNum(String email) throws Exception;
	//orderList setNum
	public int maxNumOrderList();
	//insertOrderList
	public void insertOrderList(OrderListDTO oldto) throws Exception;
	//getOrderListCount
	public int getOrderListCount(String email) throws Exception;
	//totalprice
	public int getTotalPrice(String email) throws Exception;
	//find orderNum
	int ordernumCheck(int orderNum);
	
	public MyOrderDTO getTotalPriceViaOrderNum(@Param("email") String email,@Param("orderNum") int orderNum) throws Exception;

}