<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="UTF-8">
		<title>${info.title}</title>
		
		<c:import url="../../template/bootstrap.jsp"></c:import>
		<link rel="stylesheet" href="/css/common.css">
		<link rel="stylesheet" href="/css/reward/second-navbar.css">
		<link rel="stylesheet" href="/css/reward/select.css">
		
		<style type="text/css">
			
			.container{
				width: 70%;
				margin-top: 2rem;
				padding: 0px;
			}
			
			.contents-area{
				display: inline-block;
				padding: 2rem;
			}
			
			.left-contents{
				width: 64%;
			}
			
			.right-contents{
				width: 36%; float: right;
			}
			
			#project-image{
				width: 100%; height: 35rem;
				background-size: cover;
			}
			
			#div__project-summary{
				padding: 3rem 1.5rem;
			}
			
			#div__project-summary span{
				line-height: 2.5rem;
				font-size: 1.6rem;
				font-weight: 300;
			}
			
			#div__project-summary-info {
			    padding: 2rem;
			    background: rgba(0, 196, 196, 0.1);
			}
			
			#div__fuding-info{
				color: #00b2b2;
				font-size: 1.3rem;
				font-weight: 300;
				margin-bottom: 1rem;
			}
			
			#span__funding-info{
				color: #4C4C4C;
				font-size: 1.2rem;
			}
			
			.div__project-title{
				border-left: 2px solid #D5D5D5;
				margin: 3rem 0px 2rem;
				padding-left: 1rem;
				font-size: 2rem;
				font-weight: bold;
			}
			
			.ol__info li{
				margin: 1rem 0px;
				font-size: 1.7rem;
			}
			
			#ol__date-info li{
				font-weight: 200;
			}
			
			#ol__policy-info{
				list-style-type:circle;
			}
			
			#ol__policy-info li{
				font-weight: 150;
			}
			
			.contents-faq{
				font-size: 1.7rem;
				font-weight: 190;
			}
			
			.div__faq-area{
				margin: 3rem 0px;
			}
			
			.div__project-que{
				margin: 1rem 0px;
			}
			
			#div__countDown{
				margin-top: 2rem;
				color: #4C4C4C;
				font-size: 2.8rem;
				font-weight: 500;
			}
			
			.div__funding-data{
				margin: 2rem 0px;
			}
			
			.span__funding-data{
				color: #4C4C4C;
				font-size: 2.5rem;
				font-weight: 500;
			}
			
			.btn-area{
				padding: 1.5rem 0px;
			}
			
			.right-btn{
				font-size: 1.7rem;
				font-weight: 200;
			}
			
			#funding_btn{
				color: white;
				width: 100%; height: 4.5rem;
				background-color: #00c4c4;
				border: none;
				border-radius: 3px;
				margin: 0rem 0px 0.5rem;
			}
			
			.icon{
				color: #DCDCDC;
			}
			
			#span_like{
				margin-left: 1.8rem;
			}
			
			.add-btn{
				width: 32%;
				border-radius: 0px;
			}
			
			#like_btn{
				float: left;
			}
			
			#inquire_btn{
				margin-left: 0.7rem;
			}
			
			#share_btn{
				float: right;
			}
			
			.glyphicon-exclamation-sign{
				color: #B8B8B8;
			}
			
			.funding-description{
				margin: 2rem 0px 4rem;
				text-align: center;
				font-size: 1.3rem;
				color: #747474;
			}
			
			#a__more-info{
				color: #747474;
				text-decoration: underline;
			}
			
			#div__maker-header{
				color: #868686;
				font-size: 1.3rem;
				font-weight: 500;
				margin-bottom: 1rem;
			}
			
			.m-wrapper{
				margin-bottom: 3rem;
			}
			
			.div__maker-info{
				border: 1px solid #E0E0E0;
			}
			
			#maker__company-name{
				color: #353535;
				font-size: 1.8rem;
				font-weight: bold;
				padding: 1.5rem 2rem;
				border-bottom: 1px solid #E0E0E0;
			}
			
			.maker__icon{
				color: #D5D5D5;
				margin-right: 1rem;
			}
			
			.maker__btn-wrapper{
				padding: 2rem;
				border-bottom: 1px solid #E0E0E0;
			}
			
			.maker__inquire-btn{
				margin-top: 0.5rem;
				width: 100%; height: 5rem;
				color: #8F8F8F;
				border: 1px solid #D5D5D5;
				border-radius: 3px;
				background-color: white;
				font-size: 1.8rem;
				font-weight: 200;
			}
			
			.maker__btn-title{
				color: #868686;
				font-size: 1.3rem;
				font-weight: 200;
				margin-bottom: 0.5rem;
			}
			
			.m-title{
				padding: 2rem;
				border-bottom: 1px solid #E0E0E0;
			}
			
			.maker-info__wrapper{
				padding: 2rem;
				margin-top: -0.5rem;
				background-color: #F6F6F6;
			}
			
			.maker__info-title{
				color: #868686;
				font-size: 1.2rem;
				font-weight: 200;
			}
			
			.sns-title{
				margin: 1rem 0px;
			}
			
			.m-title-bold{
				font-weight: 400;
			}
			
			.reward-info{
				padding: 1.5rem 1.5rem 1rem;
				margin-bottom: 1rem;
				cursor: pointer;
			}
			
			#reward__amount{
				font-size: 1.5rem;
				font-weight: 450;
			}
			
			.reward__info-detail{
				margin-bottom: 1.5rem;
			}
			
			#reward__product-title{
				font-weight: 300;
			}
			
			#reward__product-name{
				color: #515151;
				font-size: 1.3rem;
				font-weight: 280;
			}
			
			#reward__product-add-info{
				font-size: 1.5rem;
				font-weight: 400;
			}
			
			.reward__quantity{
				font-size: 1.2rem;
				font-weight: 300;
			}
			
			.quantity-color{
				color: #00c4c4;
				margin-bottom: 1rem;
			}
			
			#reward__quantity{
				padding: 0.2rem 0.5rem;
				margin-left: 3.5rem;
				background-color: #E7F9F9;
			}
			
			.maker-info__wrapper{
				display: none;
			}
			
			.maker-info-show{
				cursor: pointer;
			}
	
		</style>
		
	</head>
	
	<body>
	
		<c:import url="../../template/header.jsp"></c:import>
		
		<main>
	
			<c:import url="../common/select-second-navbar.jsp"></c:import>
			
			<div class="container">
			
				<div class="contents-area left-contents">
				
					<div>
						<div id="project-image" style="background-image: url('${info.image}');"></div>
						<div id="div__project-summary">
							<span id="span__project-summary">${info.summary}</span>
						</div>
					</div>
					
					<div style="margin-top: 2rem;">
						
						<div id="div__project-summary-info">
							<div id="div__fuding-info">
								<div>목표 금액 ${info.achieveAmount}원</div>
								<div>펀딩 기간 ${info.startDate}-${info.deadline}</div>
							</div>
							<div>
								<span id="span__funding-info">100% 이상 모이면 펀딩이 성공되며, 펀딩 마감일까지 목표 금액이 100% 모이지 않으면 결제가 진행되지 않습니다.</span>
							</div>
						</div>
						
					</div>
					
					<div style="margin-top: 4rem;">
						
						<!-- Project Story -->
						<div class="div__project-title">프로젝트 스토리</div>
						<div class="div__project-contents">
							<div>${info.contents}</div>
						</div>
						
						<!-- Project Goal -->
						<div class="div__project-title">프로젝트 진행 동기 및 목적</div>
						<div class="div__project-contents">
							<div>${info.projectGoal}</div>
						</div>
						
						<!-- Project schedule Area -->
						<div class="div__project-title">프로젝트 일정</div>
						<div class="div__project-contents">
							<div>
								<ol class="ol__info" id="ol__date-info">
									<li>펀딩 오픈일: ${info.startDate}</li>
									<li>펀딩 종료일: ${info.deadline}</li>
									<li>결제 진행일: ${info.payDate}</li>
									<li>배송 시작일: ${info.sendDate}</li>
								</ol>
							</div>
						</div>
						
						<!-- FAQ Area -->
						<div class="div__project-title">FAQ</div>
						<div class="div__project-contents contents-faq">
							<c:forEach items="${info.faqVOs}" var="vo">
								<div class="div__faq-area">
									<div class="div__project-que">
										<span style="font-weight: bold;">Q. ${vo.question}</span>
									</div>
									<div class="div__project-answer">
										<span>A. ${vo.answer}</span>
									</div>
								</div>
							</c:forEach>
						</div>
						
						<!-- Common Policy -->
						<div class="div__project-title">A/S 정책</div>
						<div class="div__project-contents">
							<div>
								<ul class="ol__info" id="ol__policy-info">
									<li>제품 하자시 교환이 가능합니다.</li>
									<li>서포터 부주의로 인한 손상은 교환/환불이 불가능 합니다.</li>
									<li>교환 요청시 ${info.makerVO.company} 공식 홈페이지 (${info.makerVO.homepage}) 또는 고객센터 ${info.makerVO.tel}으로 문의부탁드립니다.</li>
									<li>이 외 모든 다른 사항은 와디즈 운영 정책에 따릅니다.</li>
								</ul>
							</div>
						</div>
						
						<div class="div__project-title">교환</div>
						<div class="div__project-contents">
							<div>
								<ul class="ol__info" id="ol__policy-info">
									<li>리워드 수령 후 개봉시에는 교환이 불가능 합니다.</li>
									<li>제품이 파손된 채로 배송되었을 경우 교환 가능합니다.</li>
									<li>단순 변심으로 인한 교환은 불가능 합니다.</li>
									<li>제품하자로 인한 교환시, 발생하는 비용은 전액 메이커가 부담합니다.</li>
									<li>서포터님의 부주의로 인한 교환 시 왕복배송비(5,000원)을 부담하셔야 합니다.</li>
								</ul>
							</div>
						</div>
						
						<div class="div__project-title">펀딩금 반환</div>
						<div class="div__project-contents">
							<div>
								<ul class="ol__info" id="ol__policy-info">
									<li>펀딩금 반환 신청은 서포터가 직접 ‘My 메뉴 > 나의 펀딩’에서 직접 진행합니다.</li>
									<li>펀딩금 반환은 마이와디즈 서포터 탭의 [펀딩하기] 메뉴 선택하여 [펀딩 내역] 페이지에서 펀딩금 반환 신청을 원하는 프로젝트를 클릭해 신청할 수 있습니다.</li>
									<li>프로젝트 페이지 상단 '반환/정책' 탭에서 자세한 내용 확인 가능합니다.</li>
									<li>단순변심 또는 제품하자가 아닌 서포터님의 부주의로 인한 제품 손상은 교환 및 펀딩금 반환이 불가합니다.</li>
									<li>리워드 교환을 원하는 경우, 메이커에게 문의하기를 통해 직접 문의 해주시기 바랍니다.</li>
									<li>반환 신청 후, 신청 취소가 불가하니 신중하게 신청해주세요.</li>
									<li>카드 결제 취소는 카드사에 따라 약 2 - 5영업일 소요됩니다.</li>
									<li>펀딩시, 쿠폰 / 포인트를 사용하고 일부 리워드만 펀딩금 반환되는 경우, 사용한 전액이 우선 반환됩니다.</li>
								</ul>
							</div>
						</div>
						
					</div>
					
				</div>
				
				<div class="contents-area right-contents">
				
					<div>
						<div id="div__countDown">${info.countDown}일 남음</div>
						<div style="margin: 3rem 0px;">
							<span style="height: 3px; width:${info.showPercent}%; background-color: #00c4c4; display: block;"></span>
						</div>
						<div class="div__funding-data"><span class="span__funding-data">${info.achievePercent}</span> % 달성</div>
						<div class="div__funding-data"><span class="span__funding-data">${info.achieveAmount}</span> 원 펀딩</div>
						<div class="div__funding-data"><span class="span__funding-data">${info.supporter}</span> 명의 서포터</div>
					</div>
					
					<div class="btn-area">
						
						<button class="right-btn" id="funding_btn">펀딩하기</button>
						
						<div class="sub-btn-wrapper">
							<button class="btn btn-default right-btn add-btn" id="like_btn">
								<i class="glyphicon glyphicon-heart icon"></i><span id="span_like">${info.peopleLike}</span>
							</button>
							
							<button class="btn btn-default right-btn add-btn" id="inquire_btn">
								<i class="glyphicon glyphicon-comment icon"></i><span id="span_like">문의</span>
							</button>
							
							<button class="btn btn-default right-btn add-btn" id="share_btn">
								<span>공유하기</span>
							</button>						
						</div>
						
					</div>
					
					<div class="funding-description">
						<span>
							<i class="glyphicon glyphicon-exclamation-sign"></i>
							펀딩하기는 쇼핑하기가 아닙니다!
							<a href="#" id="a__more-info">자세히 알아보기</a>	
						</span>
					</div>
					
					<!-- maker info area -->
					<div class="div__maker-wrapper m-wrapper">
					
						<div id="div__maker-header">메이커 정보</div>
						
						<div class="div__maker-info">
							
							<div id="maker__company-name">${info.makerVO.company}</div>
							
							<div class="maker__btn-wrapper">
								<div class="maker__btn-title">메이커에게 문의해보세요!</div>
								<button class="maker__inquire-btn">
									<i class="glyphicon glyphicon-comment maker__icon"></i>메이커에게 문의하기
								</button>
							</div>
							
							<div class="maker__info-wrapper">
								
								<div class="maker__btn-title m-title m-title-bold maker-info-show" style="margin-bottom:0px;">
									<span>메이커 정보<i style="float: right;" class="glyphicon glyphicon-menu-down" id="menu-icon"></i></span>
								</div>
								
								<div class="maker-info__wrapper">
									
									<div class="maker__info-title title m-title-bold">메이커 연락처</div>
									<div class="maker__info-title">${info.email}</div>
									<div class="maker__info-title">${info.makerVO.tel}</div>
									<div class="maker__info-title">${info.makerVO.kakaoPlus}</div>
									
									<div class="maker__info-title sns-title m-title-bold">SNS</div>
									<div class="maker__info-title"><a href="${info.makerVO.homepage}">${info.makerVO.homepage}</a></div>
									
								</div>
							
							</div>
							
						</div>
						
					</div>
					
					<div id="div__maker-header">리워드 선택</div>
					<!-- reward wrapper -->
					<c:forEach items="${info.rewardVOs}" var="vo">
					
						<div class="div__maker-wrapper reward-wrapper">
							
							<div class="div__maker-info reward-info" title="${vo.productNum}">
								
								<div class="reward__info-detail" id="reward__amount">${vo.amountStr}원 펀딩</div>
								
								<div class="reward__info-detail">
								
									<div id="reward__product-title" class="reward__info-detail">${vo.title}</div>
									<div id="reward__product-name" class="reward__info-detail">${vo.product}</div>
									
									<div id="reward__product-name">배송비</div>
									<div id="reward__product-add-info" class="reward__info-detail">${vo.shippingFeeStr}원</div>
									
									<div id="reward__product-name">리워드 발송 시작일</div>
									<div id="reward__product-add-info" class="reward__info-detail">${vo.shippingDate}</div>
									
									<div class="reward__quantity quantity-color">
										<span>제한수량 ${vo.limitedQuantity}개</span>
										<span id="reward__quantity">현재 ${vo.remainder}개 남음!</span>
									</div>
									
									<div class="reward__quantity">
										총 ${vo.quantity}개 펀딩완료
									</div>
									
								</div>
								
							</div>
							
						</div>
						
					</c:forEach>
					
				</div>
				
			</div>
			
		</main>
	
	</body>
	
	<script type="text/javascript">

		var show = false;
		
		$(".maker-info-show").click(function(){

			if(show == false){
				$(".maker-info__wrapper").css("display","none");
				$("#menu-icon").attr("class","glyphicon glyphicon-menu-down");
				show = true;
			} else {
				$(".maker-info__wrapper").css("display","grid");
				$("#menu-icon").attr("class","glyphicon glyphicon-menu-up");
				show = false;
			}
			
		});

		$(".reward-info").click(function(){
			var productNum = $(this).attr("title");
			alert("상품번호: " + productNum+ ", 주문 페이지로 이동될 예정입니다.");
			//location.href = "";
		});
		
		$(".reward-info").on("mouseover", function(){
			$(this).css("border","solid 3px #00c4c4");
			$(this).css("border-boxsizing"," border-box");
		});

		$(".reward-info").on("mouseleave", function(){
			$(this).css("border","1px solid #E0E0E0");
		});		
	
	</script>
	
	<script type="text/javascript" src="/js/reward/select.js"></script>
	
</html>