<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/teacher.js"></script>

<title>아이디 중복 체크</title>
<style type="text/css">
#wrap {
	width: px;
	text-align: center;
	margin: 0 auto 0 auto;
}

#chk {
	text-align: center;
}

#cancelBtn {
	visibility: visible;
}

#useBtn {
	visibility: visible;
}
</style>



</head>
<body>
	<div id="wrap">
<br> <b><font size="4" color="black">아이디 중복체크</font></b>
			<h5>&nbsp;&nbsp;</h5>	
	
		<br>

		<div id="chk">
			<form id="checkForm">
				<input type="text" name="sTeacherId" id="sTeacherId" value="${sTeacherId}"> <input
					type="button" value="중복검사" style="background-color: #FBB710; border-color: #FBB710" onclick="id_duplicate_check2();">
			</form>
			<div id="msg">${msg}</div>

			<br>
			<input id="cancelBtn" type="button" value="돌아가기" style="background-color: #FBB710; border-color: #FBB710" onclick="window.close();"> 
			<c:choose>
			 <c:when test="${!isduplicate}">
			<input id="useBtn" type="button" value="사용" style="background-color: #FBB710; border-color: #FBB710" onclick="id_duplicate_send_value();">
			</c:when>
			</c:choose>
		</div>
	</div>
</body>
</html>