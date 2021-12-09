<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


</head>
<body>
	
<div class="container padding-bottom-2x" id="dc">
        <div class="row" >
          <div class="col-lg-10 col-md-8 order-md-2">
            <h6 class="text-muted text-normal text-uppercase">결제 내역</h6>
            <hr class="margin-bottom-1x">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>결제날짜</th>
                    <th>결제금액</th>
                    <th>강의명</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="pay" items="${payList}" begin="0" end="${payList.size()}" step="1" varStatus="status">
                  <tr>
                    <td>${pay.pay_date}</td>
                    <td><f:formatNumber>${pay.pay_total }</f:formatNumber>원</td>
                    <td style="text-overflow: ellipsis; overflow: hidden;">[${pay.payItemList[0].product.p_name}] 등</td>
                    <td><button class="btn btn-outline-warning" name="detailBtn" value="${pay.pay_no}">상세</button>&nbsp;	
                    <button class="btn btn-outline-warning" name="deleteBtn" value="${pay.pay_no}">삭제</button></td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
		</div>
	</div>
</div>
<div id="productDetail" class="col-lg-10 col-md-8 order-md-2">
</div>
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