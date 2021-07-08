<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Nespresso USA brings luxury coffee and espresso machine straight from the café and into your kitchen.">

<title>Insert title here</title>

<!-- 홈피꺼 -->

<!--  -->
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/css.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/locale-related-kr.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveComponents.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/responsiveLoadedFirst.css" />
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/styles.f39e04764e2617265801.css" />

<link rel="stylesheet" href="path/to/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="/c/cache/layout3.screen-68c1c42b2fc063455fbb6141243e264e-rev-f22bb4a.min.css" media="screen" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="/c/v3/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="/nespresso/resources/css/faq.css" />
<script src="https://kit.fontawesome.com/cd5dd810df.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
.faq-items li div {display: none;}
.faq-items li.active div {display: block;}
</style>


</head>

<body>

	<div id="main-container">


		<div id="wrapper" class="no-touch">
			<div id="main-accessibility">
				<ul>
					<li><a href="#JumpContent" class="activateKeyboardNavigation"
						title="Jump to Content">Jump to Content</a></li>
					<li><a href="#" class="activateDyslexia"
						title="Activate mode Dyslexia"><span
							class="dyslexia-desactivate hidden">Desactivate</span><span
							class="dyslexia-activate">Activate</span> mode Dyslexia</a></li>
				</ul>
			</div>
			<div id="main-wrapper" lang="ko" xml:lang="ko">
				<div class="container">
					<div class="row">
						<main role="main" aria-live="polite">
						<div class="customer-services-faq">
							<div class="customer-services-main clearfix">
								<div class="customer-services-title displayNone">
									<h1 tabindex="0">
										<b>Nespresso</b> Club 온라인 지원
									</h1>
								</div>

<!-- JQUERY -->
<script type="text/javascript">

$( document ).ready( function() {
    $( 'button.question' ).click( function() {
    	if( $(this).parent().hasClass('active') ){
    		$(this).parent().removeClass('active');
    	} else {
    		$(this).parent().addClass('active');
    		$(this).parent().siblings().removeClass('active');
    	}
    	
      // $(this).next().slideToggle();
      // $(this).parent().siblings().find('div').slideUp();
      //$( this ).next().siblings('div.answer-wrapper').slideUp();
    });
  });

</script>



								<div class="col-xs-12 customer-services-search">
									<div class="row">
										<div class="col-xs-12">
											<div class="input-group input-group-generic with-picto">
												<form action="<%=cp%>/faqlist.action" method="post" id="gogo">
													<div class="col-xs-12">
														<i onclick="document.getElementById('gogo').submit();" style="cursor: pointer;" class="fa fa-search search-form" title="진행" tabindex="0"
															aria-hidden="true"></i>
														<i style="cursor: pointer;" class="fa fa-times reset-form" title="Reset search"
															tabindex="0" aria-hidden="true"></i> 
														<input type="hidden" name="searchKey" value="fsubject"/>
														<input type="text" title="검색" id="query" name="searchValue" value=""
															placeholder="검색" class="form-control col-sm-12 col-md-9 form-control--withPlaceholder">
														<span class="mobile-label">검색</span>
													</div>
												</form>
											</div>
										</div>
									</div>
<!-- ********************************************* -->
									<div id="JumpContent" class="row customer-services-faq-top">
										<div class="col-xs-12">
											<article> <a name="faq_top"></a>
											<div class="col-xs-12 faq-items-block faq-items-top"
												role="tablist">
												<h2 class="topfive-title">
													<i class="fas fa-star"></i>
													<!-- <i class="icon icon-star"></i> --> 자주하는 질문 Top 5.
												</h2>
												<ul class="listTopFive faq-items">
													<!-- 반복 -->
													<c:forEach var="dto" items="${lists1 }">
													<li class="faq-item" data-catid="1398" data-faqid="1392"
														role="tabpanel" aria-describedby="top-five-itemstab1392">
														<!-- 질문 -->
														<button type="button" role="button" class="question faq-question" data-faqid="1392"
															aria-selected="false" aria-controls="top-five-itemspanel1392"
															id="top-five-itemstab1392" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<!-- 답변 -->
														<div class="answer-wrapper faq-answer" tabindex="0" id="top-five-itemspanel1392"
															aria-labelledby="top-five-itemstab1392" aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
																
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복 -->
												</ul>
											</div>
											</article>
										</div>
									</div>
<!-- ********************************************* -->
									<div class="row customer-services-faq-categories">
										<c:if test="${dataCount2!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_3991"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian3991">
												<h2 class="topic-title">
													<i class="fas fa-question-circle"></i>
													<!-- <i class="icon icon-FAQ_on"></i> --> 결제관련
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists2 }">
													<li class="faq-item" data-catid="3991" data-faqid="2800"
														role="tabpanel" aria-describedby="tab2800">
														<button type="button" role="button"
															class="question faq-question" data-faqid="2800"
															aria-selected="false" aria-controls="panel2800"
															id="tab2800" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel2800" aria-labelledby="tab2800"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
													
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount3!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_2295"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian2295">
												<h2 class="topic-title">
													<i class="fas fa-coffee"></i>
													<!-- <i class="icon icon-vertuo"></i> --> 버츄오 라인
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists3 }">
													<li class="faq-item" data-catid="2295" data-faqid="3787"
														role="tabpanel" aria-describedby="tab3787">
														<button type="button" role="button"
															class="question faq-question" data-faqid="3787"
															aria-selected="false" aria-controls="panel3787"
															id="tab3787" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel3787" aria-labelledby="tab3787"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount4!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_1397"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian1397">
												<h2 class="topic-title">
													<i class="fas fa-info-circle"></i>
													<!-- <i class="icon icon-Information"></i> --> 제품 정보
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists4 }">
													<li class="faq-item" data-catid="1397" data-faqid="4350"
														role="tabpanel" aria-describedby="tab4350">
														<button type="button" role="button"
															class="question faq-question" data-faqid="4350"
															aria-selected="false" aria-controls="panel4350"
															id="tab4350" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel4350" aria-labelledby="tab4350"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount5!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_1398"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian1398">
												<h2 class="topic-title">
													<i class="fas fa-shopping-bag"></i>
													<!-- <i class="icon icon-bag"></i> --> 주문 및 주문 확인
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists5 }">
													<li class="faq-item" data-catid="1398" data-faqid="2365"
														role="tabpanel" aria-describedby="tab2365">
														<button type="button" role="button"
															class="question faq-question" data-faqid="2365"
															aria-selected="false" aria-controls="panel2365"
															id="tab2365" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel2365" aria-labelledby="tab2365"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount6!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_1399"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian1399">
												<h2 class="topic-title">
													<i class="fas fa-wifi"></i>
													<!-- <i class="icon icon-online_support"></i> --> 온라인 지원
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists6 }">
													<li class="faq-item" data-catid="1399" data-faqid="2336"
														role="tabpanel" aria-describedby="tab2336">
														<button type="button" role="button"
															class="question faq-question" data-faqid="2336"
															aria-selected="false" aria-controls="panel2336"
															id="tab2336" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel2336" aria-labelledby="tab2336"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount7!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_1401"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian1401">
												<h2 class="topic-title">
													<i class="fas fa-hdd"></i>
													<!-- <i class="icon icon-machine"></i> --> 머신 지원
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists7 }">
													<li class="faq-item" data-catid="1401" data-faqid="3402"
														role="tabpanel" aria-describedby="tab3402">
														<button type="button" role="button"
															class="question faq-question" data-faqid="3402"
															aria-selected="false" aria-controls="panel3402"
															id="tab3402" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel3402" aria-labelledby="tab3402"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount8!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_1403"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian1403">
												<h2 class="topic-title">
													<i class="fab fa-bandcamp"></i>
													<!-- <i class="icon icon-Stick_a_label_on"></i> --> 브랜드 및 프로모션
												</h2>
												<ul class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists8 }">
													<li class="faq-item" data-catid="1403" data-faqid="3401"
														role="tabpanel" aria-describedby="tab3401">
														<button type="button" role="button"
															class="question faq-question" data-faqid="3401"
															aria-selected="false" aria-controls="panel3401"
															id="tab3401" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel3401" aria-labelledby="tab3401"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복.. -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<c:if test="${dataCount9!=0 }">
										<div class="col-xs-12">
											<article>
											<a name="faq_category_1405"></a>
											<div class="col-xs-12 faq-items-block" role="tablist"
												id="accordian1405">
												<h2 class="topic-title">
													<i class="fas fa-recycle"></i>
													<!-- <i class="icon icon-Recycling_on"></i> --> 재활용
												</h2>
												<u l class="faq-items">
													<!-- 반복.. -->
													<c:forEach var="dto" items="${lists9 }">
													<li class="faq-item" data-catid="1405" data-faqid="5394"
														role="tabpanel" aria-describedby="tab5394">
														<button type="button" role="button"
															class="question faq-question" data-faqid="5394"
															aria-selected="false" aria-controls="panel5394"
															id="tab5394" aria-expanded="false">
															<i class="fas fa-plus-circle" style="font-size: 5px; position: relative; top: -6px; color: gray;"></i>
															<!-- <i class="fn_moreCircle"></i> --> ${dto.fsubject }
														</button>
														<div class="answer-wrapper faq-answer" tabindex="0"
															id="panel5394" aria-labelledby="tab5394"
															aria-hidden="true">
															<div class="answer">
																<p><br/>
																${fn:replace(dto.fcontent, replaceChar, "<br/>")}
																${dto.fcontent }</p>
															</div>
															<div class="get-client-feedback">
																<div class="answer-wrapper-question"></div>
															</div>
														</div>
													</li>
													</c:forEach>
													<!-- 반복 -->
												</ul>
											</div>
											</article>
										</div>
										</c:if>
										<div class="col-xs-12">
											<div class="col-xs-12 contact-us-link-block">
												<p>추가 문의는 네스프레소 클럽으로 연락 주시면 더 상세히 도움 드리도록 하겠습니다. (☎
													080-734-1111 수신자 부담)</p>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
						</main>
					</div>
				</div>
			</div>

			<script type="text/javascript"
				src="/c/cache/layout3-dee07f8a9fda927b684142df6252d9ab-rev-f22bb4a.min.js"></script>
			<script type="text/javascript"
				src="/c/cache/main-0dabbf4f4463048ef022e6f32062c213-rev-f22bb4a.min.js"></script>
			<script type="text/javascript">
				//<![CDATA[
				var FAQSetting = {
					"openUrl" : "\/faq\/kr\/ko\/open-faq",
					"closeNegative" : "\/faq\/kr\/ko\/close-negative-3\/action\/close-negative",
					"target" : "_self",
					"userAutoFill" : ""
				} //]]>
			</script>
		</div>







	</div>


</body>
</html>