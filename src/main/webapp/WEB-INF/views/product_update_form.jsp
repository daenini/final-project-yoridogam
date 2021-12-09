<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
<style>
.modal-backdrop {
  position: static; 
}
</style>
<!-- fixed시 모달창도 먹힘..왜?-->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">강의 시간 관리</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<div class="col-6 mb-3">
   		   <span>강의시간 검색</span>
        	<input type="date" class="form-control mb-3" name="pt_dateSelect" id="pt_dateSelect" value="">
        </div>
        <table class="table">
	        <thead>
	          <tr>
	            <th></th>
	            <th>시간</th>
	            <th>최대 인원</th>
	            <th>예약 인원</th>
	            <th>선택</th>
	          </tr>
	        </thead>
	        <tbody id="time_tbody">
	          <tr>
	            <td></td>
	            <td></td>
	            <td></td>
	            <td></td>
	          </tr>
	        </tbody>
	      </table>
	      <div>
		      <input type="button"  class="form-control mb-3" id="deletePt" value="삭제하기" ><br></br>
	      	<form action="#" method="post">
	  	  		<div class="col-6 mb-3">
          			<input type="date" class="form-control mb-3" name="pt_date" value="">
          		</div>
          <div class="col-12 mb-3">
          	<input type="text" class="form-control mb-3" name="pt_max" placeholder="수강인원 ex) 30 " value="">
          	<input type="text" class="form-control mb-3" name="pt_time" placeholder="ex)10:00~11:00,11:00~12:00,13:00,~14:00" value="">
          </div>
	      </form>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">돌아가기</button>
        <button type="button" class="btn btn-primary" id="submitPT">등록하기</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
		 
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">
                            <div class="cart-title">
                                <h2>상품수정</h2>
                            </div>
                            <form action="product_update_action"  method="post">
                                <div class="row">
                                    <div class="col-2 mb-3">
                                        <select name="p_category">
                                        	<option value="베이킹">베이킹</option>
                                        	<option value="한식">한식</option>
                                        	<option value="비건">비건</option>
                                        </select>
                                    </div>
                                        <input type="hidden" class="form-control" name="teacher.t_id" value="teacher1" >
                                        <input type="hidden" class="form-control" name="p_no" value="${product.p_no }" >
                                        <input type="hidden" class="form-control" name="p_type" value="${product.p_type }" >
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" name="p_name" placeholder="상품명" value="${product.p_name }">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" name="p_price"placeholder="가격" value="${product.p_price }">
                                    </div>
                                    <div class="col-3 mb-2">
                                        <input type="text" class="form-control mb-3" id="" placeholder="사진업로드" value=""${product.p_photo } disabled="disabled">
                                    </div>
                                    <div class="col-5 mb-2">
                                        <input type="file" class="form-control mb-3" name="p_photo" accept="">
                                    </div>
                                    <div class="col-6 mb-3">
                                        <img src="${product.p_photo }"/>
                                    </div>
                                    <div class="col-6 mb-3">
                                        <textarea name="p_detail" class="form-control w-80" id="" cols="30" rows="30" placeholder="상품설명">${product.p_detail }</textarea>
                                    </div>
                                    <div  class="col-12">
                                        <div class="custom-control custom-checkbox d-block mb-2">
                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                            <label class="custom-control-label" for="customCheck2">Create an accout</label>
                                        </div>
                                        <div class="custom-control custom-checkbox d-block">
                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                            <label class="custom-control-label" for="customCheck3">Ship to a different address</label>
                                        </div>
									<c:set var="product_type" value="${product.p_type }"/>
										<c:choose>
											<c:when test="${product_type == '오프라인' }">
												<input type="button" class="btn amado-btn w-100" id="pt_timeSetting" style="" value="강의시간관리">
											</c:when>
										</c:choose>
										
                                        <div class="cart-btn mt-100">
                                			<input type="submit"  class="btn amado-btn w-100" value="수정하기" ><br><br/>
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