package com.exe.springweb;




import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.exe.dao.BasketDAO;
import com.exe.dto.BasketDTO;
import com.exe.dto.LoginDTO;
import com.exe.dto.MyMachineDTO;
import com.exe.dto.MyOrderDTO;
import com.exe.dto.OrderListDTO;
import com.exe.dto.ProfileDTO;
import com.user.service.MailSendService;
import com.user.service.MemberService;
import com.user.service.UserSha256;

@Controller
public class MemberController {

	@Autowired
	private MemberService member_service;

	@Autowired
	private MailSendService mailsendService;
	
	@Autowired
	private BasketDAO bDao;
	
	
	


	@RequestMapping(value="/login/createAccount")
	public ModelAndView cAccount() throws Exception{

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/createAccount");

		return mav;
	}


	@RequestMapping(value="/login/createAccount_ok",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String cAccount_ok(LoginDTO dto, HttpServletRequest request) throws Exception{



		dto.setName(request.getParameter("name"));
		dto.setlName(request.getParameter("lName"));
		dto.setEmail(request.getParameter("email"));
		dto.setPwd(request.getParameter("pwd"));

		String name = dto.getName();
		String lName = dto.getlName();
		String email = dto.getEmail();
		String pwd = dto.getPwd();

		System.out.println("createAccount.jsp four variables defined ");




		request.setAttribute("name", name);
		request.setAttribute("lName", lName);
		request.setAttribute("email", email);
		request.setAttribute("pwd", pwd);
		
		System.out.println(name + " " + lName);


		return "forward:/login/createAccount2";

	}


	@RequestMapping(value="/login/createAccount2")
	public ModelAndView c2Account() throws Exception{

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/createAccount2");

		return mav;
	}


	@RequestMapping(value="/login/createAccount2_ok",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String cAccount2_ok(LoginDTO dto, HttpServletRequest request) throws Exception{

		dto.setName(request.getParameter("name"));
		dto.setlName(request.getParameter("lName"));
		dto.setEmail(request.getParameter("email"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setAd1(request.getParameter("ad1"));
		dto.setAd2(request.getParameter("ad2"));
		dto.setPcode(request.getParameter("pcode"));
		dto.setExtraAd(request.getParameter("extraAd"));
		dto.setTel(request.getParameter("tel"));

		String name = dto.getName();
		String lName = dto.getlName();
		String email = dto.getEmail();
		String pwd =dto.getPwd();
		String ad1 = dto.getAd1();
		String ad2 = dto.getAd2();
		String pcode = dto.getPcode();
		String extraAd = dto.getExtraAd();
		String tel = dto.getTel();

		System.out.println(name);
		System.out.println(lName);
		System.out.println(email);
		System.out.println(pwd);
		System.out.println(ad1);
		System.out.println(ad2);
		System.out.println(pcode);
		System.out.println(extraAd);
		System.out.println(tel);

		//insert
		System.out.println("createAccount2.jsp four hidden received along with five attributes defined ");






		request.setAttribute("name", name);
		request.setAttribute("lName", lName);
		request.setAttribute("email", email);
		request.setAttribute("pwd", pwd);
		request.setAttribute("ad1", ad1);
		request.setAttribute("ad2", ad2);
		request.setAttribute("pcode", pcode);
		request.setAttribute("extraAd", extraAd);
		request.setAttribute("tel", tel);


		return "login/yourMachine";

	}


	@RequestMapping(value="/login/mailConfirm",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String success(LoginDTO dto, MyMachineDTO dtom, ProfileDTO dtoi,HttpServletRequest request) throws Exception{

		dto.setName(request.getParameter("name"));
		dto.setlName(request.getParameter("lName"));
		dto.setEmail(request.getParameter("email"));
		/*
		 * dto.setPwd(request.getParameter("pwd"));
		 * 
		 */		
		dto.setAd1(request.getParameter("ad1"));
		dto.setAd2(request.getParameter("ad2"));
		dto.setPcode(request.getParameter("pcode"));
		dto.setExtraAd(request.getParameter("extraAd"));
		dto.setTel(request.getParameter("tel"));

		int maxNum = member_service.getMaxNum();

		dtom.setNum(maxNum+1);

		dtom.setpDate(request.getParameter("pDate"));
		dtom.setpMonth(request.getParameter("pMonth"));
		dtom.setpYear(request.getParameter("pYear"));
		dtom.setFileImage(request.getParameter("fileImage"));
		dtom.setFileName(request.getParameter("fileName"));
		dtom.setpName(request.getParameter("pName"));



		//${param.name} | ${param.name}

		String name = dto.getName();
		String lName = dto.getlName();
		String email = dto.getEmail();
		/*
		 * String pwd =dto.getPwd();
		 */		
		String ad1 = dto.getAd1();
		String ad2 = dto.getAd2();
		String pcode = dto.getPcode();
		String extraAd = dto.getExtraAd();
		String tel = dto.getTel();

		String pDate = dtom.getpDate();
		String pMonth = dtom.getpMonth();
		String pYear = dtom.getpYear();
		String fileImage = dtom.getFileImage();
		String fileName = dtom.getFileName();
		String pName = dtom.getpName();

		//��й�ȣ ��ȣȮ��
		System.out.println("first step: " + dto.getPwd());

		//��ȣȭ
		String encryPassword = UserSha256.encrypt(dto.getPwd());
		dto.setPwd(encryPassword);

		System.out.println("after encry: " + dto.getPwd());



		//insert userInfo
		member_service.insertMember(dto);
		
		//insert instagram
		dtoi.setPageUserEmail(email);
		dtoi.setPageUserName(lName+name);
		
		int index=dtoi.getPageUserEmail().indexOf("@");
		
		String nickname=dtoi.getPageUserEmail().substring(0, index);
		
		dtoi.setNickname(nickname);
		
		bDao.bpinsertData(dtoi);
		
		//---------------
		
		
		
		
		System.out.println("�����ֳ�?" + fileImage);
		//insert Machine info
		
		  if(fileName!=null || fileName != "" || !fileName.equals("") ||
		     fileImage!=null || fileImage != "" || !fileImage.equals("") || 
		     pName!=null || pName != "" || !pName.equals("")) {
		  
		  System.out.println(fileImage); member_service.insertMachine(dtom);
		  
		  }
		 
		
		

		//��������
		mailsendService.mailSendWithUserKey(dto.getEmail(),dto.getlName(),dto.getName(),request);


		System.out.println(name);
		System.out.println(lName);
		System.out.println(email);
		System.out.println(encryPassword);
		System.out.println(ad1);
		System.out.println(ad2);
		System.out.println(pcode);
		System.out.println(extraAd);
		System.out.println(tel);
		System.out.println(pDate);
		System.out.println(pMonth);
		System.out.println(pYear);
		System.out.println(fileImage);
		System.out.println(fileName);
		System.out.println(pName);


		System.out.println("9 hiddens received along with 6 variables defined");
		System.out.println("and the db has been stored");

		/*
		 * request.setAttribute("name", name); request.setAttribute("lName", lName);
		 */


		return "login/mailConfirm";

	}

	// e-mail ���� ��Ʈ�ѷ�
	@RequestMapping(value = "/user/key_alter", method = RequestMethod.GET)
	public String key_alterConfirm(LoginDTO dto,HttpServletRequest req,
			@RequestParam("email") String email,@RequestParam("name") String name,
			@RequestParam("lName") String lName,@RequestParam("user_key") String key) {



		mailsendService.alter_userKey_service(email, key,name,lName); // y�� �ٲ��ִ� �Լ�

		return "login/success";
	}





	//****************************************************LOGIN*************************************************************


	@RequestMapping(value = "/login",method = {RequestMethod.GET,RequestMethod.POST})
	public String login(HttpSession session) {

		//���� ����
		session.invalidate();

		return "login/login";
	}

	@RequestMapping(value = "/", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public int loginPost(LoginDTO dto, HttpSession httpSession, HttpServletRequest request,
			HttpServletResponse response, Model model) {


		//�Ķ� ���� ��ü��
		//������ �α��� ����, ��Ű�� �̸��� ����

		// userLogin.jsp���� üũ �ڽ�
		// ��й�ȣ ��ȣȭ
		String email = dto.getEmail();
		String user_pw = dto.getPwd();

		System.out.println(email);
		System.out.println(user_pw);

		dto.setPwd(UserSha256.encrypt(user_pw));

		// ��ȣȭ Ȯ��
		System.out.println("user_pw : " + dto.getPwd());

		String user_check = request.getParameter("remember_email");

		System.out.println(user_check);

		// db�� ��												used in service for storing values in the cookie
		int result = member_service.loginMember(dto, httpSession, user_check, response);

		System.out.println(result);

		//��������********
				//Ŀ��
				List<BasketDTO> listsCo = bDao.getBasketList(email,"coffee","original");
				//�ӽ�		
				List<BasketDTO> listsMo = bDao.getBasketList(email,"machine","original");
				
				//�����**********
				//Ŀ��
				List<BasketDTO> listsCv = bDao.getBasketList(email,"coffee","vertuo");
				//�ӽ�
				List<BasketDTO> listsMv = bDao.getBasketList(email,"machine","vertuo");

				//�׻�����********
				List<BasketDTO> listsAc = bDao.getBasketList(email,"acc","acc");
				
				//��ü����Ʈ ��******
				int totalLength = bDao.getBasketListCount(email);
				if(totalLength != 0) {
					//��ü����Ʈ ��ǰ��******
					int totalCount = bDao.getBasketCount(email);

					//�ѱݾ�******
					int totalPrice = bDao.getTotalPrice(email);
					System.out.println(totalPrice);
					httpSession.setAttribute("totalCount", totalCount);
					httpSession.setAttribute("totalPrice", totalPrice);
				}
				

				httpSession.setAttribute("listsCo", listsCo);
				httpSession.setAttribute("listsMo", listsMo);
				httpSession.setAttribute("listsCv", listsCv);
				httpSession.setAttribute("listsMv", listsMv);
				httpSession.setAttribute("listsAc", listsAc);
				httpSession.setAttribute("totalLength", totalLength);
				

		return result;
	}

	@RequestMapping(value="/mainPage")
	public ModelAndView main() throws Exception{



		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/mainPage");

		return mav;
	}

	@RequestMapping(value = "/logout", method = {RequestMethod.GET,RequestMethod.POST})
	public String updateMyMachine(HttpSession session) throws Exception{

		session.invalidate();

		return "redirect:/mainPage";
	}

	//************************************************OTHER******************************************

	//�̸��� �ߺ� üũ ���۽�
	@RequestMapping(value = "/login/emailCheck", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {

		return member_service.userEmailCheck(email);
	}





	@RequestMapping(value="/login/pwdSearch")
	public ModelAndView pwdSearch() throws Exception{

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/pwdSearch");

		return mav;
	}
	//��� ã��
	@RequestMapping(value = "/user/searchPassword", method = RequestMethod.GET)
	@ResponseBody
	public String passwordSearch(HttpServletRequest request) {

		String email = request.getParameter("email");

		System.out.println("/user/searchPassword controller");
		mailsendService.mailSendWithPassword(email,request);

		return "login/pwdSearchMail";
	}

	@RequestMapping(value = "/login/pwdSearchMail", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView pwdSearchMail(LoginDTO dto) throws Exception{

		ModelAndView mav = new ModelAndView();

		String email = dto.getEmail();

		mav.setViewName("login/pwdSearchMail");
		mav.addObject("email", email);

		return mav;
	}



	//************************************myPage**************************************


	//my adress
	@RequestMapping(value="/login/myPage/adress") 
	public ModelAndView myPageAdress(HttpServletRequest request,LoginDTO dto,HttpSession session) throws Exception{
		//name


		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();

		dto = member_service.getReadDataInfo(email);

		if(dto==null) {

			System.out.println("�ڵ� ��� ����/myPage/adress");
		}



		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/myPage/adress");

		mav.addObject("dto",dto);
		System.out.println("���� �ּ�â");

		return mav; 

	}

	//myAdress updateAdress

	@RequestMapping(value="/login/myPage/adress/updateAdress") 
	public ModelAndView updateAdress(LoginDTO dto,HttpSession session,Model model) throws Exception{
		//name
		//�Է�â


		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();

		dto = member_service.getReadDataInfo(email);

		if(dto==null) {

			System.out.println("�ڵ� ��� ���� /myPage/updateAdress �Է�â");
		}

		System.out.println("�ּҼ���â");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/myPage/updateAdress");

		mav.addObject("dto",dto);


		return mav; 

	}

	//update ad process
	@RequestMapping(value = "/login/myPage/adress/updateAdress_ok", method = {RequestMethod.POST})

	public String updateAdress_ok(LoginDTO dto,HttpSession session) throws Exception {

		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();

		System.out.println(email);

		member_service.updateAd_ok(dto);

		String ad1 = dto.getAd1();
		String ad2 = dto.getAd2();
		String extraAd = dto.getExtraAd();
		String pcode = dto.getPcode();
		String tel = dto.getTel();

		System.out.println(ad1);
		System.out.println(ad2);
		System.out.println(extraAd);
		System.out.println(pcode);
		System.out.println(tel);


		return "redirect:/login/myPage/adress";

	}
	
	@RequestMapping(value="/getOrderNum", method = RequestMethod.GET)
	@ResponseBody
	public int orderNumCheck(@RequestParam("orderNum") int orderNum) {

		return member_service.orderNumCheck(orderNum);
	}
	
	@RequestMapping(value="/login/myPage/myOrder")
	public ModelAndView myOrder(HttpSession session,
			HttpServletRequest request,Model model,MyOrderDTO dtoOrder) throws Exception{
		
		//myOrder
		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");
		
		//vo.getEmail()
		String email = vo.getEmail();
		
		System.out.println(email);
		//MyOrderDTO read = member_service.readMyOrder(email);
		
		
		
		int orderNumCount = 0;
		
		orderNumCount = member_service.getMyOrderNum(email);
			
			
		
		String orderDate = dtoOrder.getOrderDate();
		
		
		//myOrder�� list 
		model.addAttribute("myOrder",member_service.myOrderList(email));
		
		
		
		request.setAttribute("orderDate", orderDate);
		
		//--orderList
		//��������********
				//Ŀ��																	type 1    type 2
			
				//��ü����Ʈ ��******
				int totalLength = member_service.getOrderListCount(email);//5 orderList

				int totalPrice = dtoOrder.getTotalPrice();
						
				
				request.setAttribute("totalLength", totalLength);		
				request.setAttribute("totalPrice", totalPrice);
				request.setAttribute("dtoOrder", dtoOrder);
				request.setAttribute("orderNumCount", orderNumCount);


		ModelAndView mav = new ModelAndView();
		mav.setViewName("/login/myPage/myOrder");

		return mav;
	}
	
	@RequestMapping(value="/login/myPage/orderList" , method= {RequestMethod.POST,RequestMethod.GET})
	public String orderList(HttpSession session,
			HttpServletRequest request,Model model,MyOrderDTO dtoOrder) throws Exception{
		
		//myOrder
		
		
		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");
		
		//vo.getEmail()
		String email = vo.getEmail();
		
		System.out.println(email);
		//MyOrderDTO read = member_service.readMyOrder(email);
		
		
		
		int orderNum = Integer.parseInt(request.getParameter("orderNum"));
		
		
			
			
		
		MyOrderDTO read = member_service.readMyOrder(email,orderNum);
		System.out.println(read.getOrderDate());
		
		String orderDate = read.getOrderDate();
		System.out.println(orderNum);
		
		//myOrder�� list 
		model.addAttribute("myOrder",member_service.myOrderList(email));
		
		
		
	
		//--orderList
		//��������********
				//Ŀ��																	type 1    type 2
				List<OrderListDTO> listsCo = member_service.getOrderListBottm(email,"coffee","original",orderNum);
				
				Iterator<OrderListDTO> io = listsCo.iterator();
				
				while(io.hasNext()) {
					
					OrderListDTO dto = io.next();
					System.out.println("�����" + dto.getOrderNum());
				}
				
				//�ӽ�		
				List<OrderListDTO> listsMo = member_service.getOrderListBottm(email,"machine","original",orderNum);
				
				//�����**********
				//Ŀ��
				List<OrderListDTO> listsCv = member_service.getOrderListBottm(email,"coffee","vertuo",orderNum);
				//�ӽ�
				List<OrderListDTO> listsMv = member_service.getOrderListBottm(email,"machine","vertuo",orderNum);
				
				//�׻�����********
				List<OrderListDTO> listsAc = member_service.getOrderListBottm(email,"acc","acc",orderNum);
				
				//��ü����Ʈ ��******
				int totalLength = member_service.getOrderListCount(email);
				//ordernum���� ��ȸ�ؼ� ����ߵ�
				int totalPrice = read.getTotalPrice();
				
				String transport = read.getTransport();
				
				request.setAttribute("listsMo", listsMo);
				request.setAttribute("listsCv", listsCv);
				request.setAttribute("listsMv", listsMv);
				request.setAttribute("listsAc", listsAc);
				request.setAttribute("totalLength", totalLength);		
				request.setAttribute("totalPrice", totalPrice);
				request.setAttribute("dtoOrder", dtoOrder);
				request.setAttribute("orderDate", orderDate);
				request.setAttribute("transport", transport);
				
				request.setAttribute("vo", vo);
				
				model.addAttribute("listsCo",listsCo);
				


		return "login/myPage/myOrderList";
	}

	@RequestMapping(value="/login/myPage/pinfo")
	public ModelAndView pinfo(HttpSession session,LoginDTO dto) throws Exception{

		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();

		dto = member_service.getReadDataInfo(email);

		if(dto==null) {

			System.out.println("�ڵ� ��� ���� /myPage/pinfo �Է�â");
		}

		System.out.println("��������");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/myPage/pinfo");

		mav.addObject("dto",dto);



		return mav; 

	}

	//update pinfo process
	@RequestMapping(value = "/login/myPage/pinfo/update", method = {RequestMethod.POST})

	public String updatePinfo(LoginDTO dto, ProfileDTO dtoi,HttpSession session,HttpServletRequest request) throws Exception {


		System.out.println(dto.getEmail());
		

		member_service.updatePinfo(dto);
		
		

		String name = dto.getName();
		String lName = dto.getlName();
		String emailnew = dto.getEmail();
	

		System.out.println(name);
		System.out.println(lName);
		System.out.println(emailnew);
		
		//update instagram
				dtoi.setPageUserEmail(emailnew);
				dtoi.setPageUserName(lName+name);
				
				int index=dtoi.getPageUserEmail().indexOf("@");
				
				String nickname=dtoi.getPageUserEmail().substring(0, index);
				
				dtoi.setNickname(nickname);
				
				bDao.bpupdateData2(dtoi);
				//-------

		session.setAttribute("userSession", dto);

		return "redirect:/login/myPage/pinfo";

	}

	//update pinfo process
	@RequestMapping(value = "/login/myPage/pinfo/updatePwd", method = {RequestMethod.POST})

	public String pwdinfo(LoginDTO dto,HttpSession session) throws Exception {


		System.out.println("pwd change before");



		// ��ȣȭ Ȯ�� ���ο� pwd encrypt
		String encryPassword = UserSha256.encrypt(dto.getPwd());
		dto.setPwd(encryPassword);

		member_service.updatePwd(dto);



		// ��ȣȭ Ȯ��
		System.out.println("user_pw : " + dto.getPwd());

		System.out.println("��� ����");



		return "redirect:/login/myPage/pinfo";

	}

	@RequestMapping(value="/login/myPage/infoAlarm")
	public ModelAndView infoAlarm() throws Exception{

		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/myPage/infoAlarm");

		return mav;
	}

	@RequestMapping(value = "/login/myPage/myMachine", method = {RequestMethod.GET,RequestMethod.POST})
	public String myMachine(LoginDTO dto,MyMachineDTO dtom, HttpSession session,HttpServletRequest request,Model model) throws Exception{

		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();
		System.out.println(email);
		//����Ʈ ����

		model.addAttribute("list",member_service.list(email));

		request.setAttribute("dto", vo);
		request.setAttribute("dtom", dtom);



		return "login/myPage/myMachine";
	}

	@RequestMapping(value = "/login/myPage/myMachine/updateMachine", method = {RequestMethod.GET,RequestMethod.POST})
	public String updateMachineDate(LoginDTO dto,MyMachineDTO dtom, HttpSession session,HttpServletRequest request) throws Exception{

		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		System.out.println(num);

		dtom = member_service.getReadDataMachine(email,num);

		request.setAttribute("dtom", dtom);
		request.setAttribute("dto", dto);

		return "login/myPage/updateMachine";
	}

	//update machine date from myMachine
	@RequestMapping(value = "/login/myPage/myMachine/updateMachineDate_ok", method = {RequestMethod.POST})

	public String updateMachineDate_ok(MyMachineDTO dtom,HttpSession session,HttpServletRequest request) throws Exception {

		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();
		int num = Integer.parseInt(request.getParameter("num"));

		dtom.setEmail(email);
		dtom.setNum(num);
		
		member_service.updateMachineDate(dtom);
		
		
		
		String pDate = dtom.getpDate();
		String pMonth = dtom.getpMonth();
		String pYear = dtom.getpYear();

		System.out.println(pDate);
		System.out.println(pMonth);
		System.out.println(pYear);





		return "redirect:/login/myPage/myMachine";

	}

	//delete machine date process
	@RequestMapping(value = "/login/myPage/myMachine/deleteMachine_ok", method = {RequestMethod.POST,RequestMethod.GET})

	public String deleteMachine(MyMachineDTO dtom,HttpSession session,HttpServletRequest request) throws Exception {



		int num = Integer.parseInt(request.getParameter("num"));

		System.out.println(num);



		member_service.deleteMachine(num);

		return "redirect:/login/myPage/myMachine";

	}


	@RequestMapping(value = "/login/myPage/myMachine/addMachine", method = {RequestMethod.GET,RequestMethod.POST})
	public String addMachine(LoginDTO dto,MyMachineDTO dtom,HttpSession session,HttpServletRequest request) throws Exception{

		LoginDTO vo = (LoginDTO)session.getAttribute("userSession");

		String email = vo.getEmail();

		request.setAttribute("paramEmail", email);


		return "/login/myPage/addMachine";
	}






	@RequestMapping(value = "/login/myPage/myMachine/addMachine_ok", method = {RequestMethod.GET,RequestMethod.POST})
	public String addMachine_ok(LoginDTO dto,MyMachineDTO dtom,HttpServletRequest request) throws Exception{

		int maxNum = member_service.getMaxNum();

		dtom.setNum(maxNum +1);

		System.out.println(request.getParameter("paramEmail"));
		dtom.setEmail(request.getParameter("paramEmail"));
		dtom.setpDate(request.getParameter("pDate"));
		dtom.setpMonth(request.getParameter("pMonth"));
		dtom.setpYear(request.getParameter("pYear"));
		dtom.setFileImage(request.getParameter("fileImage"));
		dtom.setFileName(request.getParameter("fileName"));
		dtom.setpName(request.getParameter("pName"));

		member_service.insertMachine(dtom);



		return "redirect:/login/myPage/myMachine";
	}
	
	


}
