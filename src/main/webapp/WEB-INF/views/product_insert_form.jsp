<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
		
		<!-- controller
	@LoginCheck
	@RequestMapping("product_insert_form")
	public String product_insert_form(HttpSession session) throws Exception{
		return "product_insert_form";
	}
		 -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>상품등록</h2>
                            </div>

                            <form  method="post">
                            <input type="hidden"  name="t_id" value="${teacher}">
                                <div class="col-md-3 mb-1">
                                 	<select name="p_type" id="p_type">
                                    	<option value="">-유형 선택-</option>
                                    	<option id="online" value="온라인">온라인 강의</option>
                                    	<option id="offline"  value="오프라인">오프라인 강의</option>
                                    </select>
                                </div>
                                
                                <div class="rowCustom">
                                    <div class="col-2 mb-3">
                                        <select name="p_category">
                                        	<option value="베이킹">베이킹</option>
                                        	<option value="한식">한식</option>
                                        	<option value="비건">비건</option>
                                        </select>
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" name="p_name" placeholder="상품명" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" name="p_price"placeholder="가격" value="">
                                    </div>
                                    <div class="col-3 mb-2">
                                        <input type="text" class="form-control mb-3" id="" placeholder="사진업로드" value="" disabled="disabled">
                                    </div>
                                    <div class="col-5 mb-2">
                                        <input type="file" class="form-control mb-3" name="p_photo" accept="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <textarea name="p_detail" class="form-control w-100" id="" cols="30" rows="10" placeholder="상품설명"></textarea>
                                    </div>

                                    <div class="col-12">
                                        <div class="custom-control custom-checkbox d-block mb-2">
                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                            <label class="custom-control-label" for="customCheck2">Create an accout</label>
                                        </div>
                                        <div class="custom-control custom-checkbox d-block">
                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                            <label class="custom-control-label" for="customCheck3">Ship to a different address</label>
                                        </div>
                                        <div class="cart-btn mt-100">
                                			<input type="submit"  class="btn amado-btn w-100" value="등록하기" onclick="javascript: form.action='product_insert_action';"/><br><br/>
                                			<a href="home" class="btn amado-btn w-100">취소하기</a>
                           				</div>
                                    </div>
                                </div>
                            </form>
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
	<script src="js/custom/productTest.js"></script>
</body>

</html>