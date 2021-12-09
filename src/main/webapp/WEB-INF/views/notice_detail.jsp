<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.itwill.yoridogam.notice.NoticeService"%>
<%@ page import="com.itwill.yoridogam.member.Member"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

				<div class="col-12 col-lg-100">
					<div class="cart-summary">
						<form name="ff" method="post">
							<table>
								<span>[제목] </span>
								<span>${notiDetail.noti_title}</span>
								<hr>
								<span>[작성일] </span>
								<span><fmt:formatDate var="resultNotiDate"
										value="${notiDetail.noti_date}" pattern="yyyy-MM-dd" />
									${resultNotiDate}</span>
								<hr>
								<span>[조회수] </span>
								<span>${notiDetail.noti_viewCount} </span>
								<hr>
								<span><textarea name=ib_content cols=60 rows=15
										style="resize: none; margin: 5px; vertical-align: middle;"
										readonly="readonly">${notiDetail.noti_content}</textarea></span>

							</table>
						</form>

						<!-- 내용 들어갈 자리 끝 -->
					</div>
					<hr>
					<center>

						<button type="button" class="btn btn-outline-warning btn-sm"
							onClick="location.href='notice_list'">목록</button>

						<c:if test="${sUserId eq 'admin' }">
							<button type="button" class="btn btn-outline-warning btn-sm"
								onClick="notice_delete()">삭제</button>

							<button type="button" class="btn btn-outline-warning btn-sm"
								onClick="notice_update()">수정</button>
						</c:if>
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
<script type="text/javascript">
	function notice_update() {

		if ("${sUserId}" != "admin") {
			alert("공지사항 수정은 관리자만 가능합니다.");
			location.href = 'notice_detail?noti_no=${notiDetail.noti_no}';
			return;
		}
		if ("${sUserId}" == "admin") {
			location.href = 'noti_update?noti_no=${notiDetail.noti_no}';
			return;
		}
	};
	
	function notice_delete() {

		if ("${sUserId}" != "admin") {
			alert("공지사항 삭제는 관리자만 가능합니다.");
			location.href = 'notice_detail?noti_no=${notiDetail.noti_no}';
			return;
		}
		if ("${sUserId}" == "admin") {
			location.href = 'noti_delete_action?noti_no=${notiDetail.noti_no}';
			alert("공지사항이 삭제되었습니다.");
			return;
		}
	};
</script>

</body>

</html>