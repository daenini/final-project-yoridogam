<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<div class="">
		 <h6 class="text-muted text-normal text-uppercase">관심강의</h6>
	<table class="table table-responsive">
	<thead>
		<tr style="width: 750px">
			<th scope="col">강의 사진</th>
			<th scope="col">강의  명</th>
			<th scope="col">강의 유형</th>
			<th scope="col">강의 상세</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="interest" items="${interestList}">
		<c:forEach var="product" items="${productList }">
		<form >
		<c:if test="${interest.mi_interest==product.p_category }">
			<tr style="width: 750px">
						<td align="left" scope="row"><a href="#"><img src="${product.p_photo }" width="70%"/></a></td>	 
						<td scope="row">${product.p_name}</td>
						<td scope="row">${product.p_type}</td>
						<td scope="row">${product.p_detail}</td>
					</tr>
				</c:if>
			</form>
		</c:forEach>
	</c:forEach>
	</tbody>
	</table>
	</div>
	
</body>
</html>