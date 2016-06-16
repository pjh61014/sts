<%@page import="product.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=940" />
<?xml version="1.0" encoding="UTF-8" ?>

<!-- *Title -->
<title>Fuji Xerox</title>
<!-- 타이틀을 변경 하고 싶을 경우 include 위에 title태그를 사용하면 됨. -->
<!-- Title -->

<!-- *Css -->
<!-- 
<link type="text/css"
	href="../../include/script/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css"
	rel="stylesheet" />
<link type="text/css"
	href="../../include/script/jqgrid/css/ui.jqgrid.css" rel="stylesheet" />
* treegrid에 css입힘...jqgrid 디자인에는 이게 필요?

<link type="text/css"
	href="../../include/script/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css"
	rel="stylesheet" />
<link type="text/css"
	href="../../include/script/jquery-ui-1.10.3.custom/development-bundle/themes/base/jquery.ui.all.css"
	rel="stylesheet" />
<link type="text/css"
	href="../../include/script/jquery-ui-1.10.3.custom/development-bundle/demos/demos.css"
	rel="stylesheet" /> -->


<link type="text/css" href="/minishop/common/css/master.css"
	rel="stylesheet" media="screen,print" />
<link type="text/css" href="/minishop/common/css/print.css" rel="stylesheet"
	media="print" />
<link type="text/css" href="/minishop/common/css/mall.css" rel="stylesheet"
	media="screen,print" />




<style>
A.applink:hover {
	border: 2px dotted #DCE6F4;
	padding: 2px;
	background-color: #ffff00;
	color: green;
	text-decoration: none
}

A.applink {
	border: 2px dotted #DCE6F4;
	padding: 2px;
	color: #2F5BFF;
	background: transparent;
	text-decoration: none
}

A.info {
	color: #2F5BFF;
	background: transparent;
	text-decoration: none
}

A.info:hover {
	color: green;
	background: transparent;
	text-decoration: underline
}

#sky {
	position: absolute;
	width: 100px;
	left: 50%;
	top: 150px;
	margin-left: 400px;
	background: #ffffff;
	border: solid #ccc;
	height: 200px;
	padding: 30px
}
</style>
<script src="//code.jquery.com/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	$(function() {
		var cssTop = parseInt($("#sky").css("top"));
		$(window).scroll(function() {
			var position = $(window).scrollTop();
			$("#sky").stop().animate({
				"top" : position + cssTop + "px"
			}, 500);
		});
	});
</script>

</head>
<body>

	<div id="header"></div>
	<!-- /header -->
	<hr />

	<!-- content/-->


	<!-- lyt-main/ -->
	<div class="lyt-main">
		<!-- title -->
		<h2></h2>
		<div class="goodsDetailWrap">
			<div class="leftWrap">
				<!---------------------- 상품사진  ----------------------->
				<div class="photoWrap">
					<div class="photo">
						<!-- 메인사진 -->
						<a href="#"><img
							src="/minishop/images/product/bottom_image2.jpg"
							alt="썸이미지" /></a>
					</div>
					<div class="zoomBtn">
						<!-- 확대  -->
						<a href="#" onclick="imageZoom( '918' );"><img
							src="/minishop/images/btn_zoom.gif" alt="확대" /></a>
					</div>
				</div>
			</div>
			<!-- leftWrap END-->

			<div class="rightWrap">
				<form name="frm" method="post" action="">
					<!-------------------------- 오른쪽 상품 가격 기타 정보 ------------------------>
					<dl class="goodsDetail">
						<!-- 상품 정보 -->

						<!-- 가격정보처리 -->















						<!-- 가격정보처리 -->
						<dt>소비자가</dt>
						<dd>
							원
						</dd>

						<dt>판매가</dt>
						<dd>
							원 [ 적립금
							
							원 ]
						</dd>









					</dl>

					<dl class="goodsDetail">
						<dt>공급사</dt>
						<dd>자바나라</dd>
					</dl>

					<dl class="goodsDetail" id="defaultDl">
						<dt>상품코드</dt>
						<dd></dd>

						<dt>규격</dt>
						<dd>standard</dd>

						<dt>단위/최소구매단위</dt>
						<dd>1EA EA</dd>

						<dt>원산지/제조사</dt>
						<dd>한국 /</dd>

						<!-- 											<dt>배송정보</dt> -->
						<!-- 												<dd>무료 배송상품</dd> -->

						<dt>주문수량</dt>
						<!------------------ 상품상세 일반형  ---------------------->

						<dd>
							<!-- 상품 수량 조절 영역-->
							<div class="gCnt">
								<input type="text" name="v_prbuyea" value="1"
									style="width: 35px;" title="수량입력칸" onchange="eaChange( this );" />
								<input type="hidden" name="h_prcode"
									value="G4042_F0002_X0004_K0040" /> <input type="hidden"
									name="h_prname" value="FXK-UTM V300" /> <input type="hidden"
									name="h_prmoney" value="8800000" /> <input type="hidden"
									name="h_prstock" value="10000" /> <input type="hidden"
									name="h_prminbuyea" value="1" />
							</div>
							<div class="btns">
								<a href="#" onclick="eaUp( this, 1 ); return false;"><img
									src="/minishop/images/b_up.gif" alt="증가" class="al" /></a> <a href="#"
									onclick="eaUp( this, -1 ); return false;"><img
									src="/minishop/images/b_down.gif" alt="감소" class="al" /></a>
							</div>
						</dd>




						<div class="delBtn">
							<a href="#" onclick="optionAdd( this, 0 ); return false;"> <img
								src="/minishop/images/btn_icon_plus.gif" alt="추가" />
							</a>
						</div>



						<!------------------ 상품상세 일반형  끝 ---------------------->


						<!-- *선택옵션 -->


						<!-- *입력옵션 -->


					</dl>

					<!-- *옵션추가영역 -->
					<div id="optionAdd"></div>
					<!-- *옵션추가영역 -->

					<dl class="goodsDetail">

						<div class="optionGoods h50 fr">
							<span id="v_prtotmoney" class="sale fl">0 </span><span
								class="sale02 fnt20">원</span>
						</div>


						<!------------------ 상품상세 일반형 끝 ---------------------->
					</dl>

					<ul class="btnArea mgt20">
						<!-- 구매버튼 -->

						<li><a href="#" onclick="dialogOpen('N'); return false;"><img
								src="/minishop/images/btnm_nowBuy.gif" alt="바로구매" /></a></li>
						<li class="marL07"><a href="#"
							onclick="basketIn('N'); return false;"><img
								src="/minishop/images/btnm_cart.gif" alt="장바구니" /></a></li>
						<li class="fl_right marL07"><a href="#"
							onclick="history.back();"><img
								src="/minishop/images/btnm_list.gif" alt="목록" /></a></li>
						<li class="fl_right"><a href="#"
							onclick="productWishIn( 'G4042_F0002_X0004_K0040', 'N' );return false;"><img
								src="/minishop/images/btnm_wish.gif" alt="위시리스트" /></a></li>
						<li class="fl_right"><a
							href="/minishop/proread.do?prdno=&action=UPDATE">업데이트</a></li>

					</ul>
				</form>
			</div>
			<!-- rightWrap : 오른쪽 상품정보 END-->
		</div>
		<!-- goodsDetailWrap : 상품상세정보 전체 END-->

		<img src="/minishop/images/product/bottom_image2.jpg"
			alt="썸이미지" />
		<div id="sky">
			<img src="/minishop/images/product/bottom_image2.jpg"
			alt="썸이미지" width="50px" height="50px" />
		</div>
</body>
</html>


