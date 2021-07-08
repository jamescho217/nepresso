package com.user.service;


import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

import com.exe.dto.LoginDTO;
import com.user.inter.UserDaoInterface;



public class MailSendService {

	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	private UserDaoInterface userDao;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}
	
	// �̸��� ���� ����� �޼���
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}

	// ������ �̿��� Ű ����
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	// ȸ������ �߼� �̸���(����Ű �߼�)
	public void mailSendWithUserKey(String email,String lName,String name, HttpServletRequest request) {
		
		String key = getKey(false, 20);
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		  userDao.GetKey(email, key);
		 	MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>�ȳ��ϼ��� nespresso�Դϴ�</h2><br><br>" 
				+ "<h3>" + lName + name + "��</h3>" + "<p>�����ϱ� ��ư�� �����ø� �α����� �Ͻ� �� �ֽ��ϴ� : " 
				+ "<a href='http://localhost:8080" + request.getContextPath() + "/user/key_alter?email="+ email +"&name=" + name + "&lName=" + lName + "&user_key="+key+"'>�����ϱ�</a></p>"
				+ "(Ȥ�� �߸� ���޵� �����̶�� �� �̸����� �����ϼŵ� �˴ϴ�)";
		try {
			mail.setSubject("[��������] NESPRESSO ���������Դϴ�", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		// �Ƹ��� �ּ� : http://54.180.117.142/MS/user/key_alter?user_id=
		
	}
	
	// �н����� ã�� �̸��� �߼�
	public void mailSendWithPassword(String email,HttpServletRequest request) {
		
		// �ӽ� ��й�ȣ�� 6�ڸ� ������ �ٲٰ� �����ͺ��̽� ��й�ȣ�� �ٲ��ش�
		String key = getKey(false, 6);
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		// ȸ�� �̸� ������ �ڵ�
		LoginDTO vo = userDao.userInfo(email);
		String name = vo.getName();
		String lName = vo.getlName();
		
		System.out.println("��й�ȣ ã�� : Service");
		
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>�ȳ��ϼ��� '"+ lName + name +"' ��</h2><br><br>" 
				+ "<p>��й�ȣ ã�⸦ ��û���ּż� �ӽ� ��й�ȣ�� �߱��ص�Ƚ��ϴ�.</p>"
				+ "<p>�ӽ÷� �߱� �帰 ��й�ȣ�� <h2 style='color : blue'>'" + key +"'</h2>�̸� �α��� �� �������������� ��й�ȣ�� �������ֽø� �˴ϴ�.</p><br>"
				+ "<h3><a href='http://localhost:8080/nespresso/login'> Ȩ������ ���� ^0^</a></h3><br><br>"
				+ "(Ȥ�� �߸� ���޵� �����̶�� �� �̸����� �����ϼŵ� �˴ϴ�)";
		try {
			mail.setSubject("[nespresso] �ӽ� ��й�ȣ�� �߱޵Ǿ����ϴ�", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		//���� �ӽú���� ��ȣȭ
		key = UserSha256.encrypt(key);
		
		//db�� ��ȣȭ�Ȱ� ����
		userDao.searchPassword(email, key);
	}

	// ���� Ȯ�� �޼��� (Y ������ �ٲ��ִ� �޼���)
	public int alter_userKey_service(String email, String key,String name,String lName) {
		
		
		int resultCnt = 0;
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		resultCnt = userDao.alter_userKey(email, key);
		
		return resultCnt;
	}
	
public void mailSendAuthorization(String email, HttpServletRequest request) {
		
		String key = "�����";
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		//alter_status
		  userDao.GetKey(email, key);
		 	MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>�ȳ��ϼ��� nespresso�Դϴ�</h2><br><br>" 
				+ "<h3>�����ڴ�</h3>" + "<p>��ǰ ������ּ��� : " 
				+ "<a href='http://localhost:8080" + request.getContextPath() + "/user/status_alter?email="+ email +"&user_key="+key+"'>���� ������� �ٲ��ֱ�</a></p>"
				+ "(Ȥ�� �߸� ���޵� �����̶�� �� �̸����� �����ϼŵ� �˴ϴ�)";
		try {
			mail.setSubject("[�������] NESPRESSO �����ڸ����Դϴ�", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress("jamescho217@gmail.com"));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		// �Ƹ��� �ּ� : http://54.180.117.142/MS/user/key_alter?user_id=
		
	}
}
