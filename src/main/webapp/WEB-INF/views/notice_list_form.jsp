<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<!-- 붙여온 거 시작점 -->
		<!-- 삭제점 -->
		<div class="row">
			<div class="col-12">
				<div class="cart-title mt-50">
					<h2>공지사항</h2>
				</div>

				<div class="cart-table clearfix">
					<table class="table table-responsive" tabindex="1"
						style="overflow: hidden; outline: none; ">
						<thead>
							<tr style="text-align: center;">
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<c:forEach var="notice" items="${notiList}" begin="0"
							end="${notiList.size()}">
							<tbody style="text-align: center;">
								<!--  -->
								<tr">
									<td><a href="notice_detail?noti_no=${notice.noti_no}">${notice.noti_title}</a></td>
									<td>${notice.member.m_id}</td>
									<td><fmt:formatDate var="resultNotiDate"
											value="${notice.noti_date}" pattern="yyyy-MM-dd" />
										${resultNotiDate}</td>
									<td>${notice.noti_viewCount}</td>
								</tr>
								<!--  -->
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<hr>
		
		<c:if test="${sUserId eq 'admin' }">
			<button type="button" class="btn btn-outline-warning btn-sm"
				onClick="notice_write()">작성</button>
		</c:if>
		<div>
			<ul style="text-align: center;">
				<c:if test="${paging.startPage != 1}">
					<li><a href="notice_list?nowPage=${paging.startPage-1}&cntPerPage=${paging.cntPerPage}">&#9665;</a></li>
				</c:if>
			<!-- 페이지 번호를 누르면 해당 페이지로 가게 만듦 -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
					<c:choose>
						<c:when test="${p == paging.nowPage}"><a style="font-size: 18px;">${p}</a>
						</c:when>
						<c:when test="${p != paging.nowPage}">
							<a href="notice_list?nowPage=${p}&cntPerPage=${paging.cntPerPage}"
								style="font-size: 14px;">&nbsp;&nbsp;&nbsp;&nbsp;${p}&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.endPage != paging.lastPage}">
					<li><a href="notice_list?nowPage=${paging.endPage + 1}&cntPerPage=${paging.cntPerPage}"
							style="font-size: 18px;">&#9655;</a></li>
				</c:if>
			</ul>
		</div>
			<!-- 붙여온 거 끝점 -->
			<!-- 삭제점 -->
		
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
	function notice_write() {

		if ("${sUserId}" != "admin") {
			alert("공지사항 작성은 관리자만 가능합니다.");
			location.href = "notice_list";
			return;
		}
		if ("${sUserId}" == "admin") {
			location.href = "noti_write_form";
			return;
		}
	}
</script>

</body>

</html>