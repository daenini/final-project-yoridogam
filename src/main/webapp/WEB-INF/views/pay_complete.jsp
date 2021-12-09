<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
        
        <div class="cart-table-area section-padding-200">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50" align="center">
                            <img src="img/custom-icon/payComplete.png"/>
                        </div>
                        <div class="row" >
                                    <section>
                                        <p>수강생 성함: ${pay.member.m_name}<br/></p>
                                        <p>수강생 번호: ${pay.member.m_phone}<br/></p>
                                        <p>결제 방식: ${pay.pay_type}<br/></p>
                                        <p>결제 총 금액: <f:formatNumber>${pay.pay_total}</f:formatNumber> 원<br/></p>
                                    </section>
						</div>
                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>강의명</th>
                                        <th>가격</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
									<form>
                                    	<c:set var="tot_price" value="0"/>
                                    	<c:forEach var="pay" items="${pay.payItemList}" begin="0" end="${pay.payItemList.size()}" step="1" varStatus="status">
                                        <td class="cart_product_img" >
                                        	<span><img src="${pay.product.p_photo }" style=""></span>
                                        </td>
                                        <td class="cart_product_desc">
                                            <h5>${pay.product.p_name}</h5>
                                        </td>
                                        <td class="price">
                                            <span>${pay.product.p_price} 원</span>
                                        </td>
                                        <td>
                                            <a href="product_detail?p_no=${pay.product.p_no}" class="btn amado-btn w-50" >강의보기</a>
                                        </td>
                                    </tr>
                                  	</c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- ##### Main Content Wrapper End ##### -->

    <!-- ##### Footer Area Start ##### -->
	<%@include file="/WEB-INF/views/common/include_footer.jsp"%>
    <!-- ##### Footer Area End ##### -->
    
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
	<!-- Custom -->
	<script src="js/custom/cart.js"></script>
</body>

</html>