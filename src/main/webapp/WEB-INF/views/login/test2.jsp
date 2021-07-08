<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
</head>
<body>
	<div
		class="register-machine my-machines wrapper responsive-registration registration-machine__form">

		<div id="register-my-machine" class="registration-machine ng-scope">


			<div class="intro registration-machine__intro">
				<div class="clearfix">
					<h2
						class="mb15 pull-left heading responsive-title registration-machine__title">
						고객님의&nbsp;머신</h2>
				</div>

				<div class="fields-error-list"></div>

				<fieldset
					class="fieldset-large have-machine registration-machine__fieldset">
					<legend class="subtitle"> 내 커피 머신 등록</legend>

					<span class="visually-hidden">머신 등록을 원하실 경우 아래 정보를 입력해주세요.</span> <input
						type="hidden" name="selectedMachine"
						data-ng-value="registerMachineCode" style="" autocomplete="off">
					<input type="hidden" name="machineRegistration"
						data-ng-value="registerType" style="" autocomplete="off"
						value="haveMachine">

					<div class="field-holder registration-machine__select clearfix">
						<input type="radio" name="registerChoice" id="haveMachine"
							data-ng-model="registerChoice" value="haveMachine"
							data-ng-change="registerTypeChange()"
							data-label="이미 네스프레소 커피 머신을 가지고 있습니다."
							class="ng-valid ng-not-empty ng-dirty ng-touched ng-valid-parse"
							style=""> <label for="ta-registration-machine-have"
							class="radio"> 이미 네스프레소 커피 머신을 가지고 있습니다.</label>
					</div>
					<div class="field-holder clearfix">
						<input type="radio" name="registerChoice" id="noMachine"
							data-ng-model="registerChoice" value="noMachine"
							data-ng-change="registerTypeChange()"
							data-label="아직 네스프레소 커피 머신을 가지고 있지 않습니다."
							class="ng-valid ng-not-empty ng-dirty ng-touched" style="">

						<label for="ta-registration-machine-dont-have" class="radio">
							아직 네스프레소 커피 머신을 가지고 있지 않습니다.</label>
					</div>
				</fieldset>
			</div>
			<input type="hidden" name="name" value="" style=""> <input
				type="hidden" name="lName" value="" style=""> <input
				type="hidden" name="email" value="" style=""> <input
				type="hidden" name="pwd" value="" style=""> <input
				type="hidden" name="ad1" value="" style=""> <input
				type="hidden" name="ad2" value="" style=""> <input
				type="hidden" name="pcode" value="" style=""> <input
				type="hidden" name="extraAd" value="" style=""> <input
				type="hidden" name="tel" value="" style="">

			<script type="text/javascript">
				//step3
				$(document).ready(function() {

					/* $('#showStep1').hide(); */

					$('#haveMachine').click(function() {

						/* 			
									$('#brewMachine').slideUp(); */

						$('#showStep1').slideToggle(200);

						$('#brewMachine').hide();
						$('#ta-continue-bottom').hide();

					});

				});
			</script>

			<script type="text/javascript">
				$(function() {

					$("#tabs").tabs();
				});
			</script>

			<div id="register-machine-selection" class="section-slide"
				data-ng-show="showSelectMachine" style="">
				<fieldset id="showStep1" style="">
					<div class="select-range-bar">
						<legend
							class="select-range-title registration-machine-grid__legend">
							사용 중인 머신 종류를 선택해주세요. </legend>
					</div>

					<div class="registration-machine-grid__legend-step-title">
						STEP 1/3: 사용 중인 머신 종류를 선택해주세요.</div>

					<div id="tabs"
						class="ui-tabs ui-corner-all ui-widget ui-widget-content">
						<ul id="register-machine-product-range-selection"
							class="machine-matrix range unstyled registration-machine-grid__list ui-tabs-nav ui-corner-all ui-helper-reset ui-helper-clearfix ui-widget-header"
							role="tablist">
							<!-- ngRepeat: range in ranges track by $index -->

							<li id="li-range-0"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab ui-tabs-active ui-state-active"
								role="tab" tabindex="0" aria-controls="tabs-1"
								aria-labelledby="item1" aria-selected="true"
								aria-expanded="true"><input id="granMa" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-granmaestria"> <label for="range-0"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 첫번째 이미지 --> <a href="#tabs-1" id="item1"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										id="granMa" height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">그랑 마에스트리아</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>

							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-1"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-2"
								aria-labelledby="item2" aria-selected="false"
								aria-expanded="false"><input id="range-1" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-u"> <label for="range-1"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 두번째 이미지 U --> <a href="#tabs-2" id="item2"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">U</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-2"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-3"
								aria-labelledby="item3" aria-selected="false"
								aria-expanded="false"><input id="range-2" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-lattissimaPlus"> <label
								for="range-2"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 세번째 이미지  u and milk --> <a href="#tabs-3" id="item3"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10264186159134/M-0198-machineregister165x144.png?impolicy=product&amp;imwidth=480">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">유 앤 밀크</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-3"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-4"
								aria-labelledby="item4" aria-selected="false"
								aria-expanded="false"><input id="range-3" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-pixie"> <label for="range-3"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 네번째 이미지 pixie  --> <a href="#tabs-4" id="item4"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=480"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">픽시</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-4"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-5"
								aria-labelledby="item5" aria-selected="false"
								aria-expanded="false"><input id="range-4" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-pixie-bundle"> <label for="range-4"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 5번째 이미지 pixie & achino --> <a href="#tabs-5" id="item5"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">픽시 &amp; 에어로치노</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-5"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-6"
								aria-labelledby="item6" aria-selected="false"
								aria-expanded="false"><input id="range-5" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-citiz"> <label for="range-5"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>

								</span> <!-- 6번째 이미지 citiz --> <a href="#tabs-6" id="item6"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">시티즈</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-6"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-7"
								aria-labelledby="item7" aria-selected="false"
								aria-expanded="false"><input id="range-6" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-citizandmilk"> <label for="range-6"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 7번째 이미지 citiz n milk --> <a href="#tabs-7" id="item7"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">시티즈 앤 밀크</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-7"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-8"
								aria-labelledby="item8" aria-selected="false"
								aria-expanded="false"><input id="range-7" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-inissia"> <label for="range-7"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 8번째 이미지 initia --> <a href="#tabs-8" id="item8"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">이니시아</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-8"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-9"
								aria-labelledby="item9" aria-selected="false"
								aria-expanded="false"><input id="range-8" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-inissia-bundle"> <label
								for="range-8"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 9번째 이미지 initia & achino --> <a href="#tabs-9" id="item9"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">이니시아 &amp; 에어로치노</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-9"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-10"
								aria-labelledby="item10" aria-selected="false"
								aria-expanded="false"><input id="range-9" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-prodigio"> <label for="range-9"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 10번째 이미지 prodigino --> <a href="#tabs-10" id="item10"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920177694/M-0349-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">프로디지오</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-10"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-11"
								aria-labelledby="item11" aria-selected="false"
								aria-expanded="false"><input id="range-10" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-prodigio-milk"> <label
								for="range-10"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 11번째 이미지 prodigino and milk --> <a href="#tabs-11"
									id="item11" role="presentation" tabindex="-1"
									class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">프로디지오 앤 밀크</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-11"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-12"
								aria-labelledby="item12" aria-selected="false"
								aria-expanded="false"><input id="range-11" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-expert"> <label for="range-11"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 12번째 이미지 expert --> <a href="#tabs-12" id="item12"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">엑스퍼트</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-12"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-13"
								aria-labelledby="item13" aria-selected="false"
								aria-expanded="false"><input id="range-12" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-expertandmilk"> <label
								for="range-12"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 13번째 이미지 expert and milk --> <a href="#tabs-13"
									id="item13" role="presentation" tabindex="-1"
									class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">엑스퍼트 앤 밀크</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-13"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-14"
								aria-labelledby="item14" aria-selected="false"
								aria-expanded="false"><input id="range-13" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-creatista-plus"> <label
								for="range-13"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 14번째 이미지 creatista plus --> <a href="#tabs-14" id="item14"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">크리아티스타 플러스</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-14"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-15"
								aria-labelledby="item15" aria-selected="false"
								aria-expanded="false"><input id="range-14" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-essenza-mini"> <label
								for="range-14"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 15번째 이미지 essenga mini --> <a href="#tabs-15" id="item15"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">에센자 미니</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-15"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-16"
								aria-labelledby="item16" aria-selected="false"
								aria-expanded="false"><input id="range-15" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-essenza"> <label for="range-15"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 16번째 이미지 essenga mini and achino --> <a href="#tabs-16"
									id="item16" role="presentation" tabindex="-1"
									class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">에센자 미니 &amp; 에어로치노</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-16"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-17"
								aria-labelledby="item17" aria-selected="false"
								aria-expanded="false"><input id="range-16" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-lattissimaOne"> <label
								for="range-16"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 17번째 이미지 lattisima one --> <a href="#tabs-17" id="item17"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">라티시마 원</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-17"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-18"
								aria-labelledby="item18" aria-selected="false"
								aria-expanded="false"><input id="range-17" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-barista"> <label for="range-17"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title -line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url() no-repeat 10px center'}">
										<span class="visually-hidden ng-binding"></span>
								</span> <!-- 18번째 이미지 barista --> <a href="#tabs-18" id="item18"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10649411289118/barista-machine-category.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">바리스타</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-18"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last-line ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-19"
								aria-labelledby="item19" aria-selected="false"
								aria-expanded="false"><input id="range-18" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-GranLattissima"> <label
								for="range-18"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 19번째 이미지 grang lattisima --> <a href="#tabs-19"
									id="item19" role="presentation" tabindex="-1"
									class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">그랑 라티시마</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-19"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last-line ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-20"
								aria-labelledby="item20" aria-selected="false"
								aria-expanded="false"><input id="range-19" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-latissima"> <label for="range-19"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title original-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640791582/machine-technology-selection-original.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">오리지널</span>
								</span> <!-- 20번째 이미지 lattisima touch refresh --> <a href="#tabs-20"
									id="item20" role="presentation" tabindex="-1"
									class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481602035742/LATTISIMA-TOUCH-GLAM-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"></a>
									<span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">라티시마 터치 리프레쉬</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-20"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last-line ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-21"
								aria-labelledby="item21" aria-selected="false"
								aria-expanded="false"><input id="range-20" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-vertuoline"> <label for="range-20"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title vertuo-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">버츄오</span>
								</span> <!-- 21번째 이미지 virtuo --> <a href="#tabs-21" id="item21"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">버츄오</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
							<li id="li-range-21"
								data-ng-repeat="range in ranges track by $index"
								data-ng-class="{ last: isLastElementOfRow($index), 'last-line': isLastLine($index), 'registration-machine-grid__item--selected': isSelectedRange(range)}"
								class="pic registration-machine-grid__item ng-scope last-line ui-tabs-tab ui-corner-top ui-state-default ui-tab"
								role="tab" tabindex="-1" aria-controls="tabs-22"
								aria-labelledby="item22" aria-selected="false"
								aria-expanded="false"><input id="range-21" type="radio"
								name="ranges"
								class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
								data-ng-model="$parent.selectedRangeId" data-ng-value="range.id"
								data-ng-change="selectRange(range, $index)"
								value="machine-range-vertuoplus"> <label for="range-21"
								class="pic registration-machine-grid__label selectable"
								data-ng-class="{active: isSelectedRange(range), selectable: isSelectableRange(range), whileload: $parent.loading.products}">

									<span class="line-title vertuo-line"
									data-ng-style="range.technologyMedia.media.url &amp;&amp; {'background':'url(https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png) no-repeat 10px center'}"
									style="background: url(&quot;https://www.nespresso.com/ecom/medias/sys_master/public/10606640857118/machine-technology-selection-vertuo.png&quot;) 10px center no-repeat;">
										<span class="visually-hidden ng-binding">버츄오</span>
								</span> <!-- 22번째 이미지 virtuo --> <a href="#tabs-22" id="item22"
									role="presentation" tabindex="-1" class="ui-tabs-anchor"> <img
										src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										class="registration-machine-grid__image" alt="" width="120"
										height="120"
										data-ng-click="clickOnRangeLabelImage(range, $index)"
										data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
										data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
										srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
								</a> <span class="name registration-machine-grid__text ng-binding"
									data-ng-bind="range.name">버츄오 플러스</span> <span
									class="selected ng-hide" data-ng-show="isSelectedRange(range)"></span>
							</label></li>
							<!-- end ngRepeat: range in ranges track by $index -->
						</ul>
					</div>
				</fieldset>
			</div>
			<script type="text/javascript">
				$(document).ready(function() {

					$('#item1').click(function() {

						$('#tabs-1').slideToggle(200);
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item2').click(function() {

						$('#tabs-2').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();
					});

					$('#item3').click(function() {

						$('#tabs-3').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();
					});

					$('#item4').click(function() {

						$('#tabs-4').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();
					});

					$('#item5').click(function() {

						$('#tabs-5').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item6').click(function() {

						$('#tabs-6').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item7').click(function() {

						$('#tabs-7').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item8').click(function() {

						$('#tabs-8').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item9').click(function() {

						$('#tabs-9').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item10').click(function() {

						$('#tabs-10').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item11').click(function() {

						$('#tabs-11').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item12').click(function() {

						$('#tabs-12').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item13').click(function() {

						$('#tabs-13').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item14').click(function() {

						$('#tabs-14').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item15').click(function() {

						$('#tabs-15').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item16').click(function() {

						$('#tabs-16').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item17').click(function() {

						$('#tabs-17').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item18').click(function() {

						$('#tabs-18').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item19').click(function() {

						$('#tabs-19').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item20').click(function() {

						$('#tabs-20').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item21').click(function() {

						$('#tabs-21').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-6').slideUp();
						$('#tabs-22').slideUp();

					});

					$('#item22').click(function() {

						$('#tabs-22').slideToggle(200);
						$('#tabs-1').slideUp();
						$('#tabs-2').slideUp();
						$('#tabs-3').slideUp();
						$('#tabs-4').slideUp();
						$('#tabs-5').slideUp();
						$('#tabs-7').slideUp();
						$('#tabs-8').slideUp();
						$('#tabs-9').slideUp();
						$('#tabs-10').slideUp();
						$('#tabs-11').slideUp();
						$('#tabs-12').slideUp();
						$('#tabs-13').slideUp();
						$('#tabs-14').slideUp();
						$('#tabs-15').slideUp();
						$('#tabs-16').slideUp();
						$('#tabs-17').slideUp();
						$('#tabs-18').slideUp();
						$('#tabs-19').slideUp();
						$('#tabs-20').slideUp();
						$('#tabs-21').slideUp();
						$('#tabs-6').slideUp();

					});

				});
			</script>

			<!-- 					
							<!--  step2/3 item 1 그랑 마에스트리아  -->
			<input type="hidden" id="hidden1" name="fileImage" value="" style="">
			<input type="hidden" id="hidden2" name="fileName" value="" style="">
			<input type="hidden" id="hidden3" name="pName" value="" style="">
			<fieldset id="tabs-1"
				class="section-slide ui-tabs-panel ui-corner-bottom ui-widget-content"
				style="display: none;" aria-labelledby="ui-id-1" role="tabpanel">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">
					STEP 2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="item1"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C520-KR-TI-NE'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="그랑 마에스트리아 티타늄 "
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							id="showResult1" height="120"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120 1x, /ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=240 2x, /ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=360 3x, /ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120 1x,/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=240 2x,/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=360 3x,/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding" id="fileImage">그랑
									마에스트리아</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C520-KR-TI-NE'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name" id="pName">그랑 마에스트리아 티타늄 </span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- step 2/3 item2 -->
			<fieldset id="tabs-2" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C50-KR-CW-NE'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="U C50 퓨어 크림"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							id="showResult2" height="120"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">U</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C50-KR-CW-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">U C50 퓨어 크림</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D50-KR-BK-NE'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="U D50 퓨어 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult3"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">U</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D50-KR-BK-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">U D50 퓨어 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C50-KR-TP-NE'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="U C50 퓨어 그레이"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult4"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386889900062/M-0100-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">U</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C50-KR-TP-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">U C50 퓨어 그레이</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D50-KR-OR-NE'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="U D50 퓨어 오렌지"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult5"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">U</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D50-KR-OR-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">U D50 퓨어 오렌지</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>

			<!-- step 2/3 item3 -->
			<fieldset id="tabs-3" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C55-KR-CW-NE'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="유밀크 C55 퓨어크림"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult6"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">유 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C55-KR-CW-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">유밀크 C55 퓨어크림</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- step 2/3 item4 -->
			<fieldset id="tabs-4" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C61-KR-TI-KIT'"
						style=""> <label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C61 타이탄  "
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult7"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C61-KR-TI-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C61 타이탄 </span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C61-KR-RE-KIT'"
						style=""> <label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C61 일렉트릭 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult8"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C61-KR-RE-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C61 일렉트릭 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60-KR-DB-NE'"
						style=""> <label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C60 다크 브라운"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult9"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C60-KR-DB-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C60 다크 브라운</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60-KR-TI-NE'"
						style=""> <label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C60 일렉트릭 타이탄"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult10"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481604689950/M-1003-Nespresso-C60-Pixie-Electric-Titan-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C60-KR-TI-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C60 일렉트릭 타이탄</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>

					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-5" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60-KR-SS-NE'"
						style=""> <label for="product-5"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C60 스틸"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult11"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=480 4x">
							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C60-KR-SS-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C60 스틸</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-6" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-not-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60-KR-RE-KIT'"
						style=""> <label for="product-6"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C60 일렉트릭 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult12"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C60-KR-RE-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C60 일렉트릭 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>

			<!-- step2/3 item 5 pxie and achino -->
			<fieldset id="tabs-5" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKC61-KR-TI'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시&amp;에어로치노 블랙, C61 타이탄"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult13"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'A3NKC61-KR-TI'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시&amp;에어로치노 블랙, C61 타이탄</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKC61-KR-TI'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시&amp;에어로치노 화이트, C61 타이탄"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult14"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'A3WKC61-KR-TI'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시&amp;에어로치노 화이트, C61 타이탄</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKC61-KR-RE'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="픽시&amp;에어로치노 블랙, C61 일렉트릭 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult15"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'A3NKC61-KR-RE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시&amp;에어로치노 블랙, C61 일렉트릭 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKC61-KR-RE'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="픽시&amp;에어로치노 화이트, C61 일렉트릭 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult16"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'A3WKC61-KR-RE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시&amp;에어로치노 화이트, C61 일렉트릭 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-4" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60P-KR-RE-WH'">
						<label for="product-4"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="픽시&amp;에어로치노 화이트, C60 일렉트릭 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult17"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'C60P-KR-RE-WH'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시&amp;에어로치노 화이트, C60 일렉트릭 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-5" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60P-KR-RE'">
						<label for="product-5"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="픽시&amp;에어로치노 블랙, C60 일렉트릭 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult18"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'C60P-KR-RE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시&amp;에어로치노 블랙, C60 일렉트릭 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-7" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C60P-KR-TI'">
						<label for="product-7"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="픽시 C60 에어로치노 팩 (타이탄)"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult19"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">픽시 &amp;
									에어로치노</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'C60P-KR-TI'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">픽시 C60 에어로치노 팩 (타이탄)</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- step2/3 item 6 citiz -->
			<fieldset id="tabs-6" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-fselection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D113-KR-WH-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 D113 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult20"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D113-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 D113 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D113-KR-BK-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 D113 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult21"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D113-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 D113 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C113-KR-CR-KIT'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 C113 체리 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult22"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C113-KR-CR-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 C113 체리 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C112-KR-CR-KIT'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 C112 체리 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult23"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C112-KR-CR-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 C112 체리 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-4" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C110-KR-RE-NE'">
						<label for="product-4"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 C110 파이어 엔진 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult24"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C110-KR-RE-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 C110 파이어 엔진 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-8" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D113-KR-WH-KIT2'">
						<label for="product-8"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 D113 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult25"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D113-KR-WH-KIT2'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 D113 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-9" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D113-KR-BK-KIT2'">
						<label for="product-9"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 D113 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult26"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D113-KR-BK-KIT2'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 D113 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-10" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C113-KR-CR-KIT2'">
						<label for="product-10"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 C113 체리 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult27"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C113-KR-CR-KIT2'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 C113 체리 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- 2/3 item 7 citiz and milk -->
			<fieldset id="tabs-7" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D123-KR-WH-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 앤 밀크 D123 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult28"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D123-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 앤 밀크 D123 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D123-KR-BK-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 앤 밀크 D123 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult29"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D123-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 앤 밀크 D123 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D122-KR-BK-KIT'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 앤 밀크 D122 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult30"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D122-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 앤 밀크 D122 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-5" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D123-KR-BK-KIT2'">
						<label for="product-5"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 앤 밀크 D123 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult31"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D123-KR-BK-KIT2'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 앤 밀크 D123 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-6" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D123-KR-WH-KIT2'">
						<label for="product-6"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="시티즈 앤 밀크 D123 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult32"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">시티즈 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D123-KR-WH-KIT2'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">시티즈 앤 밀크 D123 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- 2/3 item 8 initia -->
			<fieldset id="tabs-8" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D40-KR-BK-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아 D40 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult33"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D40-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아 D40 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40-KR-RE-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아 C40 루비 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult34"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C40-KR-RE-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아 C40 루비 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40-KR-WH-NE'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아 C40 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult35"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C40-KR-WH-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아 C40 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40-KR-PO-NE'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아 C40 오렌지"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult36"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C40-KR-PO-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아 C40 오렌지</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- 2/3 item9 initia and achino -->
			<fieldset id="tabs-9" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-RE'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="이니시아&amp;에어로치노 블랙, C40 루비 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult37"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-RE'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, C40 루비 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-RE-WH'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="이니시아&amp;에어로치노 화이트, C40 루비 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult38"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-RE-WH'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, C40 루비 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKD40-KR-BK-N'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아&amp;에어로치노 블랙, D40 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult39"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3NKD40-KR-BK-N'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, D40 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKD40-KR-BK-N'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아&amp;에어로치노 화이트, D40 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult40"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3WKD40-KR-BK-N'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, D40 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-5" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-LB'">
						<label for="product-5"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아 C40 에어로치노팩 스카이블루"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult41"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-LB'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아 C40 에어로치노팩 스카이블루</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-6" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-PO'">
						<label for="product-6"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아&amp;에어로치노 블랙, C40 오렌지"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult42"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-PO'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, C40 오렌지</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-7" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D40P-KR-BL'">
						<label for="product-7"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아 D40 에어로치노팩 블루베리 블루"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult43"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'D40P-KR-BL'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아 D40 에어로치노팩 블루베리 블루</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-8" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-PO-WH'">
						<label for="product-8"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="이니시아&amp;에어로치노 화이트, C40 오렌지"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult44"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-PO-WH'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, C40 오렌지</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-9" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-WH-WH'">
						<label for="product-9"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="이니시아&amp;에어로치노 화이트, C40 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult45"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-WH-WH'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 화이트, C40 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-10" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C40P-KR-WH'">
						<label for="product-10"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="이니시아&amp;에어로치노 블랙, C40 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult46"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">이니시아
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'C40P-KR-WH'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">이니시아&amp;에어로치노 블랙, C40 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item10 prodigino -->
			<fieldset id="tabs-10" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C70-KR-TI-NE'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="프로디지오 C70 타이탄"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult47"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">프로디지오</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C70-KR-TI-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">프로디지오 C70 타이탄</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item11 prodigino and milk -->
			<fieldset id="tabs-11" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C75-KR-TI-NE'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="프로디지오 앤 밀크, C75 타이탄"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult48"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">프로디지오 앤
									밀크</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'C75-KR-TI-NE'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">프로디지오 앤 밀크, C75 타이탄</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item12 expert -->
			<fieldset id="tabs-12" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C80-KR-BK-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="엑스퍼트 C80 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult49"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">엑스퍼트</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C80-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">엑스퍼트 C80 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item13 expert n milk -->
			<fieldset id="tabs-13" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C85-KR-BK-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="엑스퍼트 앤 밀크 C85 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult50"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">엑스퍼트 앤 밀크</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C85-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">엑스퍼트 앤 밀크 C85 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item14 chrisartista plus -->
			<fieldset id="tabs-14" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'J520-KR-ME-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="크리아티스타 플러스 J520 스테인리스 스틸"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult51"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">크리아티스타
									플러스</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'J520-KR-ME-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">크리아티스타 플러스 J520 스테인리스 스틸</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 15 essenga mini  -->
			<fieldset id="tabs-15" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C30-KR-BK-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="에센자 미니 C30 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult52"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C30-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니 C30 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'C30-KR-WH-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="에센자 미니 C30 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult53"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'C30-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니 C30 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D30-KR-BK-KIT'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="에센자 미니 D30 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult54"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D30-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니 D30 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'D30-KR-RE-KIT'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="에센자 미니 D30 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult55"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'D30-KR-RE-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니 D30 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 16 essenga mini and achino -->
			<fieldset id="tabs-16" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKC30-KR-BK'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 블랙, C30 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult56"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3NKC30-KR-BK'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, C30 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKC30-KR-BK'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 화이트, C30 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult57"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3WKC30-KR-BK'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, C30 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKC30-KR-WH'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 블랙, C30 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult58"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3NKC30-KR-WH'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, C30 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKC30-KR-WH'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 화이트, C30 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult59"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3WKC30-KR-WH'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, C30 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-4" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKD30-KR-BK'">
						<label for="product-4"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 블랙, D30 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult60"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3NKD30-KR-BK'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, D30 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-5" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKD30-KR-BK'">
						<label for="product-5"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 화이트, D30 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult61"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3WKD30-KR-BK'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, D30 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-6" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3NKD30-KR-RE'">
						<label for="product-6"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 블랙, D30 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult62"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3NKD30-KR-RE'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 블랙, D30 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-7" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'A3WKD30-KR-RE'">
						<label for="product-7"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code"
						data-name="에센자 미니&amp;에어로치노 화이트, D30 레드"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult63"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">에센자 미니
									&amp; 에어로치노</span>&nbsp;<span data-ng-bind="product.code"
								class="ng-binding">'A3WKD30-KR-RE'</span><br> <span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">에센자 미니&amp;에어로치노 화이트, D30 레드</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 17 essenga lattisia one -->
			<fieldset id="tabs-17" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'F111-KR-WH-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="라티시마 원 F111 실키 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult64"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">라티시마 원</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'F111-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">라티시마 원 F111 실키 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'F111-KR-BK-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="라티시마 원 F111 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult65"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">라티시마 원</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'F111-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">라티시마 원 F111 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->

					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 18 barista -->
			<fieldset id="tabs-18" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'4292VL-KR-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="바리스타 레시피 메이커"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult66"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">바리스타</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'4292VL-KR-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">바리스타 레시피 메이커</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 19 grang latisima -->
			<fieldset id="tabs-19" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'F531-KR-WH-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="그랑 라티시마 F531 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult67"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">그랑 라티시마</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'F531-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">그랑 라티시마 F531 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 20 latisima touch refresh-->
			<fieldset id="tabs-20" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'F521-KR-WH-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="라티시마 터치 리프레쉬 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult68"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">라티시마 터치
									리프레쉬</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'F521-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">라티시마 터치 리프레쉬 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'F521-KR-SI-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="라티시마 터치 리프레쉬 실버"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult69"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">라티시마 터치
									리프레쉬</span>&nbsp;<span data-ng-bind="product.code" class="ng-binding">'F521-KR-SI-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">라티시마 터치 리프레쉬 실버</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!--  item 21 virtuo -->
			<fieldset id="tabs-21" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'GCA1-KR-BK-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="버츄오 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult70"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">버츄오</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'GCA1-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">버츄오 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>
			<!-- item 21 virtuo plus -->
			<fieldset id="tabs-22" class="section-slide"
				data-ng-show="!!selectedRangeId" style="display: none;">

				<legend
					class="registration-machine-grid__legend registration-machine-grid__legend--product">
					사용 중인 머신 색상을 선택해주세요.</legend>

				<div class="registration-machine-grid__legend-step-title">STEP
					2/3: 사용 중인 머신 색상을 선택해주세요.</div>

				<ul id="register-machine-product-list-selection"
					class="machine-matrix product unstyled registration-machine-grid__list--model">

					<!-- ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope"
						style=""><input id="product-0" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'GCB2-KR-WH-KIT'">
						<label for="product-0"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="버츄오 플러스 화이트"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult71"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">버츄오 플러스</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'GCB2-KR-WH-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">버츄오 플러스 화이트</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label></li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-1" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'GCB2-KR-SI-KIT'">
						<label for="product-1"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="버츄오 플러스 실버"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult72"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">버츄오 플러스</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'GCB2-KR-SI-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">버츄오 플러스 실버</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-2" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'GCB2-KR-BK-KIT'">
						<label for="product-2"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="버츄오 플러스 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult73"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">버츄오 플러스</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'GCB2-KR-BK-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">버츄오 플러스 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-3" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'GCB2-KR-MB-KIT'">
						<label for="product-3"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="버츄오 플러스 매트 블랙"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult74"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">버츄오 플러스</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'GCB2-KR-MB-KIT'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">버츄오 플러스 매트 블랙</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
					<li data-ng-repeat="product in products"
						data-ng-class="{last: last($index), 'registration-machine-grid__item--selected': isSelectedProduct(product)}"
						class="pic product registration-machine-grid__item registration-machine-grid__machine registration-machine-grid__item--model ng-scope">

						<input id="product-4" type="radio" name="products"
						class="visually-hidden ng-pristine ng-untouched ng-valid ng-empty"
						data-ng-model="$parent.selectedProductId"
						data-ng-value="product.code"
						data-ng-change="selectProduct(product)" value="'GCB2-KR-MB-KIT2'">
						<label for="product-4"
						class="pic registration-machine-grid__label selectable"
						data-ng-show="product.code" data-name="버츄오 플러스 매트 블랙 &amp; 트래블 머그"
						data-ng-class="{active: isSelectedProduct(product), selectable: isSelectableProduct(product)}">

							<img
							src="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120"
							class="registration-machine-grid__image" alt="" width="120"
							height="120" id="showResult75"
							data-ng-click="clickOnProductLabelImage(product, $index)"
							data-ng-src="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120"
							data-ng-srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120 1x, https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=240 2x, https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=360 3x, https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=480 4x"
							srcset="https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120 1x,https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=240 2x,https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=360 3x,https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=480 4x">

							<span class="name registration-machine-grid__text"> <span
								data-ng-bind="product.range" class="ng-binding">버츄오 플러스</span>&nbsp;<span
								data-ng-bind="product.code" class="ng-binding">'GCB2-KR-MB-KIT2'</span><br>
								<span
								class="description registration-machine-grid__description ng-binding"
								data-ng-bind="product.name">버츄오 플러스 매트 블랙 &amp; 트래블 머그</span>
						</span> <span class="selected ng-hide"
							data-ng-show="isSelectedProduct(product)"></span>
					</label>
					</li>
					<!-- end ngRepeat: product in products -->
				</ul>
			</fieldset>

		</div>
		<script type="text/javascript">
			$(document)
					.ready(
							function() {

								$('#showResult1')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386892259358/M-0131-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '그랑 마에스트리아'

													var pName = '그랑 마에스트리아 티타늄 C520-KR-TI-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult2')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386889703454/M-0099-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = 'U'

													var pName = 'U C50 퓨어 크림 C50-KR-CW-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult3')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = 'U'

													var pName = 'U D50 퓨어 블랙 D50-KR-BK-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult4')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386890096670/M-0101-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = 'U'

													var pName = 'U D50 퓨어 블랙 D50-KR-BK-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult5')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10679892279326/M-0102-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = 'U'

													var pName = 'U D50 퓨어 오렌지 D50-KR-OR-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult6')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386896879646/M-0198-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '유밀크 C55 퓨어크림'

													var pName = 'U D50 퓨어 오렌지 C55-KR-CW-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult7')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12408502779934/M-1157-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시'

													var pName = '픽시 C61 타이탄 C61-KR-TI-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);
												});

								$('#showResult8')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12408495407134/M-1156-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시'

													var pName = '픽시 C61 일렉트릭 레드 C61-KR-RE-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult9')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10831069413406/M-0135-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시'

													var pName = '픽시 C60 다크 브라운 C60-KR-DB-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult10').click(function() {

									var fileImage = '';
									var fileName = '픽시'

									var pName = '픽시 C60 일렉트릭 타이탄 C60-KR-TI-NE';

									$('#ResultStep3').slideToggle(200);
									$('#ta-continue-bottom').show();
									$('#hidden1').val(fileImage);
									$('#hidden2').val(fileName);
									$('#hidden3').val(pName);

								});

								$('#showResult11')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386893045790/M-0137-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시'

													var pName = '픽시 C60 스틸 C60-KR-SS-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});
								$('#showResult12')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392434999326/M-1002-Nespresso-C60-Pixie-Electric-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시'

													var pName = '픽시 C60 일렉트릭 레드 C60-KR-RE-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult13')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858289618974/PixieTitan-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노'

													var pName = '픽시 & 에어로치노 블랙, C61 타이탄 A3NKC61-KR-TI';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult14')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858445824030/PixieTitan-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노'

													var pName = '픽시 & 에어로치노 화이트, C61 타이탄 A3WKC61-KR-TI';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult15')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12855870685214/PixieRed-AeroB-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노';

													var pName = '픽시 & 에어로치노 블랙, C61 일렉트릭 레드 A3NKC61-KR-RE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult16')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12858278739998/PixieRed-AeroW-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노';

													var pName = '픽시 & 에어로치노 화이트, C61 일렉트릭 레드 A3WKC61-KR-RE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$$('#hidden1').val(
															fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult17')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740750417950/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노';

													var pName = '픽시 & 에어로치노 화이트, C60 일렉트릭 레드 C60P-KR-RE-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult18')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481603969054/M-1007-Nespresso-C60-Pixie-Electric-Red-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노';

													var pName = '픽시 & 에어로치노 블랙, C60 일렉트릭 레드 C60P-KR-RE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult19')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392439881758/M-1008-Nespresso-C60-Pixie-Electric-Titan-and-Aeroccino3-Bundle-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '픽시 & 에어로치노';

													var pName = '픽시 C60 에어로치노 팩 (타이탄) C60P-KR-TI';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult20')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 D113 화이트 D113-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult21')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 D113 블랙 D113-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult22')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 C113 체리 레드 C113-KR-CR-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult23')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 C112 체리 레드 C112-KR-CR-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult24')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10837912322078/M-0157-Gabarit-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 C110 파이어 엔진 레드 C110-KR-RE-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult25')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10730696015902/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 D113 화이트 D113-KR-WH-KIT2';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult26')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10830968061982/M-0365-Nespresso-CitiZ-D112-Limousine-Black-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 D113 블랙 D113-KR-BK-KIT2';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult27')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386923913246/M-0368-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈';

													var pName = '시티즈 C113 체리 레드 C113-KR-CR-KIT2';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult28')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈 앤 밀크';

													var pName = '시티즈 앤 밀크 D123 화이트 D123-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult29')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈 앤 밀크';

													var pName = '시티즈 앤 밀크 D123 블랙 D123-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult30')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈 앤 밀크';

													var pName = '시티즈 앤 밀크 D122 블랙 D122-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult31')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386924306462/M-0371-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈 앤 밀크';

													var pName = '시티즈 앤 밀크 D123 블랙 D123-KR-BK-KIT2';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult32')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386925289502/M-0376-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '시티즈 앤 밀크';

													var pName = '시티즈 앤 밀크 D123 화이트 D123-KR-WH-KIT2';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult33')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10392431329310/MACHINES-B2C-NESPRESSO-INISSIA-INISSIA-D40BK-BLACK-022120141557.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아';

													var pName = '이니시아 D40 블랙 D40-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult34')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386903007262/M-0250-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아';

													var pName = '이니시아 C40 루비 레드 C40-KR-RE-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult35')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481594433566/M-0231-KRUPS-INISSIA-INISSIA-XN1001-WHITE-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아';

													var pName = '이니시아 C40 화이트 C40-KR-WH-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult36')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386902450206/M-0247-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아';

													var pName = '이니시아 C40 오렌지 C40-KR-PO-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult37')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386905727006/M-0258-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 블랙, C40 루비 레드 C40P-KR-RE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult38')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10764706873374/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 화이트, C40 루비 레드 C40P-KR-RE-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult39')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906513438/M-0263-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 블랙, D40 블랙 A3NKD40-KR-BK-N ';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult40')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740744421406/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 화이트, D40 블랙 A3WKD40-KR-BK-N ';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult41')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386905071646/M-0256-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 C40 에어로치노팩 스카이블루 C40P-KR-LB';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult42')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386904416286/M-0254-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 블랙, C40 오렌지 C40P-KR-PO';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult43')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906120222/M-0260-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 D40 에어로치노팩 블루베리 블루 D40P-KR-BL';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult44')
										.click(
												function() {

													var fileImage = 'showResult44';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노  화이트, C40 오렌지 C40P-KR-PO-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult45')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 화이트, C40 화이트 C40P-KR-WH-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult46')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386906316830/M-0262-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '이니시아 & 에어로치노';

													var pName = '이니시아 & 에어로치노 블랙, C40 화이트 C40P-KR-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult47')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386920374302/M-0350-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '프로디지오';

													var pName = '프로디지오 C70 타이탄 C70-KR-TI-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult48')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386921947166/M-0358-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '프로디지오 앤 밀크';

													var pName = '프로디지오 앤 밀크, C75 타이탄 C75-KR-TI-NE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult49')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10725540790302/M-0407-Nespresso-Expert-C80-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '엑스퍼트';

													var pName = '엑스퍼트 C80 블랙 C80-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult50')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481600233502/M-0408-Nespresso-Expert-milk-C85-Off-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '엑스퍼트 앤 밀크';

													var pName = '엑스퍼트 앤 밀크 C85 블랙 C85-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult51')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10609688870942/M-0425-Nespresso-Creatista-Plus-Metal-Stainless-Steel-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '크리아티스타 플러스';

													var pName = '크리아티스타 플러스 J520 스테인리스 스틸 J520-KR-ME-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult52')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481383735326/M-0445-Essenza-Mini-Nespresso-C30-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니';

													var pName = '에센자 미니 C30 블랙 C30-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult53')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10715418984478/M-0247-2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니';

													var pName = '에센자 미니 C30 화이트 C30-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult54')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481597186078/M-0451-Essenza-Mini-Nespresso-D30-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니';

													var pName = '에센자 미니 D30 블랙 D30-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult55')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10481370431518/M-0449-Essenza-Mini-Nespresso-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니';

													var pName = '에센자 미니 D30 레드 D30-KR-RE-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult56')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815716286494/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-BLACK-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 블랙, C30 블랙 A3NKC30-KR-BK';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult57')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740614365214/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 화이트, C30 A3WKC30-KR-BK';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult58')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815714058270/ESSENZAMINI-BYKRUPS-2016-THREEQUARTERVIEWAEROCCINOBUNDLE-WHITE-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 블랙, C30 화이트 A3NKC30-KR-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult59')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740040859678/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 화이트, C30 화이트 A3WKC30-KR-WH';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult60')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12061356359710/D30-PianoBlack-AeroB-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 블랙, D30 블랙 A3NKD30-KR-BK';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult61')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12061986357278/D30-PianoBlack-AeroW-Machines-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 화이트, D30 블랙 A3WKD30-KR-BK';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult62')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12815716515870/M-0457-Essenza-Mini-and-Aeroccino-3-Delonghi-D30-Red-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 블랙, D30 레드 A3NKD30-KR-RE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult63')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10740033880094/2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '에센자 미니 & 에어로치노';

													var pName = '에센자 미니 & 에어로치노 화이트, D30 레드 A3WKD30-KR-RE';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult64')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10827652300830/M-0473-LattissimaOneSilkyWhiteNespresso-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '라티시마 원';

													var pName = '라티시마 원 F111 실키 화이트 F111-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult65')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12540700917790/M-0523-LattissimaOne-white-resp-standard-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '라티시마 원';

													var pName = '라티시마 원 F111 블랙 F111-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult66')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10755478487070/Barista-2000x2000-noreflection.png?impolicy=product&amp;imwidth=120';
													var fileName = '바리스타';

													var pName = '바리스타 레시피 메이커 4292VL-KR-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult67')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/12569812172830/Desktop-Standard-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '그랑 라티시마';

													var pName = '그랑 라티시마 F531 화이트 F531-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult68')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10595173203998/M-0490-LattissimaTouchWhite-Nespresso-2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '라티시마 터치 리프레쉬';

													var pName = '라티시마 터치 리프레쉬 화이트 F521-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult69')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10661380620318/M-0491-LattissimaTouchSilver-Nespresso-2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '라티시마 터치 리프레쉬';

													var pName = '라티시마 터치 리프레쉬 실버 F521-KR-SI-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult70')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/10386901073950/M-0239-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '버츄오';

													var pName = '버츄오 블랙 GCA1-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult71')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039784095774/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '버츄오 플러스';

													var pName = '버츄오 플러스 화이트 GCB2-KR-WH-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult72')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039780687902/VertuoPlus-White-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '버츄오 플러스';

													var pName = '버츄오 플러스 실버 GCB2-KR-SI-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult73')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/14039772758046/VertuoPlus-Black-2000x2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '버츄오 플러스';

													var pName = '버츄오 플러스 블랙 GCB2-KR-BK-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult74')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/13980635332638/VMB-standard-2000X2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '버츄오 플러스';

													var pName = '버츄오 플러스 매트 블랙 GCB2-KR-MB-KIT';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

								$('#showResult75')
										.click(
												function() {

													var fileImage = 'https://www.nespresso.com/ecom/medias/sys_master/public/13947681341470/VERTUO-MB-VIP-2000X2000.png?impolicy=product&amp;imwidth=120';
													var fileName = '버츄오 플러스';

													var pName = '버츄오 플러스 매트 블랙 & 트래블 머그 GCB2-KR-MB-KIT2';

													$('#ResultStep3')
															.slideToggle(200);
													$('#ta-continue-bottom')
															.show();
													$('#hidden1')
															.val(fileImage);
													$('#hidden2').val(fileName);
													$('#hidden3').val(pName);

												});

							});
		</script>


		<!--  step3 item 1 -->
		<fieldset data-ng-show="showEditMachineForm" class="section-slide"
			id="ResultStep3" style="display: none; background-color: white;">

			<legend class="visually-hidden"> 사용 중인 머신 정보를 입력해주세요.</legend>

			<div class="registration-machine-grid__legend-step-title">STEP
				3/3: 사용 중인 머신 정보를 입력해주세요.</div>

			<div data-ng-controller="MachineEditCtrl"
				data-machine="{&quot;year&quot;:&quot;2021&quot;,&quot;month&quot;:&quot;06&quot;,&quot;day&quot;:&quot;13&quot;,&quot;sortCity&quot;:0,&quot;sortZip&quot;:0,&quot;sortStoreName&quot;:1,&quot;selectedSort&quot;:&quot;sortnameaes&quot;}"
				data-backend-url="/kr/ko/" data-page-type="registration"
				class="ng-scope">
				<div class="machine-form-container my-machine__container">
					<div class="machine-form-wrapper clearfix">
						<div class="title">

							<div class="my-machine__title">
								<font style="color: black;">고객님의 네스프레소 머신</font>

							</div>
						</div>

						<div
							class="machine-info-img my-machine__img my-machine__img--narrow">

						</div>

						<div class="machine-info-form pull-left my-machine__info">
							<div class="input-group ">
								<div class="input-row">
									<label for="machineRegistrationmachineNumbervalue"
										id="machineSerialLabel"
										class="input-label my-machine__serial-number-label"
										aria-invalid="false" aria-describedby="">머신 시리얼 번호 : </label><input
										id="machineRegistrationmachineNumbervalue"
										name="machineRegistration.machineNumber"
										class="'my-machine__serial-number-input ng-pristine ng-untouched ng-valid ng-empty ng-valid-maxlength"
										data-ng-model="machineRegistration.machineNumber.value"
										type="text" value="" maxlength="20" aria-invalid="false"
										aria-describedby="">
									<button
										class="my-machine__find-machine-number-button popin-trigger"
										data-popin-id="serialHelp" type="button">시리얼 번호는 어디서
										찾을 수 있나요?</button>

								</div>
							</div>
							<fieldset
								class="field-holder large my-machine__purchase-date input-group"
								data-ng-class="{error: !machineRegistration.year.valid}">
								<legend id="purchaseDate" class="w190 legend-label"
									aria-invalid="false" aria-describedby="">머신 구매일* :</legend>
								<div class="my-machine__purchase-date-container">
									<div class="first my-machine__purchase-date-field">
										<label for="machineRegistrationdayvalue"
											class="visually-hidden"> 일</label> <select
											id="machineRegistrationdayvalue"
											name="machineRegistration.day"
											class="selectmenu xxsmall my-machine__purchase-date-field select--expendable-label ng-pristine ng-untouched ng-valid ng-not-empty"
											data-ng-model="machineRegistration.day.value"
											aria-required="true"
											data-ng-class="{error: !machineRegistration.year.valid}"
											aria-invalid="false" aria-describedby=""><option
												value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13" selected="selected">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option></select>
									</div>
									<div class="my-machine__purchase-date-field">
										<label for="machineRegistrationmonthvalue"
											class="visually-hidden"> 월</label> <select
											id="machineRegistrationmonthvalue"
											name="machineRegistration.month"
											class="selectmenu xxsmall my-machine__purchase-date-field select--expendable-label ng-pristine ng-untouched ng-valid ng-not-empty"
											data-ng-model="machineRegistration.month.value"
											aria-required="true"
											data-ng-class="{error: !machineRegistration.year.valid}"
											aria-invalid="false" aria-describedby=""><option
												value="01">1월</option>
											<option value="02">2월</option>
											<option value="03">3월</option>
											<option value="04">4월</option>
											<option value="05">5월</option>
											<option value="06" selected="selected">6월</option>
											<option value="07">7월</option>
											<option value="08">8월</option>
											<option value="09">9월</option>
											<option value="10">10월</option>
											<option value="11">11월</option>
											<option value="12">12월</option></select>
									</div>
									<div class="my-machine__purchase-date-field">
										<label for="machineRegistrationyearvalue"
											class="visually-hidden"> 연도</label> <select
											id="machineRegistrationyearvalue"
											name="machineRegistration.year"
											class="selectmenu xxsmall my-machine__purchase-date-field select--expendable-label ng-pristine ng-untouched ng-valid ng-not-empty"
											data-ng-model="machineRegistration.year.value"
											aria-required="true"
											data-ng-class="{error: !machineRegistration.year.valid}"
											aria-invalid="false" aria-describedby=""><option
												value="2021" selected="selected">2021</option>
											<option value="2020">2020</option>
											<option value="2019">2019</option>
											<option value="2018">2018</option>
											<option value="2017">2017</option>
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option></select>
									</div>
								</div>


								<!-- ngIf: !machineRegistration.year.valid -->

							</fieldset>

							<div class="pull-left first input-group"
								data-ng-class="{error: !machineRegistration.storeType.valid}">

								<div class="input-row">
									<label for="machineRegistrationstoreTypevalue"
										id="storeTypeLegend"
										class="w190 pull-left multi-line machineSelection-how-label my-machine__dropdown-label"
										aria-invalid="false" aria-describedby=""> 머신 구입처*</label> <select
										id="machineRegistrationstoreTypevalue"
										name="machineRegistration.storeType"
										class="selectmenu regular my-machine__location-dropdown select--separate-label ng-pristine ng-untouched ng-valid ng-empty"
										data-ng-model="machineRegistration.storeType.value"
										aria-required="true"
										data-ng-class="{error: !machineRegistration.storeType.valid}"
										aria-invalid="false" aria-describedby=""><option
											value="" selected="selected">선택해주세요</option>
										<option value="onInternet">온라인으로 구매</option>
										<option value="isGift">선물 받음</option>
										<option value="other">기타</option></select>
								</div>
								<!-- ngIf: !machineRegistration.storeType.valid -->

							</div>

							<input type="hidden" name="_eventId" data-ng-value="registerType"
								style="" autocomplete="off" value="haveMachine"> <input
								id="machineRegistrationmachineIdvalue"
								name="machineRegistration.machineId"
								data-ng-value="machineRegistration.machineId.value"
								type="hidden" style="" autocomplete="off" aria-invalid="false"
								aria-describedby="" value="C520-KR-TI-NE"><input
								id="machineRegistrationstoreIdvalue"
								name="machineRegistration.storeId"
								data-ng-value="machineRegistration.storeId.value" type="hidden"
								style="" autocomplete="off" disabled="">
							<div id="serialHelp"
								class="popin-page learnmore display-none my-machine__serial-helper responsive-popin">

								<div class="content">
									<div id="block-8807213651445" class="free-html" data-label="">
										<div style="padding: 0 80px 40px 80px; color: #000;">
											<div
												style="background: url('/mosaic/_ui/img/popin-title-sep.png') bottom no-repeat; line-height: 22px; margin: 0 0 15px 0; padding: 0 0 25px 0; text-align: center;">
												<p style="font-size: 20px; font-weight: bold;">머신 시리얼
													번호를 어디서 찾을 수 있나요?</p>
											</div>
											<div class="popin-vscroll">
												<p style="font-size: 13px;">머신 시리얼 번호는 19자리의 숫자와 알파벳으로
													조합되어 있습니다. 컵 받침대 또는 머신 뒷면에 제거 가능한 스티커 형태로 부착 되어 있습니다.</p>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="machine-info-img pull-right my-machine__img"></div>
					</div>

				</div>
			</div>



		</fieldset>
		<script type="text/javascript">
										  //step3
										  $(document).ready(function(){
										  
										
										  $('#brewMachine').hide();
										  $('#ta-continue-bottom').hide();
											
											$('#noMachine').click(function(){
												
												
												$('#showStep1').slideUp();
												$('#brewMachine').slideToggle(200);
												$('#ta-continue-bottom').show();
											});
										  
										  });
										  
										  </script>
		<!-- no machine, choose technology -->
		<div id="select-technology" class="section-slide"
			data-ng-show="showSelectTechnology" style="background-color: white;">
			<div class="select-technology-form">
				<fieldset class="clearfix" id="brewMachine" style="display: none;">
					<legend class="select-range-bar registration-machine-grid__legend">
						<span class="select-range-title">추출 방식에 따른 머신 타입을 선택해주세요</span>
					</legend>
					<div class="select-technology-buttonset select-technology__items">
						<input id="ta-register-machine-technology-CLA"
							name="machineTechnology" data-ng-model="preferredTechnology"
							data-ng-change="selectTechnology(preferredTechnology)"
							class="visually-hidden select-technology__item-checkbox ng-valid ng-not-empty ng-dirty ng-touched"
							data-label="original" type="radio" value="CLA" style=""><label
							class="first-button ui-button select-technology__item-label"
							for="ta-register-machine-technology-CLA" role="button"
							aria-disabled="false">
							<div class="image select-technology__item-container">
								<a href="/nespresso/success.action"><img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10909503619102/MachineTechnology-registrationChoiceUnselected-original.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=360"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10909503619102/MachineTechnology-registrationChoiceUnselected-original.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=360 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10909503619102/MachineTechnology-registrationChoiceUnselected-original.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=720 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10909503619102/MachineTechnology-registrationChoiceUnselected-original.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=1080 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10909503619102/MachineTechnology-registrationChoiceUnselected-original.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=1440 4x"
									alt="" class="select-technology__item-img" width="100%">
									<span class="select-technology__item-description">
										ORIGINAL 테크놀로지 선택하기</span></a>
							</div>
						</label> <input id="ta-register-machine-technology-VER"
							name="machineTechnology" data-ng-model="preferredTechnology"
							data-ng-change="selectTechnology(preferredTechnology)"
							class="visually-hidden select-technology__item-checkbox ng-valid ng-not-empty ng-dirty ng-touched"
							data-label="vertuo" type="radio" value="VER" style=""><label
							class="ui-button select-technology__item-label"
							for="ta-register-machine-technology-VER" role="button"
							aria-disabled="false">
							<div class="image select-technology__item-container">
								<a href="/nespresso/virtuoSuccess.action"><img
									src="https://www.nespresso.com/ecom/medias/sys_master/public/10909503684638/MachineTechnology-registrationChoiceUnselected-vertuo.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=360"
									srcset="https://www.nespresso.com/ecom/medias/sys_master/public/10909503684638/MachineTechnology-registrationChoiceUnselected-vertuo.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=360 1x,https://www.nespresso.com/ecom/medias/sys_master/public/10909503684638/MachineTechnology-registrationChoiceUnselected-vertuo.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=720 2x,https://www.nespresso.com/ecom/medias/sys_master/public/10909503684638/MachineTechnology-registrationChoiceUnselected-vertuo.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=1080 3x,https://www.nespresso.com/ecom/medias/sys_master/public/10909503684638/MachineTechnology-registrationChoiceUnselected-vertuo.jpg?impolicy=registrationTechChoiceMediumLarge&amp;imwidth=1440 4x"
									alt="" class="select-technology__item-img" width="100%">
									<span class="select-technology__item-description-vertuo">
										VERTUO 테크놀로지 선택하기</span></a>
							</div>
						</label> <input id="ta-register-machine-technology-unknowCode"
							name="machineTechnology" data-ng-model="preferredTechnology"
							data-ng-change="selectTechnology(preferredTechnology)"
							class="visually-hidden select-technology__item-checkbox ng-valid ng-not-empty ng-dirty ng-touched ng-valid-parse"
							type="radio" value="unknowCode" style=""><label
							class="ui-button select-technology__item-label"
							for="ta-register-machine-technology-unknowCode" role="button"
							aria-disabled="false">
							<div class="image select-technology__item-container">
								<img
									src="https://www.nespresso.com/_ui/img/register/registration_DontKnow.jpg"
									class="select-technology__item-img" width="100%"> <span
									class="select-technology__item-description"> 잘 모르겠습니다</span>
							</div>
						</label>
					</div>
				</fieldset>

				<div id="select-technology-warning" class="popin-page">
					<div class="content">
						<h3 class="popin-title">에러</h3>

						<div class="popin-content">
							<h4>머신 시스템의 종류를 선택 후 다음 단계로 진행해주세요.</h4>
							<p>머신 시스템 정보를 입력해주세요.</p>
						</div>
					</div>

					<button type="button" id="close-technology-warning"
						class="btn-container btn button-primary   popin-close select-technology__continue-button">
						<span class="button__content"> </span>
					</button>
				</div>
			</div>
		</div>

		<!-- no machine, choose technology -->

		<div class="registration-footer clearfix registration-machine__footer"
			style="background-color: white;">

			<button type="submit" id="ta-continue-bottom" value=""
				class="btn-container btn button-primary   my-machine-save set-session-force-login 
										registration-machine__button"
				aria-disabled="true" data-popin-id="select-technology-warning"
				style="display: none;">
				<span class="button__content"> 계속하기</span>
			</button>

		</div>
	</div>




</body>
</html>