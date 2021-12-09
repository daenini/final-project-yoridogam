<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
$(document).ready(function() {

	$('#inquiry_title').on('click', function(e){
		var sUserId = '<%=(String) session.getAttribute("sUserId")%>';
		var m_id = $(e.target).attr('m_id'); 
		if(sUserId != m_id){
			  alert("작성자만 수정할 수 있습니다.");
			 e.preventDefault();
		}else{
				if(sUserId=='admin'){
						location.href='inquiry_detail?ib_no='+$(e.target).attr('inquiry.ib_no');   					  
				}else{
						location.href='inquiry_detail?ib_no='+$(e.target).attr('inquiry.ib_no');      
				}
		}
	}
});	

	



</script>

<!-- Header Area Start -->
<%@include file="/WEB-INF/views/common/include_header.jsp"%>
<!-- Header Area End -->

<!-- ##### Main Content Wrapper start ##### -->

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