<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb14b5406ba6260e7d351ab7441b0d06&libraries=services"></script>
<script type="text/javascript" src="js/member.js"></script>  
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
        <!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                    <img width="300" height="70" src="img/custom-icon/productMap.png"/><br></br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="single_product_thumb">
                            <div id="product_details_slider" class="carousel slide" >
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                            <div class="d-block w-100" id="map" style="width:100%;height:800px;">
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                       	<select id="region">
                       		<option value="서울">서울</option>
                       		<option value="부산">부산</option>
                       		<option value="대전">대전</option>
                       		<option value="제주도">제주도</option>
                       	</select><br></br><hr>
		                        <div class="single_product_desc">
                            		<table>
			                            <ul class="summary-table" id="classList">
                            				<c:forEach var="product" items="${pList }" begin="0" varStatus="status">
                           					<c:if test="${product.p_type eq '오프라인'}">
        			                      	<li>
        			                      		[${product.teacher.t_name }] 강사 &nbsp;&nbsp;
                    				         	<a href="product_detail?p_no=${product.p_no }" style="color: orange; font-size: large;">${product.p_name }</a><hr>
                            				  	<button class="btn btn-outline-warning" name="mapBtn"  p_photo="${product.p_photo }" p_name="${product.p_name }"  value="${product.teacher.t_location }">위치 보기</button>&nbsp;&nbsp;
                              					${product.teacher.t_location}
                              				</li><hr>
                           					</c:if>
                         				   </c:forEach>
			                            </ul>
			                       </table>   
	                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Details Area End -->
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

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
	<script src="js/custom/map.js"></script>
</body>

</html>