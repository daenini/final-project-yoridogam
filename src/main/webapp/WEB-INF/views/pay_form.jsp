<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>결제</h2>
                            </div>
                            <form action="pay_action" name="payInfo" method="post">
                                  <div class="row">
                                    <div class="col-md-12 mb-3">
                                       <input type="hidden" name="m_id" value="${sUserId.m_id}" >
                                       <span style="color: orange">성함</span>
                                       <input type="text" class="form-control" name="m_name" value="${sUserId.m_name}" placeholder="First Name" required>
                                    </div>
                                    <div class="col-12 mb-3">
                                    	<span style="color: orange">이메일</span>
                                        <input type="email" class="form-control" name="m_email" placeholder="Email" value="${sUserId.m_email}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <span style="color: orange">핸드폰번호</span>
                                        <input type="text" class="form-control" name="m_phone" placeholder="Address" value="${sUserId.m_phone}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <span style="color: orange">주소</span>
                                        <input type="text" class="form-control" name="m_addr" placeholder="Town" value="${sUserId.m_addr}">
                                    </div>
                                    <div class="col-12 mb-3">
                                    	<span style="color: orange">결제 약관</span>
                                        <textarea name="comment" class="form-control w-100" name="" cols="30" rows="15" >
                                        제 1 조 (목 적)
본 약관은 요리도감 주식회사(이하 "회사"라 한다)가 운영하는 인터넷쇼핑몰 사이트 (이하 "사이트"라 합니다.)에서 제공하는 서비스 (이하 "서비스"라고 한다)를 이용함에 있어 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 그 목적으로 합니다. 모바일 기기 등을 이용한 전자거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.

                                        제 2 조 (정의)
1. [사이트]란 회사가 온라인쇼핑 관련 재화 또는 용역 (이하 "재화" 등 이라고 합니다.)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장 또는 사이트를 운영하는 사업자의 의미로도 사용합니다.
2. [이용자]란 [사이트]에 접속하여 이 약관에 따라 [사이트]가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
3. [회원]이라 함은 이 약관에 동의하고, [사이트]에 개인정보를 제공하여 회원 등록을 한 자로서 [사이트]의 정보를 지속적으로 제공받으며 [사이트]가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
4. [비회원]이라 함은 회원으로 가입하지 않고 [사이트]가 제공하는 서비스를 이용하는 자를 말합니다.
5. 본 약관에서 사용하는 용어의 정의는 본 조에서 정하는 것을 제외하고는 관계 법령 및 해당 서비스에서 규정하는 바에 따릅니다.
(하략)
                                        </textarea>
                                    </div>

                                    <div class="col-12">
                                        <div class="custom-control custom-checkbox d-block mb-2">
                                            <input type="checkbox" class="custom-control-input" id="confirmInfo">
                                            <label class="custom-control-label" for="confirmInfo">개인정보이용 동의(필수)</label>
                                        </div>
                                        <div class="custom-control custom-checkbox d-block">
                                            <input type="checkbox" class="custom-control-input" id="confirmMK">
                                            <label class="custom-control-label" for="confirmMK">마케팅활용 동의(선택)</label>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>주문 정보</h5>
                           	<input type="hidden" name="pay_no" value="1"/>
                            <ul class="summary-table">
                          		<li><input type="hidden"  name="p_no"  value="${product.p_no}"></li>
                                <li><span>강의명:</span> <input type="hidden"  name="p_name"  value="${product.p_name}">${product.p_name}</li>
                                <li><span>수량:</span><input type="hidden"  name="qty"  value="${qty}">${qty} 개</li>
                                <li><span>금액:</span> <input type="hidden"  name="p_price"  value="${product.p_price}"><f:formatNumber>${product.p_price}</f:formatNumber> 원</li>
                                <hr/>
                                <li><span>총 금액:</span> <input type="hidden"  name="pay_total"  value="${product.p_price}"><f:formatNumber>${product.p_price}</f:formatNumber> 원</li>
                            </ul>
	
                            <div class="payment-method">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="radio" class="custom-control-input" name="pay_type"  id="deposit" value="무통장입금" checked="checked">
                                    <label class="custom-control-label" for="deposit">무통장입금</label>
                                </div>
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="radio" class="custom-control-input" id="kakaoPay" name="pay_type"  value="카카오페이">
                                    <label class="custom-control-label" for="kakaoPay">카카오페이</label>
                                </div>
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="radio" class="custom-control-input" name="pay_type" id="cardPay" value="카드결제">
                                    <label class="custom-control-label" for="cardPay">카드결제<img class="ml-15" src="img/core-img/paypal.png" alt=""></label>
                                </div>
                            </div>
	
                            <div class="cart-btn mt-100">
                            	<input type="submit" class="btn amado-btn w-100" value="결제하기"><br><br/>
                            	<a href="cart_list_form" class="btn amado-btn w-100">취소하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
 </form>
    <!-- ##### Main Content Wrapper End ##### -->

    <!-- ##### Footer Area Start ##### -->
	<%@include file="/WEB-INF/views/common/include_footer.jsp"%>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
	<!-- Custom -->
	<script src="js/custom/pay.js"></script>
	

</body>

</html>