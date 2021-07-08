package com.exe.springweb;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.exe.dao.BasketDAO;
import com.exe.dto.BasketDTO;
import com.exe.dto.CommentDTO;
import com.exe.dto.FaqDTO;
import com.exe.dto.ImageFileDTO;
import com.exe.dto.LoginDTO;
import com.exe.dto.NesAoDTO;
import com.exe.dto.NesCoDTO;
import com.exe.dto.NesCvDTO;
import com.exe.dto.NesMoDTO;
import com.exe.dto.NesMvDTO;
import com.exe.dto.NoticeDTO;
import com.exe.dto.ProfileDTO;
import com.exe.dto.StoryDTO;
import com.exe.util.MyUtil;

@Controller
public class FaqController {
	
	@Autowired
	@Qualifier("basketDAO")
	BasketDAO dao;
	
	@Autowired
	MyUtil myUtil;
	

	
//요한SERVICE
	@RequestMapping(value = "/service.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView service() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/service");
		
		return mav;
	}
	@RequestMapping(value = "/gservice.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView gservice() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/gservice");
		
		return mav;
	}
	@RequestMapping(value = "/rservice.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView rservice() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/rservice");
		
		return mav;
	}
	@RequestMapping(value = "/recycleservice.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView recycleservice() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/recycleservice");
		
		return mav;
	}
	@RequestMapping(value = "/aluminiumfaq.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView aluminiumfaq() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/aluminium");
		
		return mav;
	}
	@RequestMapping(value = "/ground.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView ground() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/ground");
		
		return mav;
	}
	
	//---------오리지날,버츄오
	@RequestMapping(value = "/m_original.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView m_original() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/m_original");
		
		return mav;
	}
	@RequestMapping(value = "/m_vertuo.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView m_vertuo() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/m_vertuo");
		
		return mav;
	}
	
	
	
	//--------------------가이드!!---------------
	
	@RequestMapping(value = "/guide.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView guide() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/guide");
		
		return mav;
	}
	
	@RequestMapping(value = "/mguide.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mguide() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mguide");
		
		return mav;
	}
	
	
	@RequestMapping(value = "/rguide.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView rguide() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/rguide");
		
		return mav;
	}

	//---------notice created-----------------
	@RequestMapping(value = "/noticecreated.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView noticecreated() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/noticecreated");
		
		return mav;
	}
	
	@RequestMapping(value = "/noticecreated_ok.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String noticecreated_ok(NoticeDTO dto, HttpServletRequest request) throws Exception{
	
		int maxNum = dao.ngetMaxNum();
		
		dto.setNnum(maxNum + 1);
		
		dao.ninsertData(dto);
		
		return "redirect:/noticecreated.action";
		
	}
	
	//----------------------------------공지사항리스트---------------------------------------
		@RequestMapping(value = "/notice.action",
				method = {RequestMethod.GET,RequestMethod.POST})
		public String notice(HttpServletRequest request) throws Exception{
			
			String cp = request.getContextPath();
			
			String pageNum = request.getParameter("pageNum");
			//첫번째페이지
			int currentPage=1;
			//판단
			if(pageNum!=null) {
				currentPage = Integer.parseInt(pageNum);
			}
			//검색
			String searchKey = request.getParameter("searchKey");
			String searchValue = request.getParameter("searchValue");

			
			//null인지 판단
			if(searchValue==null) {
				searchKey = "nsubject";
				searchValue = "";
			}else {
				//겟방식으로??
				if(request.getMethod().equals("GET")) {
					//utf8로디코딩해라
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
			
			int dataCount = dao.ngetDataCount(searchKey, searchValue);
			
			//전체페이지수
			int numPerPage = 100; //페이지당5개씩
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage)
				currentPage=totalPage;
			
			int start = (currentPage-1)*numPerPage+1;//rownum의시작값
			int end = currentPage*numPerPage;
			
			List<NoticeDTO> lists = dao.ngetList(start, end, searchKey, searchValue);

			String param = "";
			//검색을했는지??
			if(!searchValue.equals("")) {
				param = "searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String listUrl = cp + "/notice.action";
			
			if(!param.equals("")) {
				listUrl += "?" + param;
			}
			
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			//article주소정리
			String articleUrl = cp + "/article.action?pageNum=" + currentPage;
			
			//검색된상태에서들어갈수있으니까
			if(!param.equals("")) {
				articleUrl += "&" + param;
			}
			
			//포워딩할 페이지에 넘길 데이터!!
			request.setAttribute("lists", lists);
			request.setAttribute("pageIndexList", pageIndexList);
			request.setAttribute("dataCount", dataCount);
			request.setAttribute("articleUrl", articleUrl);
			
			return "nespresso/notice";
		}
	
	
	
	//-----------------------------------리스트---------------------------------------
		@RequestMapping(value = "/faq.action",
				method = {RequestMethod.GET,RequestMethod.POST})
		public String faqpage(HttpServletRequest request) throws Exception{
			
			String cp = request.getContextPath();
			
			String pageNum = request.getParameter("pageNum");
			//첫번째페이지
			int currentPage=1;
			//판단
			if(pageNum!=null) {
				currentPage = Integer.parseInt(pageNum);
			}
			//검색
			String searchKey = request.getParameter("searchKey");
			String searchValue = request.getParameter("searchValue");

			
			//null인지 판단
			if(searchValue==null) {
				searchKey = "fsubject";
				searchValue = "";
			}else {
				//겟방식으로??
				if(request.getMethod().equals("GET")) {
					//utf8로디코딩해라
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
			
			int dataCount = dao.getDataCount(searchKey, searchValue);
			
			//전체페이지수
			int numPerPage = 100; //페이지당5개씩
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage)
				currentPage=totalPage;
			
			int start = (currentPage-1)*numPerPage+1;//rownum의시작값
			int end = currentPage*numPerPage;
			
			List<FaqDTO> lists = dao.getList(start, end, searchKey, searchValue);
			

	//자주하는 질문 TOP 5---------
			
			String searchKey1 = "fsubject";
			String searchValue1 = " ";
			String cate1 = "자주하는 질문 TOP 5";
			List<FaqDTO> lists1 = dao.getList1(start, end, searchKey1, searchValue1,cate1);
	//---------------------------
	//결제관련---------
			/*
			String searchKey2 = "fcategory";
			String searchValue2 = "결제관련";
			*/
			String cate2 = "결제관련";
			int dataCount2 = dao.getDataCount1(searchKey, searchValue,cate2);
			List<FaqDTO> lists2 = dao.getList1(start, end, searchKey, searchValue,cate2);
	//---------------------------
	//버츄오 라인---------
			/*
			String searchKey3 = "fcategory";
			String searchValue3 = "버츄오 라인";
			*/
			String cate3 = "버츄오 라인";
			int dataCount3 = dao.getDataCount1(searchKey, searchValue,cate3);
			List<FaqDTO> lists3 = dao.getList1(start, end, searchKey, searchValue,cate3);
	//---------------------------
	//제품 정보---------
			/*
			String searchKey4 = "fcategory";
			String searchValue4 = "제품 정보";
			*/
			String cate4 = "제품 정보";
			int dataCount4 = dao.getDataCount1(searchKey, searchValue,cate4);
			List<FaqDTO> lists4 = dao.getList1(start, end, searchKey, searchValue,cate4);
	//---------------------------
	//주문 및 주문 확인---------
			/*
			String searchKey5 = "fcategory";
			String searchValue5 = "주문 및 주문 확인";
			*/
			String cate5 = "주문 및 주문 확인";
			int dataCount5 = dao.getDataCount1(searchKey, searchValue,cate5);
			List<FaqDTO> lists5 = dao.getList1(start, end, searchKey, searchValue,cate5);
	//---------------------------		
	//온라인 지원---------
			/*
			String searchKey6 = "fcategory";
			String searchValue6 = "온라인 지원";
			*/
			String cate6 = "온라인 지원";
			int dataCount6 = dao.getDataCount1(searchKey, searchValue,cate6);
			List<FaqDTO> lists6 = dao.getList1(start, end, searchKey, searchValue,cate6);
	//---------------------------
	//머신 지원---------
			/*
			String searchKey7 = "fcategory";
			String searchValue7 = "머신 지원";
			*/
			String cate7 = "머신 지원";
			int dataCount7 = dao.getDataCount1(searchKey, searchValue,cate7);
			List<FaqDTO> lists7 = dao.getList1(start, end, searchKey, searchValue,cate7);
	//---------------------------
	//브랜드 및 프로모션---------
			/*
			String searchKey8 = "fcategory";
			String searchValue8 = "브랜드 및 프로모션";
			*/
			String cate8 = "브랜드 및 프로모션";
			int dataCount8 = dao.getDataCount1(searchKey, searchValue,cate8);
			List<FaqDTO> lists8 = dao.getList1(start, end, searchKey, searchValue,cate8);
	//---------------------------
	//재활용---------
			/*
			String searchKey9 = "fcategory";
			String searchValue9 = "재활용";
			*/
			String cate9 = "재활용";
			int dataCount9 = dao.getDataCount1(searchKey, searchValue,cate9);
			List<FaqDTO> lists9 = dao.getList1(start, end, searchKey, searchValue,cate9);
	//---------------------------
			
			
			
			
			
			
			String param = "";
			//검색을했는지??
			if(!searchValue.equals("")) {
				param = "searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String listUrl = cp + "/list.action";
			
			if(!param.equals("")) {
				listUrl += "?" + param;
			}
			
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			//article주소정리
			String articleUrl = cp + "/article.action?pageNum=" + currentPage;
			
			//검색된상태에서들어갈수있으니까
			if(!param.equals("")) {
				articleUrl += "&" + param;
			}
			
			//포워딩할 페이지에 넘길 데이터!!
			request.setAttribute("lists", lists);
			request.setAttribute("lists1", lists1);
			request.setAttribute("lists2", lists2);
			request.setAttribute("lists3", lists3);
			request.setAttribute("lists4", lists4);
			request.setAttribute("lists5", lists5);
			request.setAttribute("lists6", lists6);
			request.setAttribute("lists7", lists7);
			request.setAttribute("lists8", lists8);
			request.setAttribute("lists9", lists9);
			request.setAttribute("pageIndexList", pageIndexList);
			request.setAttribute("dataCount", dataCount);
			request.setAttribute("dataCount2", dataCount2);
			request.setAttribute("dataCount3", dataCount3);
			request.setAttribute("dataCount4", dataCount4);
			request.setAttribute("dataCount5", dataCount5);
			request.setAttribute("dataCount6", dataCount6);
			request.setAttribute("dataCount7", dataCount7);
			request.setAttribute("dataCount8", dataCount8);
			request.setAttribute("dataCount9", dataCount9);
			request.setAttribute("articleUrl", articleUrl);
			
			return "nespresso/faqpage";
		}
	
	
	//-----------------------------------리스트---------------------------------------
	@RequestMapping(value = "/faqlist.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String faqlist(HttpServletRequest request) throws Exception{
		
		String cp = request.getContextPath();
		
		String pageNum = request.getParameter("pageNum");
		//첫번째페이지
		int currentPage=1;
		//판단
		if(pageNum!=null) {
			currentPage = Integer.parseInt(pageNum);
		}
		//검색
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		
		//null인지 판단
		if(searchValue==null) {
			searchKey = "fsubject";
			searchValue = "";
		}else {
			//겟방식으로??
			if(request.getMethod().equals("GET")) {
				//utf8로디코딩해라
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}
		
		int dataCount = dao.getDataCount(searchKey, searchValue);
		
		//전체페이지수
		int numPerPage = 100; //페이지당5개씩
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		if(currentPage>totalPage)
			currentPage=totalPage;
		
		int start = (currentPage-1)*numPerPage+1;//rownum의시작값
		int end = currentPage*numPerPage;
		
		List<FaqDTO> lists = dao.getList(start, end, searchKey, searchValue);
		

//자주하는 질문 TOP 5---------
		
		String searchKey1 = "fsubject";
		String searchValue1 = " ";
		String cate1 = "자주하는 질문 TOP 5";
		List<FaqDTO> lists1 = dao.getList1(start, end, searchKey1, searchValue1,cate1);
//---------------------------
//결제관련---------
		/*
		String searchKey2 = "fcategory";
		String searchValue2 = "결제관련";
		*/
		String cate2 = "결제관련";
		int dataCount2 = dao.getDataCount1(searchKey, searchValue,cate2);
		List<FaqDTO> lists2 = dao.getList1(start, end, searchKey, searchValue,cate2);
//---------------------------
//버츄오 라인---------
		/*
		String searchKey3 = "fcategory";
		String searchValue3 = "버츄오 라인";
		*/
		String cate3 = "버츄오 라인";
		int dataCount3 = dao.getDataCount1(searchKey, searchValue,cate3);
		List<FaqDTO> lists3 = dao.getList1(start, end, searchKey, searchValue,cate3);
//---------------------------
//제품 정보---------
		/*
		String searchKey4 = "fcategory";
		String searchValue4 = "제품 정보";
		*/
		String cate4 = "제품 정보";
		int dataCount4 = dao.getDataCount1(searchKey, searchValue,cate4);
		List<FaqDTO> lists4 = dao.getList1(start, end, searchKey, searchValue,cate4);
//---------------------------
//주문 및 주문 확인---------
		/*
		String searchKey5 = "fcategory";
		String searchValue5 = "주문 및 주문 확인";
		*/
		String cate5 = "주문 및 주문 확인";
		int dataCount5 = dao.getDataCount1(searchKey, searchValue,cate5);
		List<FaqDTO> lists5 = dao.getList1(start, end, searchKey, searchValue,cate5);
//---------------------------		
//온라인 지원---------
		/*
		String searchKey6 = "fcategory";
		String searchValue6 = "온라인 지원";
		*/
		String cate6 = "온라인 지원";
		int dataCount6 = dao.getDataCount1(searchKey, searchValue,cate6);
		List<FaqDTO> lists6 = dao.getList1(start, end, searchKey, searchValue,cate6);
//---------------------------
//머신 지원---------
		/*
		String searchKey7 = "fcategory";
		String searchValue7 = "머신 지원";
		*/
		String cate7 = "머신 지원";
		int dataCount7 = dao.getDataCount1(searchKey, searchValue,cate7);
		List<FaqDTO> lists7 = dao.getList1(start, end, searchKey, searchValue,cate7);
//---------------------------
//브랜드 및 프로모션---------
		/*
		String searchKey8 = "fcategory";
		String searchValue8 = "브랜드 및 프로모션";
		*/
		String cate8 = "브랜드 및 프로모션";
		int dataCount8 = dao.getDataCount1(searchKey, searchValue,cate8);
		List<FaqDTO> lists8 = dao.getList1(start, end, searchKey, searchValue,cate8);
//---------------------------
//재활용---------
		/*
		String searchKey9 = "fcategory";
		String searchValue9 = "재활용";
		*/
		String cate9 = "재활용";
		int dataCount9 = dao.getDataCount1(searchKey, searchValue,cate9);
		List<FaqDTO> lists9 = dao.getList1(start, end, searchKey, searchValue,cate9);
//---------------------------
		
		
		
		
		
		
		String param = "";
		//검색을했는지??
		if(!searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}
		
		String listUrl = cp + "/list.action";
		
		if(!param.equals("")) {
			listUrl += "?" + param;
		}
		
		String pageIndexList = 
				myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
		//article주소정리
		String articleUrl = cp + "/article.action?pageNum=" + currentPage;
		
		//검색된상태에서들어갈수있으니까
		if(!param.equals("")) {
			articleUrl += "&" + param;
		}
		
		//포워딩할 페이지에 넘길 데이터!!
		request.setAttribute("lists", lists);
		request.setAttribute("lists1", lists1);
		request.setAttribute("lists2", lists2);
		request.setAttribute("lists3", lists3);
		request.setAttribute("lists4", lists4);
		request.setAttribute("lists5", lists5);
		request.setAttribute("lists6", lists6);
		request.setAttribute("lists7", lists7);
		request.setAttribute("lists8", lists8);
		request.setAttribute("lists9", lists9);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);
		request.setAttribute("dataCount2", dataCount2);
		request.setAttribute("dataCount3", dataCount3);
		request.setAttribute("dataCount4", dataCount4);
		request.setAttribute("dataCount5", dataCount5);
		request.setAttribute("dataCount6", dataCount6);
		request.setAttribute("dataCount7", dataCount7);
		request.setAttribute("dataCount8", dataCount8);
		request.setAttribute("dataCount9", dataCount9);
		request.setAttribute("articleUrl", articleUrl);
		
		return "nespresso/faq";
	}
	
	
		
		
//MMGUIDE@
	
	@RequestMapping(value = "/mmguide01.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide01() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide01");
		return mav;
	}
	@RequestMapping(value = "/mmguide02.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide02() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide02");
		return mav;
	}
	@RequestMapping(value = "/mmguide03.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide03() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide03");
		return mav;
	}
	@RequestMapping(value = "/mmguide04.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide04() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide04");
		return mav;
	}
	@RequestMapping(value = "/mmguide05.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide05() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide05");
		return mav;
	}
	@RequestMapping(value = "/mmguide06.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide06() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide06");
		return mav;
	}
	@RequestMapping(value = "/mmguide07.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide07() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide07");
		return mav;
	}
	@RequestMapping(value = "/mmguide08.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide08() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide08");
		return mav;
	}
	@RequestMapping(value = "/mmguide09.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide09() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide09");
		return mav;
	}
	@RequestMapping(value = "/mmguide10.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide10() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide10");
		return mav;
	}
	@RequestMapping(value = "/mmguide11.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide11() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide11");
		return mav;
	}
	@RequestMapping(value = "/mmguide12.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide12() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide12");
		return mav;
	}
	@RequestMapping(value = "/mmguide13.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide13() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide13");
		return mav;
	}
	@RequestMapping(value = "/mmguide14.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide14() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide14");
		return mav;
	}
	@RequestMapping(value = "/mmguide15.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide15() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide15");
		return mav;
	}
	@RequestMapping(value = "/mmguide16.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide16() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide16");
		return mav;
	}
	@RequestMapping(value = "/mmguide17.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide17() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide17");
		return mav;
	}
	@RequestMapping(value = "/mmguide18.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide18() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide18");
		return mav;
	}
	@RequestMapping(value = "/mmguide19.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide19() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide19");
		return mav;
	}
	@RequestMapping(value = "/mmguide20.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide20() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide20");
		return mav;
	}
	@RequestMapping(value = "/mmguide21.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide21() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide21");
		return mav;
	}
	@RequestMapping(value = "/mmguide22.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView mmguide22() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("nespresso/mmguide/mmguide22");
		return mav;
	}
	
	
	
	
	//ADMIN 관리자
	
	@RequestMapping(value = "/admin_created.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView admin_created() throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/adminpage");
		return mav;
	}
//faq관리
	@RequestMapping(value = "/faqcreated.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView created() throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/created");
		
		return mav;
	}
	
	@RequestMapping(value = "/created_ok.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String created_ok(FaqDTO dto, HttpServletRequest request) throws Exception{
	
		int maxNum = dao.faqgetMaxNum();
		
		dto.setFnum(maxNum + 1);
		
		dao.insertData(dto);
		
		return "redirect:/faqcreated.action";
		
	}
	@RequestMapping(value = "/listfaq.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String listfaq(HttpServletRequest request) throws Exception{
		
		String cp = request.getContextPath();
		
		String pageNum = request.getParameter("pageNum");
		//첫번째페이지
		int currentPage=1;
		//판단
		if(pageNum!=null) {
			currentPage = Integer.parseInt(pageNum);
		}
		//검색
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		
		//null인지 판단
		if(searchValue==null) {
			searchKey = "fsubject";
			searchValue = "";
		}else {
			//겟방식으로??
			if(request.getMethod().equals("GET")) {
				//utf8로디코딩해라
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}
		
		int dataCount = dao.getDataCount(searchKey, searchValue);
		
		//전체페이지수
		int numPerPage = 100; //페이지당5개씩
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		if(currentPage>totalPage)
			currentPage=totalPage;
		
		int start = (currentPage-1)*numPerPage+1;//rownum의시작값
		int end = currentPage*numPerPage;
		
		List<FaqDTO> lists = dao.getList(start, end, searchKey, searchValue);
		

//자주하는 질문 TOP 5---------
		
		String searchKey1 = "fsubject";
		String searchValue1 = " ";
		String cate1 = "자주하는 질문 TOP 5";
		List<FaqDTO> lists1 = dao.getList1(start, end, searchKey1, searchValue1,cate1);
//---------------------------
//결제관련---------
		/*
		String searchKey2 = "fcategory";
		String searchValue2 = "결제관련";
		*/
		String cate2 = "결제관련";
		int dataCount2 = dao.getDataCount1(searchKey, searchValue,cate2);
		List<FaqDTO> lists2 = dao.getList1(start, end, searchKey, searchValue,cate2);
//---------------------------
//버츄오 라인---------
		/*
		String searchKey3 = "fcategory";
		String searchValue3 = "버츄오 라인";
		*/
		String cate3 = "버츄오 라인";
		int dataCount3 = dao.getDataCount1(searchKey, searchValue,cate3);
		List<FaqDTO> lists3 = dao.getList1(start, end, searchKey, searchValue,cate3);
//---------------------------
//제품 정보---------
		/*
		String searchKey4 = "fcategory";
		String searchValue4 = "제품 정보";
		*/
		String cate4 = "제품 정보";
		int dataCount4 = dao.getDataCount1(searchKey, searchValue,cate4);
		List<FaqDTO> lists4 = dao.getList1(start, end, searchKey, searchValue,cate4);
//---------------------------
//주문 및 주문 확인---------
		/*
		String searchKey5 = "fcategory";
		String searchValue5 = "주문 및 주문 확인";
		*/
		String cate5 = "주문 및 주문 확인";
		int dataCount5 = dao.getDataCount1(searchKey, searchValue,cate5);
		List<FaqDTO> lists5 = dao.getList1(start, end, searchKey, searchValue,cate5);
//---------------------------		
//온라인 지원---------
		/*
		String searchKey6 = "fcategory";
		String searchValue6 = "온라인 지원";
		*/
		String cate6 = "온라인 지원";
		int dataCount6 = dao.getDataCount1(searchKey, searchValue,cate6);
		List<FaqDTO> lists6 = dao.getList1(start, end, searchKey, searchValue,cate6);
//---------------------------
//머신 지원---------
		/*
		String searchKey7 = "fcategory";
		String searchValue7 = "머신 지원";
		*/
		String cate7 = "머신 지원";
		int dataCount7 = dao.getDataCount1(searchKey, searchValue,cate7);
		List<FaqDTO> lists7 = dao.getList1(start, end, searchKey, searchValue,cate7);
//---------------------------
//브랜드 및 프로모션---------
		/*
		String searchKey8 = "fcategory";
		String searchValue8 = "브랜드 및 프로모션";
		*/
		String cate8 = "브랜드 및 프로모션";
		int dataCount8 = dao.getDataCount1(searchKey, searchValue,cate8);
		List<FaqDTO> lists8 = dao.getList1(start, end, searchKey, searchValue,cate8);
//---------------------------
//재활용---------
		/*
		String searchKey9 = "fcategory";
		String searchValue9 = "재활용";
		*/
		String cate9 = "재활용";
		int dataCount9 = dao.getDataCount1(searchKey, searchValue,cate9);
		List<FaqDTO> lists9 = dao.getList1(start, end, searchKey, searchValue,cate9);
//---------------------------
		
		String param = "";
		//검색을했는지??
		if(!searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}
		
		String listUrl = cp + "/list.action";
		
		if(!param.equals("")) {
			listUrl += "?" + param;
		}
		
		String pageIndexList = 
				myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
		//article주소정리
		String articleUrl = cp + "/updatedfaq.action?pageNum=" + currentPage;
		
		//검색된상태에서들어갈수있으니까
		if(!param.equals("")) {
			articleUrl += "&" + param;
		}
		
		//포워딩할 페이지에 넘길 데이터!!
		request.setAttribute("lists", lists);
		request.setAttribute("lists1", lists1);
		request.setAttribute("lists2", lists2);
		request.setAttribute("lists3", lists3);
		request.setAttribute("lists4", lists4);
		request.setAttribute("lists5", lists5);
		request.setAttribute("lists6", lists6);
		request.setAttribute("lists7", lists7);
		request.setAttribute("lists8", lists8);
		request.setAttribute("lists9", lists9);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);
		request.setAttribute("dataCount2", dataCount2);
		request.setAttribute("dataCount3", dataCount3);
		request.setAttribute("dataCount4", dataCount4);
		request.setAttribute("dataCount5", dataCount5);
		request.setAttribute("dataCount6", dataCount6);
		request.setAttribute("dataCount7", dataCount7);
		request.setAttribute("dataCount8", dataCount8);
		request.setAttribute("dataCount9", dataCount9);
		request.setAttribute("articleUrl", articleUrl);
		
		return "admin/listfaq";
	}
	
	@RequestMapping(value = "/updatedfaq.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String updated(HttpServletRequest request) throws Exception{
		
		String cp = request.getContextPath();
		
		int fnum = Integer.parseInt(request.getParameter("fnum"));
		String pageNum = request.getParameter("pageNum");
		
		//검색 --------------------------들어오고
		
		String searchKey=request.getParameter("searchKey");
		String searchValue=request.getParameter("searchValue");
		
		if(searchValue!=null){
			if(request.getMethod().equalsIgnoreCase("get")){
				searchValue=URLDecoder.decode(searchValue, "UTF-8");
			}
		}else{
			searchKey="fsubject";
			searchValue="";
		}
		
		//검색-----------------------------------------------	
		
		FaqDTO dto = dao.getReadData(fnum);//하나의데이터읽어옴
		
		if(dto==null) {
			return "redirect:/listfaq.action";
		}
		
		
		
		//검색-----------------------------------나가고?
		String param = "pageNum=" + pageNum;
		//검색을했다면?
		if(!searchValue.equals("")){
			param+="&searchKey=" + searchKey;
			param+="&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}
		
		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("params", param);
		request.setAttribute("searchKey", searchKey);
		request.setAttribute("searchValue", searchValue);
		
		return "admin/updatedfaq";
		
	}
	@RequestMapping(value = "/updatedfaq_ok.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String updatedfaq_ok(FaqDTO dto,HttpServletRequest request) throws Exception{
		//dto를 받은상태???
		String pageNum = request.getParameter("pageNum");
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
		dao.updateData(dto);
		
		String param = "pageNum=" + pageNum;
		//검색을했는지??
		/*
		if(!searchValue.equals("")) {
			param+= "&searchKey=" + searchKey;
			param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}*/
		
		return "redirect:/listfaq.action";//?" + param;
	}
	
//공지사항관리자---------
	@RequestMapping(value = "/listnotice.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String listnotice(HttpServletRequest request) throws Exception{
		
		String cp = request.getContextPath();
		
		String pageNum = request.getParameter("pageNum");
		//첫번째페이지
		int currentPage=1;
		//판단
		if(pageNum!=null) {
			currentPage = Integer.parseInt(pageNum);
		}
		//검색
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");

		
		//null인지 판단
		if(searchValue==null) {
			searchKey = "nsubject";
			searchValue = "";
		}else {
			//겟방식으로??
			if(request.getMethod().equals("GET")) {
				//utf8로디코딩해라
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
		}
		
		int dataCount = dao.ngetDataCount(searchKey, searchValue);
		
		//전체페이지수
		int numPerPage = 100; //페이지당5개씩
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		if(currentPage>totalPage)
			currentPage=totalPage;
		
		int start = (currentPage-1)*numPerPage+1;//rownum의시작값
		int end = currentPage*numPerPage;
		
		List<NoticeDTO> lists = dao.ngetList(start, end, searchKey, searchValue);

		String param = "";
		//검색을했는지??
		if(!searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}
		
		String listUrl = cp + "/notice.action";
		
		if(!param.equals("")) {
			listUrl += "?" + param;
		}
		
		String pageIndexList = 
				myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
		//article주소정리
		String articleUrl = cp + "/updatednotice.action?pageNum=" + currentPage;
		
		//검색된상태에서들어갈수있으니까
		if(!param.equals("")) {
			articleUrl += "&" + param;
		}
		
		//포워딩할 페이지에 넘길 데이터!!
		request.setAttribute("lists", lists);
		request.setAttribute("pageIndexList", pageIndexList);
		request.setAttribute("dataCount", dataCount);
		request.setAttribute("articleUrl", articleUrl);
		
		return "admin/listnotice";
	}
	@RequestMapping(value = "/updatednotice.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String updatednotice(HttpServletRequest request) throws Exception{
		
		String cp = request.getContextPath();
		
		int nnum = Integer.parseInt(request.getParameter("nnum"));
		String pageNum = request.getParameter("pageNum");
		
		//검색 --------------------------들어오고
		
		String searchKey=request.getParameter("searchKey");
		String searchValue=request.getParameter("searchValue");
		
		if(searchValue!=null){
			if(request.getMethod().equalsIgnoreCase("get")){
				searchValue=URLDecoder.decode(searchValue, "UTF-8");
			}
		}else{
			searchKey="nsubject";
			searchValue="";
		}
		
		//검색-----------------------------------------------	
		
		NoticeDTO dto = dao.ngetReadData(nnum);//하나의데이터읽어옴
		
		if(dto==null) {
			return "redirect:/listnotice.action";
		}
		
		
		
		//검색-----------------------------------나가고?
		String param = "pageNum=" + pageNum;
		//검색을했다면?
		if(!searchValue.equals("")){
			param+="&searchKey=" + searchKey;
			param+="&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}
		
		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("params", param);
		request.setAttribute("searchKey", searchKey);
		request.setAttribute("searchValue", searchValue);
		
		return "admin/updatednotice";
		
	}
	@RequestMapping(value = "/updatednotice_ok.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String updatednotice_ok(NoticeDTO dto,HttpServletRequest request) throws Exception{
		//dto를 받은상태???
		String pageNum = request.getParameter("pageNum");
		String searchKey = request.getParameter("searchKey");
		String searchValue = request.getParameter("searchValue");
		
		dao.nupdateData(dto);
		
		String param = "pageNum=" + pageNum;
		//검색을했는지??
		/*
		if(!searchValue.equals("")) {
			param+= "&searchKey=" + searchKey;
			param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}*/
		
		return "redirect:/listnotice.action";//?" + param;
	}
	
	

	
//연지NesPdController
	
	
	
	//오리지널캡슐커피 상품등록------------------------------
		@RequestMapping(value="/product/admogcpCreated")
		public ModelAndView admogcpCreated() throws Exception {
			
			ModelAndView mav = new ModelAndView();
			mav.setViewName("product/admogcpCreated");
			
			return mav;
			
		}
		
		 @RequestMapping(value ="/product/admogcpCreated_ok", method = {RequestMethod.GET, RequestMethod.POST})
		 public String admogcpCreated_ok(NesCoDTO dto, HttpServletRequest request) throws Exception {
				
			int maxNum1 = dao.getMaxNum1();
				
			dto.setCo_num(maxNum1 + 1);
				
			dao.insertData1(dto);
				
			return "redirect:/product/admogcpCreated"; //admogcpList.action
				
		}
		 
		//버츄오캡슐커피 상품등록------------------------------
		@RequestMapping(value="/product/admvtcpCreated")
		public ModelAndView admvtcpCreated() throws Exception {
				
			ModelAndView mav = new ModelAndView();
			mav.setViewName("product/admvtcpCreated");
				
			return mav;
				
		}
			
		@RequestMapping(value ="/product/admvtcpCreated_ok", method = {RequestMethod.GET, RequestMethod.POST})
		public String admvtcpCreated_ok(NesCvDTO dto, HttpServletRequest request) throws Exception {
					
			int maxNum2 = dao.getMaxNum2();
			
			dto.setCv_num(maxNum2 + 1);

			dao.insertData2(dto);
					
			return "redirect:/product/admvtcpCreated"; //admogcpList.action
					
		}
		
		
		//오리지널 커피 리스트------------------------------
		@RequestMapping(value="/product/originalcapsule", method = {RequestMethod.GET, RequestMethod.POST})
		public String list1(NesCoDTO dto, HttpServletRequest request) throws Exception {		

			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}		

			List<NesCoDTO> lists1 = dao.getLists1(); 
			List<NesCoDTO> lists2 = dao.getLists2();
			List<NesCoDTO> lists3 = dao.getLists3();
			List<NesCoDTO> lists4 = dao.getLists4();
			List<NesCoDTO> lists5 = dao.getLists5(); 
			List<NesCoDTO> lists6 = dao.getLists6();
			
			String articleUrl1 = cp + "/product/ogcpAssortment";
			String articleUrl2_1 = cp + "/product/ogcpBaristaCre1";
			String articleUrl2_2 = cp + "/product/ogcpBaristaCre2";
			String articleUrl3_1 = cp + "/product/ogcpMasterOri1";
			String articleUrl3_2 = cp + "/product/ogcpMasterOri2";
			String articleUrl3_3 = cp + "/product/ogcpMasterOri3";
			String articleUrl4 = cp + "/product/ogcpWorldExplo";
			String articleUrl5 = cp + "/product/ogcpIspirazione";
			String articleUrl6 = cp + "/product/ogcpEspresso";
			
			request.setAttribute("lists1", lists1);
			request.setAttribute("lists2", lists2);
			request.setAttribute("lists3", lists3);
			request.setAttribute("lists4", lists4);
			request.setAttribute("lists5", lists5);
			request.setAttribute("lists6", lists6);
			
			request.setAttribute("articleUrl1", articleUrl1);
			request.setAttribute("articleUrl2_1", articleUrl2_1);
			request.setAttribute("articleUrl2_2", articleUrl2_2);
			request.setAttribute("articleUrl3_1", articleUrl3_1);
			request.setAttribute("articleUrl3_2", articleUrl3_2);
			request.setAttribute("articleUrl3_3", articleUrl3_3);
			request.setAttribute("articleUrl4", articleUrl4);
			request.setAttribute("articleUrl5", articleUrl5);
			request.setAttribute("articleUrl6", articleUrl6);
			
			return "product/originalcapsule";
			
		}
		
		//버츄오 커피 리스트------------------------------
		@RequestMapping(value="/product/vertuocapsule", method = {RequestMethod.GET, RequestMethod.POST})
		public String list2(NesCvDTO dto, HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();

			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}
			
			List<NesCvDTO> lists7 = dao.getLists7();
			List<NesCvDTO> lists8 = dao.getLists8();
			List<NesCvDTO> lists9 = dao.getLists9();
			List<NesCvDTO> lists10 = dao.getLists10();
			List<NesCvDTO> lists11 = dao.getLists11();
			List<NesCvDTO> lists12 = dao.getLists12();
			List<NesCvDTO> lists13 = dao.getLists13();
			List<NesCvDTO> lists14 = dao.getLists14();
			
			String articleUrl1 = cp + "/product/vtcpAssortment";
			String articleUrl2_1 = cp + "/product/vtcpBaristaCre1";
			String articleUrl2_2 = cp + "/product/vtcpBaristaCre2";
			String articleUrl3_1 = cp + "/product/vtcpMasterOri1";
			String articleUrl3_2 = cp + "/product/vtcpMasterOri2";
			String articleUrl3_3 = cp + "/product/vtcpMasterOri3";
			String articleUrl4_1 = cp + "/product/vtcpMug1";
			String articleUrl4_2 = cp + "/product/vtcpMug2";
			String articleUrl5_1 = cp + "/product/vtcpEspresso1";
			String articleUrl5_2 = cp + "/product/vtcpEspresso2";
			String articleUrl6 = cp + "/product/vtcpDEspresso";
			String articleUrl7 = cp + "/product/vtcpAlto";
			String articleUrl8_1 = cp + "/product/vtcpGranLungo1";
			String articleUrl8_2 = cp + "/product/vtcpGranLungo2";
			
			request.setAttribute("lists7", lists7);
			request.setAttribute("lists8", lists8);
			request.setAttribute("lists9", lists9);
			request.setAttribute("lists10", lists10);
			request.setAttribute("lists11", lists11);
			request.setAttribute("lists12", lists12);
			request.setAttribute("lists13", lists13);
			request.setAttribute("lists14", lists14);
			
			request.setAttribute("articleUrl1", articleUrl1);
			request.setAttribute("articleUrl2_1", articleUrl2_1);
			request.setAttribute("articleUrl2_2", articleUrl2_2);
			request.setAttribute("articleUrl3_1", articleUrl3_1);
			request.setAttribute("articleUrl3_2", articleUrl3_2);
			request.setAttribute("articleUrl3_3", articleUrl3_3);
			request.setAttribute("articleUrl4_1", articleUrl4_1);
			request.setAttribute("articleUrl4_2", articleUrl4_2);
			request.setAttribute("articleUrl5_1", articleUrl5_1);
			request.setAttribute("articleUrl5_2", articleUrl5_2);
			request.setAttribute("articleUrl6", articleUrl6);
			request.setAttribute("articleUrl7", articleUrl7);
			request.setAttribute("articleUrl8_1", articleUrl8_1);
			request.setAttribute("articleUrl8_2", articleUrl8_2);
			
			return "product/vertuocapsule";
			
		}
		
		//오리지널커피 슬리브팩 아티클------------------------------
		@RequestMapping(value = "/product/ogcpAssortment", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpAssortment(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			dto.setCo_modelName2(dto.getCo_modelName2().replaceAll("\n", "<br/>"));
			dto.setCo_longContent(dto.getCo_longContent().replaceAll("\n", "<br/>"));
			dto.setCo_coffee(dto.getCo_coffee().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpAssortment";
		}
		
		//오리지널커피 바리스타 크리에이션1 아티클------------------------------
		@RequestMapping(value = "/product/ogcpBaristaCre1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpBaristaCre1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			dto.setCo_modelName2(dto.getCo_modelName2().replaceAll("\n", "<br/>"));
			dto.setCo_bigName2(dto.getCo_bigName2().replaceAll("\n", "<br/>"));
			dto.setCo_atContent1(dto.getCo_atContent1().replaceAll("\n", "<br/>"));
			dto.setCo_atContent2(dto.getCo_atContent2().replaceAll("\n", "<br/>"));
			dto.setCo_atContent3(dto.getCo_atContent3().replaceAll("\n", "<br/>"));
			dto.setCo_coffee(dto.getCo_coffee().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpBaristaCre1";
		}

		//오리지널커피 바리스타 크리에이션2 아티클------------------------------
		@RequestMapping(value = "/product/ogcpBaristaCre2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpBaristaCre2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			dto.setCo_modelName2(dto.getCo_modelName2().replaceAll("\n", "<br/>"));
			dto.setCo_bigName2(dto.getCo_bigName2().replaceAll("\n", "<br/>"));
			dto.setCo_atContent1(dto.getCo_atContent1().replaceAll("\n", "<br/>"));
			dto.setCo_atContent2(dto.getCo_atContent2().replaceAll("\n", "<br/>"));
			dto.setCo_atContent3(dto.getCo_atContent3().replaceAll("\n", "<br/>"));
			dto.setCo_coffee(dto.getCo_coffee().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpBaristaCre2";
		}	
		
		//오리지널커피 마스터 오리진1 아티클------------------------------
		@RequestMapping(value = "/product/ogcpMasterOri1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpMasterOri1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			dto.setCo_modelName2(dto.getCo_modelName2().replaceAll("\n", "<br/>"));
			dto.setCo_longContent(dto.getCo_longContent().replaceAll("\n", "<br/>"));
			dto.setCo_coffee(dto.getCo_coffee().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpMasterOri1";
		}	

		//오리지널커피 마스터 오리진2 아티클------------------------------
		@RequestMapping(value = "/product/ogcpMasterOri2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpMasterOri2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpMasterOri2";
		}

		//오리지널커피 마스터 오리진3 아티클------------------------------
		@RequestMapping(value = "/product/ogcpMasterOri3", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpMasterOri3(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpMasterOri3";
		}
		
		//오리지널커피 월드 익스플로레이션 아티클------------------------------
		@RequestMapping(value = "/product/ogcpWorldExplo", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpWorldExplo(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			//dto.setCo_bigName2(dto.getCo_bigName2().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpWorldExplo";
		}
		
		//오리지널커피 이스피라치오네 아티클------------------------------
		@RequestMapping(value = "/product/ogcpIspirazione", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpIspirazione(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			dto.setCo_bigName2(dto.getCo_bigName2().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpIspirazione";
		}
		
		//오리지널커피 에스프레소 아티클------------------------------
		@RequestMapping(value = "/product/ogcpEspresso", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogcpEspresso(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			
			if(vo != null) {
				String email = vo.getEmail();
				//오리지널 커피
				List<BasketDTO> listsCo = dao.getBasketList(email,"coffee","original");
				request.setAttribute("listsCo", listsCo);
			}	

			int co_num = Integer.parseInt(request.getParameter("co_num"));

			NesCoDTO dto = dao.getReadData1(co_num);
			
			request.setAttribute("dto", dto);
			
			return "product/ogcpEspresso";
		}

		//버츄오커피 슬리브팩 아티클------------------------------
		@RequestMapping(value = "/product/vtcpAssortment", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpAssortment(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			dto.setCv_shortContent(dto.getCv_shortContent().replaceAll("\n", "<br/>"));
			dto.setCv_longContent(dto.getCv_longContent().replaceAll("\n", "<br/>"));

			request.setAttribute("dto", dto);
			
			return "product/vtcpAssortment";
		}
		
		//버츄오커피 바리스타 크리에이션1 아티클------------------------------
		@RequestMapping(value = "/product/vtcpBaristaCre1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpBaristaCre1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			dto.setCv_bigName2(dto.getCv_bigName2().replaceAll("\n", "<br/>"));
			dto.setCv_atContent2(dto.getCv_atContent2().replaceAll("\n", "<br/>"));
			dto.setCv_atContent3(dto.getCv_atContent3().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpBaristaCre1";
		}
		
		//버츄오커피 바리스타 크리에이션2 아티클------------------------------
		@RequestMapping(value = "/product/vtcpBaristaCre2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpBaristaCre2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			dto.setCv_bigName2(dto.getCv_bigName2().replaceAll("\n", "<br/>"));
			dto.setCv_atContent2(dto.getCv_atContent2().replaceAll("\n", "<br/>"));
			dto.setCv_atContent3(dto.getCv_atContent3().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpBaristaCre2";
		}
		
		//버츄오커피 마스터 오리진1 아티클------------------------------
		@RequestMapping(value = "/product/vtcpMasterOri1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpMasterOri1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			dto.setCv_longContent(dto.getCv_longContent().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpMasterOri1";
		}
		
		//버츄오커피 마스터 오리진2 아티클------------------------------
		@RequestMapping(value = "/product/vtcpMasterOri2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpMasterOri2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpMasterOri2";
		}

		//버츄오커피 마스터 오리진3 아티클------------------------------
		@RequestMapping(value = "/product/vtcpMasterOri3", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpMasterOri3(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpMasterOri3";
		}

		//버츄오커피 머그1 아티클------------------------------
		@RequestMapping(value = "/product/vtcpMug1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpMug1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpMug1";
		}
		
		//버츄오커피 머그2 아티클------------------------------
		@RequestMapping(value = "/product/vtcpMug2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpMug2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpMug2";
		}
		
		//버츄오커피 에스프레소1 아티클------------------------------
		@RequestMapping(value = "/product/vtcpEspresso1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpEspresso1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpEspresso1";
		}
		
		//버츄오커피 에스프레소2 아티클------------------------------
		@RequestMapping(value = "/product/vtcpEspresso2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpEspresso2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpEspresso2";
		}
		
		//버츄오커피 더블 에스프레소 아티클------------------------------
		@RequestMapping(value = "/product/vtcpDEspresso", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpDEspresso(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpDEspresso";
		}
		
		//버츄오커피 알토 아티클------------------------------
		@RequestMapping(value = "/product/vtcpAlto", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpAlto(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpAlto";
		}
		
		//버츄오커피 그랑 룽고1 아티클------------------------------
		@RequestMapping(value = "/product/vtcpGranLungo1", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpGranLungo1(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpGranLungo1";
		}
		
		//버츄오커피 그랑 룽고2 아티클------------------------------
		@RequestMapping(value = "/product/vtcpGranLungo2", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtcpGranLungo2(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//버츄오 커피
				List<BasketDTO> listsCv = dao.getBasketList(email,"coffee","vertuo");
				request.setAttribute("listsCv", listsCv);
			}

			int cv_num = Integer.parseInt(request.getParameter("cv_num"));

			NesCvDTO dto = dao.getReadData2(cv_num);
			
			request.setAttribute("dto", dto);
			
			return "product/vtcpGranLungo2";
		}
		
		//오리지널머신 상품등록------------------------------
		@RequestMapping(value="/product/admogmsCreated")
		public ModelAndView admogmsCreated() throws Exception {
				
			ModelAndView mav = new ModelAndView();
			mav.setViewName("product/admogmsCreated");
				
			return mav;
				
		}
			
		@RequestMapping(value ="/product/admogmsCreated_ok", method = {RequestMethod.GET, RequestMethod.POST})
		public String admogmsCreated_ok(NesMoDTO dto, HttpServletRequest request) throws Exception {
					
			int maxNum3 = dao.getMaxNum3();
					
			dto.setMo_num(maxNum3 + 1);
					
			dao.insertData3(dto);
					
			return "redirect:/product/admogmsCreated";
					
		}
		
		//버츄오머신 상품등록------------------------------
		@RequestMapping(value="/product/admvtmsCreated")
		public ModelAndView admvtmsCreated() throws Exception {
					
			ModelAndView mav = new ModelAndView();
			mav.setViewName("product/admvtmsCreated");
					
			return mav;
					
		}
				
		@RequestMapping(value ="/product/admvtmsCreated_ok", method = {RequestMethod.GET, RequestMethod.POST})
		public String admvtmsCreated_ok(NesMvDTO dto, HttpServletRequest request) throws Exception {
					
			int maxNum4 = dao.getMaxNum4();
					
			dto.setMv_num(maxNum4 + 1);
						
			dao.insertData4(dto);
						
			return "redirect:/product/admvtmsCreated";
						
		}	

		//오리지널머신 리스트------------------------------
		@RequestMapping(value="/product/originalmachines", method = {RequestMethod.GET, RequestMethod.POST})
		public String list3(NesMoDTO dto, HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
				
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			List<NesMoDTO> lists15 = dao.getLists15();
			
			String articleUrl1 = cp + "/product/ogmsEssenza"; //"?mo_num=" + mo_num;
			String articleUrl2 = cp + "/product/ogmsPixie";
			String articleUrl3 = cp + "/product/ogmsEssenzaAero";
			String articleUrl4 = cp + "/product/ogmsCitiz";
			String articleUrl5 = cp + "/product/ogmsPixieAero";
			String articleUrl6 = cp + "/product/ogmsCitizMilk";
			String articleUrl7 = cp + "/product/ogmsLattissima";
			String articleUrl8 = cp + "/product/ogmsGranLatti";
			String articleUrl9 = cp + "/product/ogmsCreatista";
			
			request.setAttribute("lists15", lists15);
			request.setAttribute("articleUrl1", articleUrl1);
			request.setAttribute("articleUrl2", articleUrl2);
			request.setAttribute("articleUrl3", articleUrl3);
			request.setAttribute("articleUrl4", articleUrl4);
			request.setAttribute("articleUrl5", articleUrl5);
			request.setAttribute("articleUrl6", articleUrl6);
			request.setAttribute("articleUrl7", articleUrl7);
			request.setAttribute("articleUrl8", articleUrl8);
			request.setAttribute("articleUrl9", articleUrl9);
			
			return "product/originalmachines";
			
		}
		
		//버츄오머신 리스트------------------------------
		@RequestMapping(value="/product/vertuomachines", method = {RequestMethod.GET, RequestMethod.POST})
		public String list4(NesMvDTO dto, HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 버츄오머신 리스트
				List<BasketDTO> listsMv = dao.getBasketList(email,"machine","vertuo");
				request.setAttribute("listsMv", listsMv);
			}

			List<NesMvDTO> lists16 = dao.getLists16();
			
			String articleUrl1 = cp + "/product/vtmsVertuoPlus";
			String articleUrl2 = cp + "/product/vtmsPlusAero";
			String articleUrl3 = cp + "/product/vtmsBarista";
				
			request.setAttribute("lists16", lists16);
			request.setAttribute("articleUrl1", articleUrl1);
			request.setAttribute("articleUrl2", articleUrl2);
			request.setAttribute("articleUrl3", articleUrl3);
			
			return "product/vertuomachines";
				
		}	
		
		//오리지널머신 에센자 아티클------------------------------
		@RequestMapping(value = "/product/ogmsEssenza", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsEssenza(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogmsEssenza";
			
		}	

		//오리지널머신 픽시 아티클------------------------------
		@RequestMapping(value = "/product/ogmsPixie", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsPixie(HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
			
			return "product/ogmsPixie";
			
		}
		
		//오리지널머신 에센자 미니 & 에어로치노 아티클------------------------------
		@RequestMapping(value = "/product/ogmsEssenzaAero", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsEssenzaAero(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogmsEssenzaAero";
				
		}

		//오리지널머신 시티즈 아티클------------------------------
		@RequestMapping(value = "/product/ogmsCitiz", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsCitiz(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}
			
			int mo_num = Integer.parseInt(request.getParameter("mo_num"));
			
			NesMoDTO dto = dao.getReadData3(mo_num);
			
			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogmsCitiz";
				
		}
		
		//오리지널머신 픽시 & 에어로치노 아티클------------------------------
		@RequestMapping(value = "/product/ogmsPixieAero", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsPixieAero(HttpServletRequest request) throws Exception {
					
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
					
			request.setAttribute("dto", dto);
					
			return "product/ogmsPixieAero";
					
		}	
		
		//오리지널머신 시티즈 & 밀크 아티클------------------------------
		@RequestMapping(value = "/product/ogmsCitizMilk", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsCitizMilk(HttpServletRequest request) throws Exception {
					
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
					
			request.setAttribute("dto", dto);
					
			return "product/ogmsCitizMilk";
					
		}	
		
		//오리지널머신 라티시마 원 아티클------------------------------
		@RequestMapping(value = "/product/ogmsLattissima", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsLattissima(HttpServletRequest request) throws Exception {
					
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
					
			request.setAttribute("dto", dto);
					
			return "product/ogmsLattissima";
					
		}	
		
		//오리지널머신 그랑 라티시마 아티클------------------------------
		@RequestMapping(value = "/product/ogmsGranLatti", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsGranLatti(HttpServletRequest request) throws Exception {
						
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
						
			request.setAttribute("dto", dto);
						
			return "product/ogmsGranLatti";
						
		}
		
		//오리지널머신 크리아티스타 플러스 아티클------------------------------
		@RequestMapping(value = "/product/ogmsCreatista", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_ogmsCreatista(HttpServletRequest request) throws Exception {
						
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 오리지널머신 리스트
				List<BasketDTO> listsMo = dao.getBasketList(email,"machine","original");
				request.setAttribute("listsMo", listsMo);
			}

			int mo_num = Integer.parseInt(request.getParameter("mo_num"));

			NesMoDTO dto = dao.getReadData3(mo_num);

			dto.setMo_atContent2(dto.getMo_atContent2().replaceAll("\n", "<br/>"));
						
			request.setAttribute("dto", dto);
						
			return "product/ogmsCreatista";
						
		}

		//버츄오머신 버츄오 플러스 아티클------------------------------
		@RequestMapping(value = "/product/vtmsVertuoPlus", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtmsVertuoPlus(HttpServletRequest request) throws Exception {
						
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 버츄오머신 리스트
				List<BasketDTO> listsMv = dao.getBasketList(email,"machine","vertuo");
				request.setAttribute("listsMv", listsMv);
			}

			int mv_num = Integer.parseInt(request.getParameter("mv_num"));

			NesMvDTO dto = dao.getReadData4(mv_num);

			dto.setMv_atContent2(dto.getMv_atContent2().replaceAll("\n", "<br/>"));
			dto.setMv_info6(dto.getMv_info6().replaceAll("\n", "<br/>"));
			dto.setMv_info9(dto.getMv_info9().replaceAll("\n", "<br/>"));
						
			request.setAttribute("dto", dto);
						
			return "product/vtmsVertuoPlus";
						
		}

		//버츄오머신 버츄오 플러스 에어로치노 아티클------------------------------
		@RequestMapping(value = "/product/vtmsPlusAero", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtmsPlusAero(HttpServletRequest request) throws Exception {
						
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 버츄오머신 리스트
				List<BasketDTO> listsMv = dao.getBasketList(email,"machine","vertuo");
				request.setAttribute("listsMv", listsMv);
			}

			int mv_num = Integer.parseInt(request.getParameter("mv_num"));

			NesMvDTO dto = dao.getReadData4(mv_num);

			dto.setMv_atContent2(dto.getMv_atContent2().replaceAll("\n", "<br/>"));
			dto.setMv_info6(dto.getMv_info6().replaceAll("\n", "<br/>"));
			dto.setMv_info9(dto.getMv_info9().replaceAll("\n", "<br/>"));
						
			request.setAttribute("dto", dto);
						
			return "product/vtmsPlusAero";
						
		}
		
		//버츄오머신 바리스타 아티클------------------------------
		@RequestMapping(value = "/product/vtmsBarista", method = {RequestMethod.GET,RequestMethod.POST})
		public String article_vtmsBarista(HttpServletRequest request) throws Exception {
						
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 버츄오머신 리스트
				List<BasketDTO> listsMv = dao.getBasketList(email,"machine","vertuo");
				request.setAttribute("listsMv", listsMv);
			}

			int mv_num = Integer.parseInt(request.getParameter("mv_num"));

			NesMvDTO dto = dao.getReadData4(mv_num);

			dto.setMv_atContent2(dto.getMv_atContent2().replaceAll("\n", "<br/>"));
						
			request.setAttribute("dto", dto);
						
			return "product/vtmsBarista";
						
		}
		
		//오리지널 ACC 리스트------------------------------
		@RequestMapping(value="/product/originalacc", method = {RequestMethod.GET, RequestMethod.POST})
		public String list17_1(NesAoDTO dto, HttpServletRequest request) throws Exception {
			
			String cp = request.getContextPath();
					
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}
			
			List<NesAoDTO> lists17 = dao.getLists17();
			List<NesAoDTO> lists18 = dao.getLists18();
			List<NesAoDTO> lists19 = dao.getLists19();
			List<NesAoDTO> lists20 = dao.getLists20();
			List<NesAoDTO> lists21 = dao.getLists21();
			List<NesAoDTO> lists22 = dao.getLists22();
			List<NesAoDTO> lists23 = dao.getLists23();
			List<NesAoDTO> lists24 = dao.getLists24();
			List<NesAoDTO> lists25 = dao.getLists25();
			List<NesAoDTO> lists26 = dao.getLists26();
			List<NesAoDTO> lists27 = dao.getLists27();
			List<NesAoDTO> lists28 = dao.getLists28();
			List<NesAoDTO> lists29 = dao.getLists29();
			List<NesAoDTO> lists30 = dao.getLists30();
			
			String articleUrl17 = cp + "/product/ogaccNesxKia";
			String articleUrl18 = cp + "/product/ogaccGreen";
			String articleUrl19 = cp + "/product/ogaccAiro";
			String articleUrl20 = cp + "/product/ogaccSnack";
			String articleUrl21 = cp + "/product/ogaccLume";
			String articleUrl22 = cp + "/product/ogaccNomard";
			String articleUrl23 = cp + "/product/ogaccView";
			String articleUrl24 = cp + "/product/ogaccBottle";
			String articleUrl25 = cp + "/product/ogaccVertuo";
			String articleUrl26 = cp + "/product/ogaccOrigin";
			String articleUrl27 = cp + "/product/ogaccPure";
			String articleUrl28 = cp + "/product/ogaccTouch";
			String articleUrl29 = cp + "/product/ogaccPixie";
			String articleUrl30 = cp + "/product/ogaccReveal";
			
			request.setAttribute("lists17", lists17);
			request.setAttribute("lists18", lists18);
			request.setAttribute("lists19", lists19);
			request.setAttribute("lists20", lists20);
			request.setAttribute("lists21", lists21);
			request.setAttribute("lists22", lists22);
			request.setAttribute("lists23", lists23);
			request.setAttribute("lists24", lists24);
			request.setAttribute("lists25", lists25);
			request.setAttribute("lists26", lists26);
			request.setAttribute("lists27", lists27);
			request.setAttribute("lists28", lists28);
			request.setAttribute("lists29", lists29);
			request.setAttribute("lists30", lists30);
			
			request.setAttribute("articleUrl17", articleUrl17);
			request.setAttribute("articleUrl18", articleUrl18);
			request.setAttribute("articleUrl19", articleUrl19);
			request.setAttribute("articleUrl20", articleUrl20);
			request.setAttribute("articleUrl21", articleUrl21);
			request.setAttribute("articleUrl22", articleUrl22);
			request.setAttribute("articleUrl23", articleUrl23);
			request.setAttribute("articleUrl24", articleUrl24);
			request.setAttribute("articleUrl25", articleUrl25);
			request.setAttribute("articleUrl26", articleUrl26);
			request.setAttribute("articleUrl27", articleUrl27);
			request.setAttribute("articleUrl28", articleUrl28);
			request.setAttribute("articleUrl29", articleUrl29);
			request.setAttribute("articleUrl30", articleUrl30);
			
			
			return "product/originalacc";
			
		}
		
		//버츄어 ACC 리스트------------------------------
			@RequestMapping(value="/product/vertuoacc", method = {RequestMethod.GET, RequestMethod.POST})
			public String list17_2(NesAoDTO dto, HttpServletRequest request) throws Exception {
				
				String cp = request.getContextPath();		
				
				HttpSession session = request.getSession();
				LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
				if(vo != null) {
					String email = vo.getEmail();
					//장바구니 액새서리 리스트
					List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
					request.setAttribute("listsAc", listsAc);
				}
				
				List<NesAoDTO> lists17 = dao.getLists17();
				List<NesAoDTO> lists18 = dao.getLists18();
				List<NesAoDTO> lists19 = dao.getLists19();
				List<NesAoDTO> lists20 = dao.getLists20();
				List<NesAoDTO> lists21 = dao.getLists21();
				List<NesAoDTO> lists22 = dao.getLists22();
				List<NesAoDTO> lists23 = dao.getLists23();
				List<NesAoDTO> lists24 = dao.getLists24();
				List<NesAoDTO> lists25 = dao.getLists25();
				List<NesAoDTO> lists26 = dao.getLists26();
				List<NesAoDTO> lists27 = dao.getLists27();
				List<NesAoDTO> lists28 = dao.getLists28();
				List<NesAoDTO> lists29 = dao.getLists29();
				List<NesAoDTO> lists30 = dao.getLists30();
				
				String articleUrl17 = cp + "/product/ogaccNesxKia";
				String articleUrl18 = cp + "/product/ogaccGreen";
				String articleUrl19 = cp + "/product/ogaccAiro";
				String articleUrl20 = cp + "/product/ogaccSnack";
				String articleUrl21 = cp + "/product/ogaccLume";
				String articleUrl22 = cp + "/product/ogaccNomard";
				String articleUrl23 = cp + "/product/ogaccView";
				String articleUrl24 = cp + "/product/ogaccBottle";
				String articleUrl25 = cp + "/product/ogaccVertuo";
				String articleUrl26 = cp + "/product/ogaccOrigin";
				String articleUrl27 = cp + "/product/ogaccPure";
				String articleUrl28 = cp + "/product/ogaccTouch";
				String articleUrl29 = cp + "/product/ogaccPixie";
				String articleUrl30 = cp + "/product/ogaccReveal";
				
				request.setAttribute("lists17", lists17);
				request.setAttribute("lists18", lists18);
				request.setAttribute("lists19", lists19);
				request.setAttribute("lists20", lists20);
				request.setAttribute("lists21", lists21);
				request.setAttribute("lists22", lists22);
				request.setAttribute("lists23", lists23);
				request.setAttribute("lists24", lists24);
				request.setAttribute("lists25", lists25);
				request.setAttribute("lists26", lists26);
				request.setAttribute("lists27", lists27);
				request.setAttribute("lists28", lists28);
				request.setAttribute("lists29", lists29);
				request.setAttribute("lists30", lists30);
				
				request.setAttribute("articleUrl17", articleUrl17);
				request.setAttribute("articleUrl18", articleUrl18);
				request.setAttribute("articleUrl19", articleUrl19);
				request.setAttribute("articleUrl20", articleUrl20);
				request.setAttribute("articleUrl21", articleUrl21);
				request.setAttribute("articleUrl22", articleUrl22);
				request.setAttribute("articleUrl23", articleUrl23);
				request.setAttribute("articleUrl24", articleUrl24);
				request.setAttribute("articleUrl25", articleUrl25);
				request.setAttribute("articleUrl26", articleUrl26);
				request.setAttribute("articleUrl27", articleUrl27);
				request.setAttribute("articleUrl28", articleUrl28);
				request.setAttribute("articleUrl29", articleUrl29);
				request.setAttribute("articleUrl30", articleUrl30);
				
				
				return "product/vertuoacc";
				
			}
		
		//오리지널ACC 네스프레소 x 키아라 페라니 한정판 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccNesxKia", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccNesxKia(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
			dto.setAo_atContent2(dto.getAo_atContent2().replaceAll("\n", "<br/>"));
			dto.setAo_atContent3(dto.getAo_atContent3().replaceAll("\n", "<br/>"));
			dto.setAo_atContent4(dto.getAo_atContent4().replaceAll("\n", "<br/>"));
			dto.setAo_atContent6(dto.getAo_atContent6().replaceAll("\n", "<br/>"));
			dto.setAo_atContent7(dto.getAo_atContent7().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
				
			return "product/ogaccNesxKia";
		}
		
		//오리지널ACC 같이 만드는 그린 모먼트 아티클
		@RequestMapping(value = "/product/ogaccGreen", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccGreen(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccGreen";
		}
		
		//오리지널ACC 에어로치노 아티클
		@RequestMapping(value = "/product/ogaccAiro", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccAiro(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccAiro";
		}
		
		//오리지널ACC 스낵 및 소품 아티클
		@RequestMapping(value = "/product/ogaccSnack", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccSnack(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
					
			request.setAttribute("dto", dto);
				
			return "product/ogaccSnack";
		}
		
		//오리지널ACC 루메 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccLume", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccLume(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
			
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
			
			request.setAttribute("dto", dto);
				
			return "product/ogaccLume";
		}
		
		//오리지널ACC 노마드 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccNomard", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccNomard(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccNomard";
		}
			
		//오리지널ACC 뷰 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccView", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccView(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccView";
		}
		
		//오리지널ACC 보틀 아티클
		@RequestMapping(value = "/product/ogaccBottle", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccBottle(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccBottle";
			
		}
		
		//오리지널ACC 버츄오 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccVertuo", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccVertuo(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccVertuo";
		}
		
		//오리지널ACC 오리진 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccOrigin", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccOrigin(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
			dto.setAo_atContent2(dto.getAo_atContent2().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccOrigin";
			
		}
		
		//오리지널ACC 퓨어 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccPure", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccPure(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccPure";
			
		}
		
		//오리지널ACC 터치 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccTouch", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccTouch(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccTouch";
			
		}
		
		//오리지널ACC 픽시 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccPixie", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccPixie(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
			
			dto.setAo_atContent2(dto.getAo_atContent2().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccPixie";
			
		}
		
		//오리지널ACC 리빌 컬렉션 아티클
		@RequestMapping(value = "/product/ogaccReveal", method = {RequestMethod.GET,RequestMethod.POST})
		public String ogaccReveal(HttpServletRequest request) throws Exception {
				
			String cp = request.getContextPath();
			
			HttpSession session = request.getSession();
			LoginDTO vo = (LoginDTO) session.getAttribute("userSession");
			if(vo != null) {
				String email = vo.getEmail();
				//장바구니 액새서리 리스트
				List<BasketDTO> listsAc = dao.getBasketList(email,"acc","acc");
				request.setAttribute("listsAc", listsAc);
			}

			int ao_num = Integer.parseInt(request.getParameter("ao_num"));

			NesAoDTO dto = dao.getReadData5(ao_num);
				
			dto.setAo_atContent1(dto.getAo_atContent1().replaceAll("\n", "<br/>"));
				
			request.setAttribute("dto", dto);
				
			return "product/ogaccReveal";
					
		}
//연지끝	
	
	
	
//경환 MapController
	@RequestMapping(value = "/map/storeLocator-intro", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustintro() {
		return "map/intro";
	}
	
	@RequestMapping(value = "/map/map", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustmap() {
		return "map/map";
	}
	
	@RequestMapping(value = "/news/news", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustnews() {
		return "news/news";
	}
	
	
	
//Sustain
	
	@RequestMapping(value = "/sustainability/green-moments", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustgreen() {
		return "sustainability/sustain_gm";
	}
	
	@RequestMapping(value = "/sustainability/main", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustmain() {
		return "sustainability/sustain_main";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustquality() {
		return "sustainability/sustain_quality";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustob() {
		return "sustainability/sustain_ob";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustexperience() {
		return "sustainability/sustain_experience";
	}
	
	
	//지속 가능한 품질 ---------------------------------------------------------------------------------
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/hope", method = {RequestMethod.POST,RequestMethod.GET})
	public String susthope() {
		return "sustainability/sustain_quality_hope";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/day", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustday() {
		return "sustainability/sustain_quality_day";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/secret", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustsecret() {
		return "sustainability/sustain_quality_secret";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/women-agronomists", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustwomenagronomists() {
		return "sustainability/sustain_quality_women-agronomists";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/heroes", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustheroes() {
		return "sustainability/sustain_quality_heroes";
	}
		
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/aluminium", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustaluminium() {
		return "sustainability/sustain_quality_aluminium";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/7ways", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustseven_ways() {
		return "sustainability/sustain_quality_7ways";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/farmers-future", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustfuture() {
		return "sustainability/sustain_quality_farmers-future";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/meet-farmers", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustmeet_farmers() {
		return "sustainability/sustain_quality_meet-farmers";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/gender-equality", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustgender_equality() {
		return "sustainability/sustain_quality_gender-equality";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/colombia", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustcolombia() {
		return "sustainability/sustain_quality_colombia";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/trees-affect", method = {RequestMethod.POST,RequestMethod.GET})
	public String susttrees_affect() {
		return "sustainability/sustain_quality_trees-affect";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/milling", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustmilling() {
		return "sustainability/sustain_quality_milling";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/certify-program", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustcertify_program() {
		return "sustainability/sustain_quality_certify-program";
	}
	
	@RequestMapping(value = "/sustainability/sustainable-coffee-quality/partnership", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustpartnership() {
		return "sustainability/sustain_quality_partnership";
	}
	
	//원산지와 블랜드 ---------------------------------------------------------------------------------
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/late-harvest", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustharvest() {
		return "sustainability/sustain_ob_late-harvest";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/naturally-processed", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustprocessed() {
		return "sustainability/sustain_ob_naturally-processed";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/indonesia", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustindonesia() {
		return "sustainability/sustain_ob_indonesia";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/black-honey", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustblackhoney() {
		return "sustainability/sustain_ob_black-honey";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/monsooned-malabar", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustmonsooned_malabar() {
		return "sustainability/sustain_ob_monsooned-malabar";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/double-washed", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustdoublewashed() {
		return "sustainability/sustain_ob_double-washed";
	}	
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/high-altitude", method = {RequestMethod.POST,RequestMethod.GET})
	public String susthighaltitude() {
		return "sustainability/sustain_ob_high-altitude";
	}
	
	@RequestMapping(value = "/sustainability/coffee-origins-and-blends/volluto", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustvolluto() {
		return "sustainability/sustain_ob_volluto";
	}
	
	//커피 경험 ---------------------------------------------------------------------------------
	@RequestMapping(value = "/sustainability/the-coffee-experience/lean-in-and-listen", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustleanInAndListen() {
		return "sustainability/sustain_experience_lean-in-and-listen";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience/volluto-secret", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustvollutosecret() {
		return "sustainability/sustain_experience_volluto-secret";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience/tasting", method = {RequestMethod.POST,RequestMethod.GET})
	public String susttasting() {
		return "sustainability/sustain_experience_tasting";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience/italy", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustitaly() {
		return "sustainability/sustain_experience_italy";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience/6facts", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustsixfacts() {
		return "sustainability/sustain_experience_6facts";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience/terroir", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustterroir() {
		return "sustainability/sustain_experience_terroir";
	}
	
	@RequestMapping(value = "/sustainability/the-coffee-experience/grinding", method = {RequestMethod.POST,RequestMethod.GET})
	public String sustgrinding() {
		return "sustainability/sustain_experience_grinding";
	}
	
//경환끝	
	
	
//경환보드
	@RequestMapping(value="/board/boardMain", method= {RequestMethod.POST,RequestMethod.GET})
	public String boardMain() {
		return "board/boardMain";
	}
	
	@RequestMapping(value="/board/membership", method= {RequestMethod.POST,RequestMethod.GET})
	public String membership() {
		return "board/membership";
	}
	
	@RequestMapping(value="/board/membership_ok", method= {RequestMethod.POST,RequestMethod.GET})
	public String membership_ok(HttpServletRequest req, ProfileDTO dto) {
		dto.setPageUserEmail(req.getParameter("pageUserEmail"));
		dto.setPageUserName(req.getParameter("pageUserName"));
		
		int index=dto.getPageUserEmail().indexOf("@");
		
		String nickname=dto.getPageUserEmail().substring(0, index);
		
		dto.setNickname(nickname);
		
		dao.bpinsertData(dto);
		
		return "redirect:/board/login";
	}
	
	@RequestMapping(value="/board/login", method= {RequestMethod.POST,RequestMethod.GET})
	public String login() {
		return "board/login";
	}
	
	@RequestMapping(value="/board/login_ok", method= {RequestMethod.POST,RequestMethod.GET})
	public String login_ok(HttpServletRequest req,ProfileDTO dto,HttpSession session) {
		String pageUserEmail=req.getParameter("pageUserEmail");
		
		session.setAttribute("pageUserEmail", pageUserEmail);
		req.setAttribute("pageUserEmail", pageUserEmail);
		
		return "redirect:/board/profile?pageUserEmail="+pageUserEmail;
	}
	
	@RequestMapping(value="/board/profile", method= {RequestMethod.POST,RequestMethod.GET})
	public String profile(HttpServletRequest req,ProfileDTO dto,HttpSession session) {
		String path="C:/Users/지요한/Documents/workspace-sts-3.9.14.RELEASE/Nespresso_FFFFFFFFF/src/main/webapp/resources/static/user_profile";
		
		String pageUserEmail=req.getParameter("pageUserEmail");
		
		dto=dao.bpgetReadData(pageUserEmail);
		List<ImageFileDTO> lists=dao.getList(pageUserEmail);
		
		boolean subscribeState;
		
		/* if() */
		
		req.setAttribute("dto", dto);
		req.setAttribute("lists", lists);
		
		return "board/profile";
	}
	
	@RequestMapping(value="/board/profile_upload",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_profile_upload(HttpServletRequest req) {
		String pageUserEmail=req.getParameter("pageUserEmail");
		String profileImage=req.getParameter("profileImage");
		
		req.setAttribute("pageUserEmail", pageUserEmail);
		req.setAttribute("profileImage", profileImage);
		
		return "board/profile_upload";
	}
	
	@RequestMapping(value="/board/profile_upload_ok",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_profile_upload_ok(MultipartHttpServletRequest req, ProfileDTO dto) {
		String path="C:/Users/지요한/Documents/workspace-sts-3.9.14.RELEASE/Nespresso_FFFFFFFFF/src/main/webapp/resources/static/user_profile";
		
		String pageUserEmail=req.getParameter("pageUserEmail");
		String preprofileImage=req.getParameter("profileImage");
		
		File file = new File(path);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		MultipartFile file_main=req.getFile("file");
		
		String profileImage = null;
		
		//기존 이미지 삭제
		try {
			String filePath = path + File.separator + preprofileImage;
			
			File f = new File(filePath);
			
			if(f.exists()) {
				f.delete();//물리적 파일 삭제
			}			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		//파일 DB 저장
		String originalFileName=file_main.getOriginalFilename();
		int index=originalFileName.indexOf(".");
		String type=file_main.getOriginalFilename().substring(index);
		profileImage=String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS",Calendar.getInstance())+"_profileImage"+type;
		dto.setPageUserEmail(pageUserEmail);
		dto.setProfileImage(profileImage);
		
		//파일 물리적 저장
		if(file_main!=null && file_main.getSize()>0) {
			try {
				FileOutputStream fos=new FileOutputStream(path+"/"+profileImage);
				
				InputStream is=file_main.getInputStream();
				
				byte[] buffer=new byte[1024];
				
				while(true) {
					int data=is.read(buffer,0,buffer.length);
					
					if(data==-1) {
						break;
					}
					
					fos.write(buffer,0,data);
				}
				
				is.close();
				fos.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		dao.bpupdateData(dto);
		
		req.setAttribute("pageUserEmail", pageUserEmail);
		
		return "redirect:/board/profile?pageUserEmail="+pageUserEmail;
	}
	
	@RequestMapping(value="/board/upload",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_upload(HttpServletRequest req) {
		String pageUserEmail=req.getParameter("pageUserEmail");		
		int num=dao.getMaxNum()+1;
		
		req.setAttribute("pageUserEmail", pageUserEmail);
		req.setAttribute("num", num);
		
		return "board/upload";
	}
	
	@RequestMapping(value="/board/upload_ok",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_upload_ok(MultipartHttpServletRequest req, ImageFileDTO dto1, StoryDTO dto2) {
		String path="C:/Users/지요한/Documents/workspace-sts-3.9.14.RELEASE/Nespresso_FFFFFFFFF/src/main/webapp/resources/static/story_image";
		
		String pageUserEmail=req.getParameter("pageUserEmail");
		int num=Integer.parseInt(req.getParameter("num"));

		dto2.setNum(num);
		dto2.setSubject(req.getParameter("subject"));
		dto2.setContent(req.getParameter("content"));
		dto2.setTag(req.getParameter("tag"));
		
		File file = new File(path);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		List<ImageFileDTO> lists = new ArrayList<ImageFileDTO>();
		
		MultipartFile file_main=req.getFile("file_main");
		
		String originalFileName = null;
		String saveFileName = null;
		
		//파일 DB 저장
		originalFileName=file_main.getOriginalFilename();
		saveFileName=String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS",Calendar.getInstance())+"_main_"+originalFileName;

		dto1.setPageUserEmail(pageUserEmail);
		dto1.setNum(num);
		dto1.setOriginalFileName(originalFileName);
		dto1.setSaveFileName(saveFileName);
		lists.add(dto1);
		
		//파일 물리적 저장
		if(file_main!=null && file_main.getSize()>0) {
			try {
				FileOutputStream fos=new FileOutputStream(path+"/"+saveFileName);
				
				InputStream is=file_main.getInputStream();
				
				byte[] buffer=new byte[1024];
				
				while(true) {
					int data=is.read(buffer,0,buffer.length);
					
					if(data==-1) {
						break;
					}
					
					fos.write(buffer,0,data);
				}
				
				is.close();
				fos.close();
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		
		List<MultipartFile> file_sub_lists = req.getFiles("file_sub");		
		MultipartFile file_sub=null;		
		Iterator<MultipartFile> it=file_sub_lists.iterator();
		
		//파일 DB 저장
		int i=1;
		while(it.hasNext()) {
			dto1=new ImageFileDTO();
			
			file_sub=it.next();
			
			originalFileName=file_sub.getOriginalFilename();
			
			if(originalFileName.equals("")) {
				break;
			}
			saveFileName=String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS",Calendar.getInstance())+"_"+i+"_"+originalFileName;
			i++;
			
			dto1.setPageUserEmail(pageUserEmail);
			dto1.setNum(num);
			dto1.setOriginalFileName(originalFileName);
			dto1.setSaveFileName(saveFileName);
			lists.add(dto1);
			
			//파일 물리적 저장
			if(file_sub!=null && file_sub.getSize()>0) {
				try {
					FileOutputStream fos=new FileOutputStream(path+"/"+saveFileName);
					
					InputStream is=file_sub.getInputStream();
					
					byte[] buffer=new byte[1024];
					
					while(true) {
						int data=is.read(buffer,0,buffer.length);
						
						if(data==-1) {
							break;
						}
						
						fos.write(buffer,0,data);
					}
					
					is.close();
					fos.close();
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
		}
		
		dao.insertData(lists, dto2);
		
		return "redirect:/board/profile?pageUserEmail="+pageUserEmail;
	}
	
	@RequestMapping(value="/board/story",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_story(HttpServletRequest req,StoryDTO dto) {
		String pageUserEmail=req.getParameter("pageUserEmail");
		int num=Integer.parseInt(req.getParameter("num"));
		String profileImage=req.getParameter("profileImage");
		
		dto=dao.bsgetReadData(pageUserEmail, num);
		
		List<ImageFileDTO> lists1=dao.bigetLists2(pageUserEmail, num);
		List<CommentDTO> lists2=dao.bcgetLists(pageUserEmail, num);
		
		req.setAttribute("dto", dto);
		req.setAttribute("lists1", lists1);
		req.setAttribute("lists2", lists2);
		req.setAttribute("pageUserEmail", pageUserEmail);
		req.setAttribute("num", num);
		req.setAttribute("profileImage", profileImage);
		
		return "board/story";
	}
	
	@RequestMapping(value="/board/commentList",produces="application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity ajax_commentList(@ModelAttribute("commentDTO") CommentDTO dto,
			HttpServletRequest req) throws Exception {
		
		HttpHeaders responseHeaders = new HttpHeaders();
		ArrayList<HashMap> hmlist = new ArrayList<HashMap>();
		
		String pageUserEmail=req.getParameter("pageUserEmail");
		int num=Integer.parseInt(req.getParameter("num"));

		List<CommentDTO> lists=dao.bcgetLists(pageUserEmail, num);

		if(lists.size() > 0){
            for(int i=0; i<lists.size(); i++){
                HashMap hm = new HashMap();
                hm.put("comment_num", lists.get(i).getComment_num());
                hm.put("bcomment", lists.get(i).getBcomment());
                hm.put("nickname", lists.get(i).getNickname());
                
                hmlist.add(hm);
            }
            
        }
        
        JSONArray json=new JSONArray(hmlist);
        
		return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);
	}
	
	@RequestMapping(value="/board/popular",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_popular() {
		
		return "board/popular";
	}
	
	@RequestMapping(value="/board/subscribe",method= {RequestMethod.POST,RequestMethod.GET})
	public void board_subscribe() {
		
	}
	
	@RequestMapping(value="/board/searchUser",method= {RequestMethod.POST,RequestMethod.GET})
	public String board_searchUser(HttpServletRequest req) {
		String searchValue=req.getParameter("searchValue");
		
		List<ProfileDTO> lists=dao.bpgetList(searchValue);
		
		req.setAttribute("lists", lists);
		
		return "board/searchUser";
	}
	
	@RequestMapping(value="/board/addComment")
	@ResponseBody
	public String ajax_addComment(@ModelAttribute("commentDTO") CommentDTO dto, HttpServletRequest req) throws Exception{		
		try {
			int comment_num=dao.bcmaxNum()+1;
			
			dto.setComment_num(comment_num);
				
			dao.bcinsertData(dto);
		} catch (Exception e) {
			System.out.println(e.toString());
		}
			
		return "success";
	}
	
	@RequestMapping(value="/board/comment_delete")
	@ResponseBody
	public String ajax_deleteComment(@ModelAttribute("commentDTO") CommentDTO dto,HttpServletRequest req) throws Exception{
		try {
			String pageUserEmail=req.getParameter("pageUserEmail");
			int num=Integer.parseInt(req.getParameter("num"));
			int comment_num=Integer.parseInt(req.getParameter("comment_num"));
			
			dao.bcdeleteData(pageUserEmail, num, comment_num);
		} catch (Exception e) {
			System.out.println(e.toString());
		}	
		
		return "success";
	}
//경환보드끝
	
	
}
