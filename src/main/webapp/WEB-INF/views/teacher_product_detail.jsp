<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    <script src="js/rsv.js"></script>
</head>
<body>
<h6 class="text-muted text-normal text-uppercase padding-top-2x"><strong>[${product.p_name}]</strong></h6>
            <hr class="margin-bottom-1x">
            <div>
              <table class="table">
               <thead>
               <tr >
               	<th scope="col">강의 날짜</th>
               	<th scope="col">강의 시간</th>
               	<th scope="col">등록회원</th>
               	<th scope="col">회원 정보</th>
               	</tr>
               </thead>
               
               <tbody>
               <c:forEach var="pt" items="${ptList}">
               <tr>
              	<td scope="row">${pt.pt_date}</td>
              	<td scope="row">${pt.pt_time}</td>
              	<td scope="row">${pt.pt_rsv}/${pt.pt_max}</td>
              	<td scope="row">
              		<button type="button" name="ptdetail" value="${pt.pt_no}" class="btn btn-outline-warning">
              			등록 회원 정보
              		</button>
              	</td>
               </tr>
	           <!-- 회원정보 -->
	               <tbody style="display:none;" class="abc${pt.pt_no}">
	               	<tr style="background-color: lightgray;">
	               		<td scope="row">회원 성함</td>
		               	<td scope="row">회원 번호</td>
		               	<td scope="row">회원 이메일</td>
		               	<td scope="row">인원</td>
	               	</tr>
	           		<c:forEach var="rsv" items="${mList}">
	           			<tr>
	           			 <c:if test="${(pt.pt_date eq rsv.rsv_date) && pt.pt_time eq rsv.rsv_time }"> 
		               	<td scope="row">${rsv.member.m_name}</td>
		               	<td scope="row">${rsv.member.m_phone}</td>
		               	<td scope="row">${rsv.member.m_email}</td>
		               	<td scope="row">${rsv.rsv_qty}</td>
	           			 </c:if> 
		               	</tr>
	           		</c:forEach>
               		</tbody>
               	
               		
	           <!-- 회원정보 -->
	           
               </c:forEach>
               </tbody>
              </table>
					  
            </div><!-- end -->
                <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
</body>
</html>