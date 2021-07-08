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
	
	// 이메일 난수 만드는 메서드
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

	// 난수를 이용한 키 생성
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}

	// 회원가입 발송 이메일(인증키 발송)
	public void mailSendWithUserKey(String email,String lName,String name, HttpServletRequest request) {
		
		String key = getKey(false, 20);
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		  userDao.GetKey(email, key);
		 	MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요 nespresso입니다</h2><br><br>" 
				+ "<h3>" + lName + name + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : " 
				+ "<a href='http://localhost:8080" + request.getContextPath() + "/user/key_alter?email="+ email +"&name=" + name + "&lName=" + lName + "&user_key="+key+"'>인증하기</a></p>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[본인인증] NESPRESSO 인증메일입니다", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		// 아마존 주소 : http://54.180.117.142/MS/user/key_alter?user_id=
		
	}
	
	// 패스워드 찾기 이메일 발송
	public void mailSendWithPassword(String email,HttpServletRequest request) {
		
		// 임시 비밀번호는 6자리 난수로 바꾸고 데이터베이스 비밀번호를 바꿔준다
		String key = getKey(false, 6);
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		// 회원 이름 꺼내는 코드
		LoginDTO vo = userDao.userInfo(email);
		String name = vo.getName();
		String lName = vo.getlName();
		
		System.out.println("비밀번호 찾기 : Service");
		
		MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요 '"+ lName + name +"' 님</h2><br><br>" 
				+ "<p>비밀번호 찾기를 신청해주셔서 임시 비밀번호를 발급해드렸습니다.</p>"
				+ "<p>임시로 발급 드린 비밀번호는 <h2 style='color : blue'>'" + key +"'</h2>이며 로그인 후 마이페이지에서 비밀번호를 변경해주시면 됩니다.</p><br>"
				+ "<h3><a href='http://localhost:8080/nespresso/login'> 홈페이지 접속 ^0^</a></h3><br><br>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[nespresso] 임시 비밀번호가 발급되었습니다", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		//받은 임시비번을 암호화
		key = UserSha256.encrypt(key);
		
		//db는 암호화된거 넣자
		userDao.searchPassword(email, key);
	}

	// 인증 확인 메서드 (Y 값으로 바꿔주는 메서드)
	public int alter_userKey_service(String email, String key,String name,String lName) {
		
		
		int resultCnt = 0;
		
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		resultCnt = userDao.alter_userKey(email, key);
		
		return resultCnt;
	}
	
public void mailSendAuthorization(String email, HttpServletRequest request) {
		
		String key = "대기중";
		userDao = sessionTemplate.getMapper(UserDaoInterface.class);
		
		//alter_status
		  userDao.GetKey(email, key);
		 	MimeMessage mail = mailSender.createMimeMessage();
		String htmlStr = "<h2>안녕하세요 nespresso입니다</h2><br><br>" 
				+ "<h3>관리자님</h3>" + "<p>상품 배송해주세요 : " 
				+ "<a href='http://localhost:8080" + request.getContextPath() + "/user/status_alter?email="+ email +"&user_key="+key+"'>상태 배송으로 바꿔주기</a></p>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
		try {
			mail.setSubject("[배송인증] NESPRESSO 관리자메일입니다", "utf-8");
			mail.setText(htmlStr, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress("jamescho217@gmail.com"));
			mailSender.send(mail);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		// 아마존 주소 : http://54.180.117.142/MS/user/key_alter?user_id=
		
	}
}
