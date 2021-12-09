<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.itwill.yoridogam.notice.NoticeService"%>
<%@ page import="com.itwill.yoridogam.member.Member"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">

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
					<div class="notice-title">
						<h2>공지사항</h2>
					</div>
					<div class="col-12 col-lg-20">
						<div class="cart-title mt-50">
							<div class="cart-table clearfix" id="check"></div>
						</div>
						<!--  -->
						<form method="POST" action="/yoridogam/noti_update_action">
							<table style="padding-top: 50px" align=center width=50 border=0	cellpadding=2>

								<tr>
									<td bgcolor=white>
										<table class="table2">
										

											<tr>
												<input type="hidden" name=noti_no value="${notice.noti_no }">
												<td>작성자</td>
												<td><input type=text size=50 name = member.m_id
													placeholder="&nbsp;${sUserId }" readonly></td>
											</tr>

											<tr>
												<td>제목</td>
												<td><input type=text name=noti_title size=50
													value="${notice.noti_title }"></td>
											</tr>

											<tr>
												<td>내용</td>
												<td><textarea name=noti_content cols=50 rows=10>${notice.noti_content}</textarea></td>
											</tr>

										</table>


									</td>
								</tr>
							</table>
							
								<center><button type="submit" class="btn btn-outline-warning btn-sm"
								onClick="location.href='noti_update_action'; alert('수정되었습니다.');" >수정</button>
						</form>


						<!--  -->

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
	<script src="js/custom/cart.js"></script>


</body>

</html>