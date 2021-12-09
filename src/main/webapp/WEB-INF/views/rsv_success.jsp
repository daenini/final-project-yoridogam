<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->

		<!-- Search Wrapper Area Start -->
		<div class="search-wrapper section-padding-100">
			<div class="search-close">
				<i class="fa fa-close" aria-hidden="true"></i>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="search-content">
							<form action="#" method="get">
								<input type="search" name="search" id="search"
									placeholder="Type your keyword...">
								<button type="submit">
									<img src="img/core-img/search.png" alt="">
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Search Wrapper Area End -->
		
		<!-- ##### Main Content Wrapper Start ##### -->
		
		
		<div class="cart-table-area section-padding-100">
			<div class="container-fluid">
				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="checkout_details_area mt-50 clearfix">
			
								<div class="cart-title">
									<h2 style="color: #FBB710; margin-bottom: 50px">영수증</h2>
								</div>
								
								<div class="cart_success">
									<div>
										 <h1>${product.p_name}</h1>
									</div>
									<div style="padding-bottom: 10px; border-bottom: 2px solid #FBB710">
										<p>결제 가격 : <f:formatNumber>${reservation.rsv_total}</f:formatNumber> 원</p>
									</div>
									<br>
									
									<div class="row justify-content-between" style="padding-bottom: 10px; border-bottom: 2px solid #FBB710">
										<div class="col-4">수강생 성함 :</div> <div class="col-4"> ${reservation.member.m_name}</div>
									<div class="w-100" style="padding: 10px"></div>
									
										<div class="col-4">전화번호 : </div> <div class="col-4"> ${reservation.member.m_phone}</div>
									<div class="w-100" style="padding: 10px"></div>
									
										<div class="col-4">결제 방식 : </div> <div class="col-4"> ${reservation.rsv_type}</div>
									</div>
								</div>
								
								<div style="padding: 30px 0px 0px 400px ">
								<a href="home" class="btn amado-btn mb-15" >확인</a>
								</div>
								
						</div>
					</div>
				</div>
			</div>
		 </div>
		<!-- ##### Main Content Wrapper End ##### -->
	
		
		<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
		<script src="js/jquery/jquery-2.2.4.min.js"></script>
		<!-- Popper js -->
		<script src="js/popper.min.js"></script>
		<!-- Bootstrap js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Plugins js -->
		<script src="js/plugins.js"></script>
		<!-- Active js -->
		<script src="js/active.js"></script>

		</body>
		
		</html>
		