//채팅창 열기/닫기

 
//채팅창 활성화
$(document).ready(function() {
	$("#accept_legal_terms").click(function(){
		var chk = $(this).is(":checked");
		var fname = $("#first_name").val();
		var lname = $("#last_name").val();
		var email = $("#email").val();
		
		if(chk && fname && lname && email){
			$("#chatReq").attr("class","nlc-bt nlc-bt-main");
		}else{
			$("#chatReq").attr("class","nlc-bt nlc-bt-main is-disabled");
		}
	});
});

// 로그인창 확장
var result = 1;

$(document).ready(function(){
	$(document).mousedown(function( e ){
		if( $("#loginDis").is(":visible") ) {
			$("#loginDis").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
					
				} else {
					$(this).hide();							
					$('#ta-login-dropdown--not-logged').attr('class','LoginDropdownButton');
					$('#overlayDis').css('display','none');
					
				}
			});
		}
	});	
	
	$('#ta-login-dropdown--not-logged').click(function(){
			
			if($('#loginDis').is(':visible')) {
			
				$('#ta-login-dropdown--not-logged').attr('class','LoginDropdownButton');
				$('#overlayDis').css('display','none',200);
				
			}else{	
				
				$('#loginDis').show(200);
				$('html').attr('class','has-overlay');
				$('body').attr('class','test-dbp livechat-collapsed has-overlay');
				$('#ta-login-dropdown--not-logged').attr('class','LoginDropdownButton LoginDropdownButton--open');
				$('#overlayDis').show(200);
				
			}
	});
});

//장바구니 확장
$(document).ready(function(){
	$(document).mousedown(function( e ){
		if( $("#miniBasketDis").is(":visible") ) {
			$("#miniBasketDis").each(function(){
				var l_position = $(this).offset();
				l_position.right = parseInt(l_position.left) + ($(this).width());
				l_position.bottom = parseInt(l_position.top) + parseInt($(this).height());

				if( ( l_position.left <= e.pageX && e.pageX <= l_position.right )
					&& ( l_position.top <= e.pageY && e.pageY <= l_position.bottom ) ) {
				} else {
					$(this).hide();
					$('#ta-mini-basket__open').removeClass('MiniBasketButton MiniBasketButton--open');				
					$('#ta-mini-basket__open').addClass('MiniBasketButton');		
					$('#overlayDis').css("display","none");
				}
			});
		}
	});
	
	$('#ta-mini-basket__open').click(function(){
		
		$(this).addClass('#MiniBasketButton MiniBasketButton--open');
		
		$('#miniBasketDis').show(500);
			if($('#miniBasketDis').is(':visible')) {
				$('#overlayDis').show(500);
			}else{				
				$('#overlayDis').hide(500);
			}		

	});
});
//장바구니 닫기버튼
$(document).ready(function(){
	
	$('#ta-mini-basket__close').click(function(){
		$('#miniBasketDis').hide(500);		
		$('#ta-mini-basket__open').attr('class','MiniBasketButton');		
		$('#overlayDis').hide(500);
	});		
}); 

//메뉴바 확장
$(document).ready(function(){
	
	$('div[id^="menuDis-"]').hide();	
		
	$('#menubarDis-'+1).mouseenter(function(){		
		$('#menuDis-'+1).slideToggle(200);		
	});
	$('#menubarDis-'+1).mouseleave(function(){		
		$('#menuDis-'+1).hide();		
	});
	
	$('#menubarDis-2').mouseenter(function(){		
		$('#menuDis-2').slideToggle(200);		
	});	
	$('#menubarDis-2').mouseleave(function(){		
		$('#menuDis-2').hide();		
	});
	
	$('#menubarDis-3').mouseenter(function(){		
		$('#menuDis-3').slideToggle(200);		
	});	
	$('#menubarDis-3').mouseleave(function(){		
		$('#menuDis-3').hide();		
	});
	
	$('#menubarDis-4').mouseenter(function(){		
		$('#menuDis-4').slideToggle(200);		
	});	
	$('#menubarDis-4').mouseleave(function(){		
		$('#menuDis-4').hide();		
	});
	
	$('#menubarDis-5').mouseenter(function(){		
		$('#menuDis-5').slideToggle(200);		
	});	
	$('#menubarDis-5').mouseleave(function(){		
		$('#menuDis-5').hide();		
	});
	
	$('#menubarDis-6').mouseenter(function(){		
		$('#menuDis-6').slideToggle(200);		
	});
	$('#menubarDis-6').mouseleave(function(){		
		$('#menuDis-6').hide();		
	});	

	$('#menubarDis-7').mouseenter(function(){		
		$('#menuDis-7').slideToggle(200);		
	});
	$('#menubarDis-7').mouseleave(function(){		
		$('#menuDis-7').hide();		
	}); 	
});

