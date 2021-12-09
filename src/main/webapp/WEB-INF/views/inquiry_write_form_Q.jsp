<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript" src="js/address.js">

</script>
<style>
table.table2 {
	border-collapse: separate;
	border-spacing: 1px;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	margin: 10px 5px;
}

table.table2 tr {
	width: 50px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

table.table2 td {
	width: 50px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>

<body>
	<!-- Header Area Start -->
	<%@include file="/WEB-INF/views/common/include_header.jsp"%>
	<!-- Header Area End -->
	<div class="cart-table-area section-padding-100">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12 col-lg-20">
					<div class="inquiry-title">
						<h2>문의 게시판</h2>
					</div>
					<div class="col-12 col-lg-20">
						<div class="cart-title mt-50">
							<div class="cart-table clearfix" id="check"></div>
						</div>
						<!--  -->
						<form method="POST" action="/yoridogam/inquiry_write_action">
							<table style="padding-top: 50px" align=center width=50 border=0
								cellpadding=2>

								<tr>
									<td bgcolor=white>
										<table class="table2">
											<tr>
												<td>작성자</td>
												<td><input type=text name="m_id" size=45 value="${sUserId }"
													placeholder="&nbsp;${sUserId }" readonly></td>
											</tr>

											<tr>
												<td>제목</td>
												<td><input type=text name=ib_title size=45></td>
											</tr>

											<tr>
												<td>내용</td>
												<td><textarea name=ib_content cols=50 rows=10></textarea></td>
											</tr>

										</table>


									</td>
								</tr>
							</table>
							<button type="submit" class="btn btn-outline-warning btn-sm" onClick="alert('작성되었습니다.');">작성</button>
						</form>
					</div>

						<!--  -->

					</div>
				</div>
				<!-- 버튼 가운데 정렬 해결하기 -->
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
	<script src="js/custom/cart.js"></script>
</body>

</html>