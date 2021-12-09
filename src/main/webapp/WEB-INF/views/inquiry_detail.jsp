<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">

</script>
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

				 <div class="col-12 col-lg-100">
                        <div class="cart-summary">
                    <form name="ff" method="post">
                    <table>
                    	
                        <span>[제목] </span> <span>${inquiry.ib_title}</span>
                        <hr> 
                        <span>[작성일] </span> 
                        <span><fmt:formatDate var="resultNotiDate" value="${inquiry.ib_date}" pattern="yyyy-MM-dd"/>
								${resultNotiDate}</span>  
                        <hr> 
                        <span>[조회수] </span> <span>${inquiry.ib_viewCount} </span>
						<hr> 
                        <span>[작성자] </span> <span>${inquiry.member.m_id} </span>
                        <hr> 
						<span><textarea name=ib_content cols=60 rows=15 style="resize: none; margin: 5px; " readonly="readonly" >${inquiry.ib_content}</textarea></span>
                        
					</table>
					</form>
					</div>
		
						<!-- 내용 들어갈 자리 끝 -->
				</div>
				<hr>  <center>
						<button type="button" class="btn btn-outline-warning btn-sm"
								onClick="location.href='inquiry_list'">목록</button>
						<!-- 본인이 작성한 글에만 수정 / 삭제 버튼 보이게 -->
					<c:if test="${sUserId eq inquiry.member.m_id || sUserId eq 'admin'}">
						<button type="button" class="btn btn-outline-warning btn-sm"
								onClick="location.href='inquiry_update?ib_no=${inquiry.ib_no}'">수정</button>
						<a href="inquiry_delete_action?ib_no=${inquiry.ib_no}" role="button"
							class="btn btn-outline-warning btn-sm" onclick="alert('삭제되었습니다.');" >삭제</a>
					</c:if>
					
					
					<c:if test="${sUserId eq 'admin' }">
						<button type="button" class="btn btn-outline-warning btn-sm"
								onClick="location.href='inquiryA_write?ib_no=${inquiry.ib_no}'" >답글</button>
					</c:if>
						
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