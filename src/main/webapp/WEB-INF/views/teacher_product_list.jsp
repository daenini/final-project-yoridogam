<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>
	
<div class="container padding-bottom-2x" id="dc">
        <div class="row" >
          <div class="col-lg-10 col-md-8 order-md-2">
            <h6 class="text-muted text-normal text-uppercase">등록한 강의</h6>
            <hr class="margin-bottom-1x">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">상품 번호</th>
                    <th scope="col">상품 이름</th>
                    <th scope="col">상품 유형</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                  </tr>
                </thead>
                <tbody id="tpList">
                  <c:forEach var="product" items="${TPList}" begin="0" end="${TPList.size()}" step="1" varStatus="status">
                  <tr>
                    <td scope="row">${product.p_no}</td>
                    <td scope="row">${product.p_name}</td>
                    <td scope="row">${product.p_type}</td>
                    <td scope="row"><form action="product_update_form" method="post" name="updateProduct"><button class="btn btn-outline-warning" id="updateBtn" name="p_no" value="${product.p_no}">수정</button></form></td>
                    <td scope="row"><button class="btn btn-outline-warning" name="deleteProductBtn" value="${product.p_no}">삭제</button></td>
                    <c:if test="${product.p_type eq '오프라인' }">
                    <td scope="row"><button class="btn btn-outline-warning" name="detailBtn" value="${product.p_no}">상세보기</button></td>
                    </c:if>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
		</div>
	</div>
</div>
<br>
<br>

<div id="detail" class="form-post" style="">


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
	<script src="js/rsv.js"></script>
	
</body>
</html>