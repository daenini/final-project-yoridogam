<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->

        <div class="shop_sidebar_area">
		 <!-- ##### 상품 유형 (온오프) ##### -->
          <h5 class="widget-title mb-30">상품 검색하기</h5><hr>
            <div class="widget brands mb-50">
                <h6 class="widget-title mb-30">1) 유형</h6>
                <div class="widget-desc">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="onOff"  value="온라인" >
                        온라인</input>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="onOff"  value="오프라인" >
                        오프라인</input>
                    </div>
                </div>
            </div>
            
            <!-- ##### 상품 카테고리(비건 등) ##### -->
            <div class="widget catagory mb-50" id="category" style="display: none">
            <hr>
                <h6 class="widget-title mb-30">2) 카테고리</h6>
                <div class="catagories-menu">
                    <ul>
                        <li><a href="#"  class="listCategory" onclick="listCategory(this)">베이킹</a></li>
                        <li><a href="#"  class="listCategory"  onclick="listCategory(this)">한식</a></li>
                        <li><a href="#"  class="listCategory" onclick="listCategory(this)">비건</a></li>
                    </ul>
                </div>
            </div>
            
            
            <input type="button" name="cancelSearch" style="display: none" onclick="location.href = 'product_list' " value="검색 초기화">
        </div>




        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                            <div class="total-products">
                                <div class="view d-flex">
                                    <a href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="ListCategory">
                <c:forEach var="product" items="${pList}" begin="0" step="1"  end="${pList.size()}" >
                    <div class="col-12 col-sm-6 col-md-12 col-xl-6" >
                        <div class="single-product-wrapper">
                            <div class="product-img">
                            	<a href="product_detail?p_no=${product.p_no }" >
                                <img src="${product.p_photo }" >
                            	</a>
                                <!--<img class="hover-img" src="img/product-img/product2.png" >--> <!-- hover효과 추후 상세정보나 다른 사진삽입 --> 
                            </div>

                            <div class="product-description d-flex align-items-center justify-content-between">
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price"><f:formatNumber> ${product.p_price }</f:formatNumber>원</p>
                                    <a href="product_detail?p_no=${product.p_no }" >
                                        <h5>${product.p_name }</h5>
                                    </a>
                                    <span>
                                        <h6 style="color: red">[${product.p_type } 강의]</h6>
                                    </span>
                                </div>
                                <div class="ratings-cart text-right">
                                    <c:choose>
                                    <c:when test="${product.p_type eq '온라인' }">
                                    <div class="cart" id="cartAdds">
                                    	<button onclick="cartAdd()" class="listCartAdd" style="border: 0px" data-toggle="tooltip" data-placement="left" title="장바구니 담기" value="${product.p_no }">
                                         담기
                                    	<img src="img/core-img/cart.png" alt=""></button>
                                    </div>
                                    </c:when>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
              	  </c:forEach>
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
	<script src="js/custom/productTest.js"></script>
	<!-- List,Detail cartAdd -->
	<script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
</body>

</html>