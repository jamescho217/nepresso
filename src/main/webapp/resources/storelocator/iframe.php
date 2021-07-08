<!DOCTYPE html>
<html lang="kr">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <title>Nespresso</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="robots" content="noindex,nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, user-scalable=no">
    <meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
    <meta name="format-detection" content="telephone=no">

    <!--<meta http-equiv="Content-Security-Policy" content="default-src *; script-src 'self' 'unsafe-inline' 'unsafe-eval' *; style-src 'self' 'unsafe-inline' *; img-src * data: 'unsafe-inline'">
-->
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />

    <script src="js/jquery-3.2.1.min.js"></script>
    <script>
        window.iFrameResizer = {
            heightCalculationMethod: function(){
                var defaultIframeSize = 900;
                var size = $('#wrapper').height();
                size += $('#poiExplanation').height();

                if(size > defaultIframeSize){
                    return size;
                }
                return defaultIframeSize;
            }
        }
    </script>
    <script src="js/iframeSizer.contentWindow.min.js"></script>
    <script>
        var breakpointMobile = 1025;
        var _USERIP = "127.0.0.1";
        var cluster_gridsize = 30 || 40;
        var cluster_maxZoom = 14 || 16;
        var map_minZoom = 3 || 5;
        var label_maxSize = 32 || 32;
        var poi_minZoom = 15;
        var geoloc_zoom = 15;
        var debug = 0;
        var IP_geoloc_activated = 1;
            </script>


    <link href="assets/css/styles.css?rev=62" rel="stylesheet" type="text/css" />
    <link href="assets/css/poi_explanation.css?rev=62" rel="stylesheet" type="text/css" />

    <link href="css/v4.css?rev=62" rel="stylesheet" type="text/css" />
    <link href="css/a11y.css?rev=62" rel="stylesheet" type="text/css" />
</head>
<body class=" market_kor">

    
    <div class="loaderV4"></div>

    <div id="wrapper" class="main">
        <section class="section-map">

            <div id="map"></div>

            <figure class="img-intro"></figure>

            <div class="content-intro">
                <div class="grid">
                    <div class="grid__row">
                        <div class="grid__col-xxs--12">
                            <div class="subtitle">매장 찾기</div>
                            <div class="title">이용 목적에 맞는 매장 찾기</div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="a11y-tabpanel box-locator" role="application" aria-labelledby="shopsTabListDesc">
                <div id="storeResultsAlert" class="a11y-hidden shops" aria-live="assertive" aria-relevant="text"></div>
                <div id="shopsTabListDesc" class="a11y-hidden" aria-hidden="true">필터를 탭하여, 원하시는 조건에 맞는 매장을 검색해보세요.</div>

                            <div class="tabs">
                    <ul id="shops" role="tablist" >
                        <li id="storeTab-boutique" class="boutique a11y-tabpanel-tab" role="tab" aria-controls="storePanel-boutique" aria-selected="true" tabindex="0">
                            <h2>
                                <a href="javascript:void(0);" data-type="boutique" tabindex="-1" class="active">
                                    <span class="icon">
                                        <img src="assets/svg/layout/capsules.svg" alt="">
                                    </span>
                                    <span class="label">캡슐 구매</span>
                                </a>
                            </h2>
                        </li>
                        <li id="storeTab-point_of_sale" class="point_of_sale a11y-tabpanel-tab" role="tab" aria-controls="storePanel-point_of_sale" aria-selected="false" tabindex="-1">
                            <h2>
                                <a href="javascript:void(0);" data-type="point_of_sale" tabindex="-1">
                                    <span class="icon">
                                        <img src="assets/svg/layout/machines.svg" alt="">
                                    </span>
                                    <span class="label">머신 구매</span>
                                </a>
                            </h2>
                        </li>
                                                                <li id="storeTab-recycling" class="recycling a11y-tabpanel-tab" role="tab" aria-controls="storePanel-recycling" aria-selected="false" tabindex="-1">
                            <h2>
                                <a href="javascript:void(0);" data-type="recycling" tabindex="-1">
                                    <span class="icon">
                                                                                <img src="assets/svg/layout/recycling.svg" alt="">
                                    </span>
                                   <span class="label">캡슐 재활용</span>
                                </a>
                            </h2>
                        </li>
                                        </ul>
                </div>
                            <div id="search" class="form-search ">
                    <div class="a11y-hidden" id="locationExplanation">검색창에 원하시는 지역을 입력해보세요. 위 아래 화살표를 이용하여, 추천 지역을 확인하실 수 있습니다. 지역을 선택하신 후, 커서를 옮겨 매장 상세 정보를 확인하실 수 있으며, 운영 시간도 함께 확인 가능 합니다.</div>
                    <form id="locationForm" role="search" action="." method="get" accept-charset="UTF-8">
                        <div class="location">
                            <label for="location" class="a11y-hidden">주소, 우편번호, 시/도</label>
                            <input id="location" class="form-text" type="text" value="" tabindex="1" placeholder="주소, 우편번호, 시/도" aria-describedby="locationExplanation"/>
                            <button class="geoloc-btn" tabindex="2" type="button" aria-label="내 위치에서 가까운 매장 찾기" ></button>
                            <button class="clear-btn" tabindex="-1" type="button" aria-hidden="true"></button>
                                                    </div>

                                                <div class="trigger-options">
                            <a href="javascript:void(0);" tabindex="3" aria-label="상세 검색 열기 또는 닫기. 검색창 닫힘 상태" class="" >
                                <i class="icon icon_options">
                                    <svg viewBox="0 0 17 18" class="svg_options">
                                        <use xlink:href="./assets/svg/sprite.svg#svg-options"></use>
                                        <use xlink:href="#svg-options"></use>
                                    </svg>
                                </i>
                            </a>
                            <div id="filters" class="list-options">
                                <ul aria-labelledby="demo">
                                    <li class="vis""><input type="checkbox" class="form-checkbox" value="demo" name="filters[]" id="flt-demo"vis" /><label class="demo" for="flt-demo" tabindex="4">무료 커피 시음</label></li><li class=""><input type="checkbox" class="form-checkbox" value="pickup" name="filters[]" id="flt-pickup" /><label class="pickup" for="flt-pickup" tabindex="5">부티크 직접 수령</label></li><li class=""><input type="checkbox" class="form-checkbox" value="wifi" name="filters[]" id="flt-wifi" /><label class="wifi" for="flt-wifi" tabindex="6">WiFi</label></li><li class="vis""><input type="checkbox" class="form-checkbox" value="recycling" name="filters[]" id="flt-recycling"vis" /><label class="recycling" for="flt-recycling" tabindex="7">재활용 캡슐 수거 (B2C)</label></li><li class=""><input type="checkbox" class="form-checkbox" value="wheelchair" name="filters[]" id="flt-wheelchair" /><label class="wheelchair" for="flt-wheelchair" tabindex="8">휠체어 진입 가능</label></li><li class=""><input type="checkbox" class="form-checkbox" value="cube" name="filters[]" id="flt-cube" /><label class="cube" for="flt-cube" tabindex="9">N/A</label></li><li class=""><input type="checkbox" class="form-checkbox" value="appointment" name="filters[]" id="flt-appointment" /><label class="appointment" for="flt-appointment" tabindex="10">N/A</label></li><li class=""><input type="checkbox" class="form-checkbox" value="b2b" name="filters[]" id="flt-b2b" /><label class="b2b" for="flt-b2b" tabindex="11">재활용 캡슐 수거 (B2B)</label></li><li class=""><input type="checkbox" class="form-checkbox" value="npoint" name="filters[]" id="flt-npoint" /><label class="npoint" for="flt-npoint" tabindex="12">filter_npoint</label></li>                                </ul>
                            </div>
                        </div>
                                                <button type="submit" class="form-submit" id="btnSearch" tabindex="4"><span>검색</span></button>
                    </form>
                </div>

                            <div id="storePanel-boutique" class="a11y-tabpanel-panel shops" role="tabpanel" aria-labelledby="storeTab-boutique">
                    <h3 class="a11y-tabpanel-label"><i>네스프레소</i> 부티크</h3>
                                    <div id="main" role="main">
                        <div id="storeResultDesc" class="a11y-hidden">탭하여 매장 리스트를 확인하고 선택하실 수 있습니다.</div>
                        <div id="results">
                            <div class="results-header nb-shops" id="storeResultsHeader" aria-hidden="true">
                                <span>0</span> 검색 결과                            </div>
                            <div class="results-empty">가장 가까운 <i>네스프레소</i> 매장을 찾아 보세요</div>
                            <div class="results-ctn vscroll">
                                <ul id="store-locator-results" aria-labelledby="storeResultsHeader storeResultDesc"></ul>
                            </div>
                            <div class="holder"><a></a></div>
                        </div>
                    </div>
                                </div>
                            <div id="storePanel-point_of_sale" class="a11y-tabpanel-panel shops" role="tabpanel" aria-labelledby="storeTab-point_of_sale">
                    <h3 class="a11y-tabpanel-label">판매처</h3>
                                </div>
                            <div id="storePanel-pick_up_point" class="a11y-tabpanel-panel shops" role="tabpanel" aria-labelledby="storeTab-pick_up_point">
                    <h3 class="a11y-tabpanel-label">직접 수령 지점</h3>
                                </div>
                            <div id="storePanel-recycling" class="a11y-tabpanel-panel shops" role="tabpanel" aria-labelledby="storeTab-recycling">
                    <h3 class="a11y-tabpanel-label">재활용 캡슐 수거</h3>
                                </div>
            
                <div class="shop-detail item-details StoreDetail" role="dialog" tabindex="-1"></div>
            </div><!-- .a11y-tabpanel -->
        </section>
    </div>

        <script type="text/javascript">
        var nespresso = {"i18n":{"more_info":"\uc790\uc138\ud788 \ubcf4\uae30","openning_hours":"OPEN","store_directions_cta":"\uae38\ucc3e\uae30","store_phonecall_cta":"\uc804\ud654","no_store_found":"\uac80\uc0c9 \uacb0\uacfc\uac00 \uc5c6\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694","please_refine_query":"\uc815\ud655\ud55c \uc2dc\/\ub3c4 \ub610\ub294 \uc6b0\ud3b8\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc138\uc694","loading":"\ub85c\ub529","print":"\uc778\uc1c4","service_wifi":"WiFi","service_recycling":"\uc7ac\ud65c\uc6a9 \ucea1\uc290 \uc218\uac70 (B2C)","service_recycling_b2b":"\uc7ac\ud65c\uc6a9 \ucea1\uc290 \uc218\uac70 (B2B)","service_pickup":"\uc9c1\uc811 \uc218\ub839 \uc9c0\uc810","service_demo":"\ubb34\ub8cc \ucee4\ud53c \uc2dc\uc74c","service_wheelchair":"\ud720\uccb4\uc5b4 \uc9c4\uc785 \uac00\ub2a5","service_cube":"N\/A","service_npoint":"service_npoint","service_appointment":"N\/A","label_result":"\uac80\uc0c9 \uacb0\uacfc","label_results":"\uac80\uc0c9 \uacb0\uacfc","label_public_holidays":"* \uc6b4\uc601 \uc2dc\uac04\uc740 \ubc95\uc815 \uacf5\ud734\uc77c\uc5d0 \ub530\ub77c \ub2ec\ub77c\uc9c8 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","label_directions":"\uae38 \ucc3e\uae30","label_phone":"\uc804\ud654\ubc88\ud638 : ","aria_label_capabilities":"\uc218\uc6a9 \uc778\uc6d0","aria_label_get_direction":"&quot;\uae38 \ucc3e\uae30&quot; \ubc84\ud2bc\uc744 \ud074\ub9ad \ud558\uc2dc\uba74 \uc0c8 \ucc3d\uc5d0 \uc548\ub0b4\uac00 \uc81c\uacf5 \ub429\ub2c8\ub2e4.","aria_label_close_detail":"\uc0c1\uc138 \ub9e4\uc7a5 \uc815\ubcf4\ucc3d \ub2eb\uae30","aria_live_searching":"\ub9e4\uc7a5\uc744 \ucc3e\ub294 \uc911\uc785\ub2c8\ub2e4. \uc7a0\uc2dc\ub9cc \uae30\ub2e4\ub824 \uc8fc\uc138\uc694.","aria_live_found":"%\uac1c\uc758 \ub9e4\uc7a5\uc774 \uc8fc\ubcc0\uc5d0 \uc788\uc2b5\ub2c8\ub2e4.","aria_live_noresults":"\ud604\uc7ac \uc704\uce58\uc5d0 \ub9de\ub294 \uac80\uc0c9 \uacb0\uacfc\uac00 \uc5c6\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.","aria_label_filters_button_open":"\uc0c1\uc138 \uac80\uc0c9 \uc5f4\uae30 \ub610\ub294 \ub2eb\uae30. \uac80\uc0c9\ucc3d \uc5f4\ub9bc \uc0c1\ud0dc","aria_label_filters_button_close":"\uc0c1\uc138 \uac80\uc0c9 \uc5f4\uae30 \ub610\ub294 \ub2eb\uae30. \uac80\uc0c9\ucc3d \ub2eb\ud798 \uc0c1\ud0dc"},"country":"KOR","lang":"KR","open":false,"default_lng":127.846069,"default_lat":36.474307,"default_zoom":6,"google_directions":"https:\/\/maps.google.co.kr\/maps","google_lang":"ko","limit_autocomplete_country":"kr","limit_autocomplete":true};
    </script>

    <script type="text/javascript" src="js/gmap_style.js?rev=62"></script>
    <script type="text/javascript" src="js/modernizr.custom.69029.js?rev=62"></script>
    <script type="text/javascript" src="//maps.google.co.kr/maps/api/js?key=AIzaSyD9QAUJ_JxOVwqbBZgUJ7cB4_FAcsZnPBs&v=3.40&libraries=places,geometry&language=ko"></script>
    <script type="text/javascript" src="js/plugins.js?rev=62"></script>
    <script type="text/javascript" src="js/markerclustererplus.min.js?rev=62"></script>
    <script type="text/javascript" src="js/nespresso.tools.js?rev=62"></script>
    <script type="text/javascript" src="js/script.js?rev=62"></script>
    <script type="text/javascript" src="js/a11y.js?rev=62"></script>
    <script type="text/javascript" src="assets/js/custom.js?rev=62"></script>
 <script type="text/javascript"  src="/rlPcvUW4DQ/Nl0z/C21HaL/m11acDht9D5a/JhFjQxRXaw/T1IR/V3RIexo"></script></body>
</html>
