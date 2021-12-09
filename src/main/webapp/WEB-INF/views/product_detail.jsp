<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
		<style>
		.modal-backdrop {
		  position: static; 
		}
		</style>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb14b5406ba6260e7d351ab7441b0d06&libraries=services"></script>
        <!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="single_product_thumb">
                           <img class="d-block w-100" src="${product.p_photo }" alt="First slide">
                          	<br/><hr><br/>
                          	<div class="card">
	                			<div class="card-header" role="tab">
	          	        			<h6><a href="#collapseOne" data-toggle="collapse">수강생 한줄평</a></h6>
      							  	 <p id="stars" style="color: orange;"> </p>
    	            			</div>
               				<div class="collapse show" id="collapseOne" data-parent="#accordion1" role="tabpanel"  style="">
                  				<div class="card-body">
				                <c:forEach var="review" items="${rList }" end="${rList.size() }">
                  				 <section class="reviewList">
      							  <h6>[${review.member.m_name }] 수강생</h6>
      							  	 <p style="color: orange;">
      							  	 <c:forEach var="i" begin="1" step="1" end="${review.r_grade }">
	      							  	 <span class="star" aria-hidden="true">★</span>
                                 	 </c:forEach>
      							  	 </p>
							        <p>${review.r_content }</p>
							    </section><hr/>
				                </c:forEach>
                  				</div>
	                			</div>
         				   	 </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                    <c:choose>
                    <c:when test="${product.p_type eq '온라인' }">
                    <form action="pay_form" method="post">
                    </c:when>
                    <c:otherwise>
                    <form action="rsv_form" method="post">
                    </c:otherwise>
                    </c:choose>
                        <div class="single_product_desc">
                            <!-- Product Meta Data -->
                            <div class="product-meta-data">
                                <div class="line"></div>
                                <a href="product-details.html">
                                    <h6>${product.p_name }</h6>
                                </a>
                                <input type="hidden" id="detailPNo" name="p_no" value="${product.p_no }"/>
                                <input type="hidden" id="detailTLocation" value="${product.teacher.t_location }"/>
                                <input type="hidden" id="detailTId" name="t_id" value="${product.teacher.t_id }"/>
                                <!-- Ratings & Review -->
                                <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                    <div class="ratings">
                                    </div>
                                    <div class="review">
                                        <a href="member_detail">리뷰 작성</a>
                                    </div>
                                </div>
                                <!-- Avaiable -->
                                <p class="product-price"><f:formatNumber>${product.p_price }</f:formatNumber>원</p>
                                <p class="avaibility"><i class="fa fa-circle"></i> 수강가능</p>
                            </div>

                            <div class="short_overview my-5">
                                <p>${product.p_detail }</p>
                            </div>
                            <hr>
                        	<div class="short_overview my-5">
                            <p>[${product.teacher.t_name }] 강사님 소개</p>
                            <p>${product.teacher.t_detail }</p>
                            </div>
                            <hr><br/>

                            <c:choose>
                            <c:when test="${product.p_type eq '온라인' }">
                            <form class="cart clearfix" method="post">
                                <div class="cart-btn d-flex mb-50">
                                    <p>수량</p>
                                    <div class="quantity">
                                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="qty" value="1">
                                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                                <button type="submit" name="pay_form" class="btn amado-btn">결제하기</button><br></br>
                                <button type="button"  onclick="cartAdd()" name="detailCartAdd" class="btn amado-btn" value="${product.p_no }">장바구니</button>
                                </c:when>
                                <c:otherwise>
                                <button type="submit" name="rsv_form"  class="btn amado-btn">예약하기</button><br></br>
                                <button type="button" name="detailMap"  class="btn amado-btn" p_name="${product.p_name }" p_photo="${product.p_photo }">위치보기</button>
                                </c:otherwise>
                                </c:choose>
                            </form>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">강의 위치 안내</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="col-12 mb-3">
	  <div class="d-block w-200" id="map" style="width:100%;height:500px;">
	  </div>
	  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">돌아가기</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->    
    
    
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
	<script src="js/custom/map.js"></script>
	<!-- List,Detail cartAdd -->
	<script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
</body>

</html>