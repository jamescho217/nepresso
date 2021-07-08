package com.exe.util;

//페이징 처리 클래스
public class MyUtil {

	//전체 페이지수 구하기
	//numPerPage : 한 화면에 표시할 데이터의 갯수
	//dataCount : 전체데이터 갯수
	
	public int getPageCount(int numPerPage, int dataCount) { //남는게시물의페이지추가생성
		
		int pageCount = 0;
		
		pageCount = dataCount / numPerPage;
		
		if(dataCount % numPerPage != 0) {
			pageCount++;
		}
		return pageCount;
	}
	//페이징 처리 메소드
	//currentPage : 현재 표시할 페이지
	//totalPage : 전체페이지수
	//listUrl : 링크를 설정할 url
	public String pageIndexList(int currentPage, int totalPage, String listUrl) {
		int numPerBlock = 100;
		int currentPageSetup;
		int page;
		
		StringBuffer sb = new StringBuffer();
		
		if(currentPage==0||totalPage==0) {
			return "";
		}
		
		//list.jsp
		//물음표가 검색했음을 의미함
		//list.jsp?searchKey=subject&searchValue=1
		if(listUrl.indexOf("?")!=-1) {
			listUrl += "&";
		}else {
			listUrl += "?";
		}
		
		//이전페이지
		//<이전 6 7 8 9 10 > 다음
		currentPageSetup = (currentPage/numPerBlock)*numPerBlock;
		
		if(currentPage % numPerBlock == 0) {
			currentPageSetup = currentPageSetup - numPerBlock;
		}
		
		//<이전
		if(totalPage > numPerBlock && currentPageSetup > 0) {
			sb.append("<a href=\"" + listUrl + "pageNum=" +
						currentPageSetup + "\">◀이전</a>&nbsp;");
			//<a href="list.jsp?pageNum=5">◀이전</a>&nbsp;
			
		}
		
		//바로가기 페이지
		//◀이전 6 7 8 9 10 ▶다음
		//1 2 3 4 5 ▶ 다음
		page = currentPageSetup +1;
		//1번부터5번까지 찍어라
		while(page <= totalPage && page <= (currentPageSetup + numPerBlock)) {
			if(page==currentPage) {
				
				sb.append("<strong>" + page + "</strong>&nbsp;");
				//sb.append("<font color=\"Fuchsia\">" + page + "</font>&nbsp;");
				//<font color = "Fuchsia">2</font>&nbsp;
			}else {
				sb.append("<a href=\"" + listUrl + "pageNum=" + page + "\">" +
						page + "</a>&nbsp;");
				//<a href="list.jsp?pageNum=9">9</a>&nbsp;
			}
			
			page++;
			
		}
		
		//▶다음
		//◀이전 6 7 8 9 10 ▶ 다음
		//◀이전 11 12
		if(totalPage - currentPageSetup > numPerBlock) {
			sb.append("<a href=\"" + listUrl + "pageNum=" + page + 
					"\">▶다음</a>&nbsp;");
			//<a href="list.jsp?pageNum=11;>▶다음</a>&nbsp;
		}
		
		return sb.toString();
		
	}
	
	
}
