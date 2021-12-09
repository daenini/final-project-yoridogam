<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.modal-backdrop {
  position: static; 
}
#star a{ text-decoration: none; color: gray; }
#star a.on{ color: orange; }

</style>

</head>
<body>
	
<h6 class="text-muted text-normal text-uppercase padding-top-2x">결제 상세 내역</h6>
            <hr class="margin-bottom-1x">
            <div class="table-responsive">
              <table class="table table-inverse" style="color: orange;">
                <thead>
                  <tr>
                    <th></th>
                    <th>강의명</th>
                    <th>강의 금액</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="pay" items="${pay.payItemList}" begin="0" end="${pay.payItemList.size()}" step="1" varStatus="status">
                  <tr>
                    <td><img src="${pay.product.p_photo }"/></td>
                    <td>${pay.product.p_name }</td>
                    <td><f:formatNumber>${pay.product.p_price }</f:formatNumber>원</td>
                    <td><button class="btn btn-outline-warning" name="createReview"  p_photo="${pay.product.p_photo }"  p_name="${pay.product.p_name }" value="${pay.product.p_no }">리뷰쓰기</button></td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
                <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
                
                
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" >
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">리뷰 작성하기</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <section>
		<p id="pPhoto"></p>      
		
      </section>
      <p id="star">
      <a href="#" r_grade="1">★</a>
      <a href="#" r_grade="2">★</a>
      <a href="#" r_grade="3">★</a>
      <a href="#" r_grade="4">★</a>
      <a href="#" r_grade="5">★</a><p>
      <section>
		 <textarea id="r_detail" class="form-control w-100" cols="10" rows="3" placeholder="한줄평을 남겨주세요~!"></textarea>
      </section>
      
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">돌아가기</button>
        <button type="button" class="btn btn-primary" id="submitRV" value="">작성하기</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->



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
	<script src="js/custom/pay.js"></script>
	
</body>
</html>