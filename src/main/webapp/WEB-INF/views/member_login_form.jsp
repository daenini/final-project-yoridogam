<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="js/member.js"></script>       
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
		<script type="text/javascript">

		</script>
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-3">
                        <div class="cart-title mt-50">
                            <h2>&nbsp;&nbsp;</h2>
                        </div>
                        <div class="cart-table clearfix" id="check">
                        </div>  
                    </div>
                    <div class="col-12 col-lg-5">
                        <div class="cart-summary">
                       		<form name="f" id="login-form" class="form" action="" method="post" style="color: #FBB710">
                            <h3 style="color: #FBB710" class="text-center text-info">회원로그인</h3>
                            <h1>&nbsp;&nbsp;</h1>
                     
                            <div class="form-group">
                                <label for="username" class="text-info">USERID : </label>
                                <font color="red">${msg1}</font><br>
                                <input type="text" name="m_id" id="username" class="form-control" value="${nmember.m_id}"> 
                            </div>
                            <div class="form-group">
                                <label class="text-info"></label>
                                <font color="red"></font>
                            	<label for="username" class="text-info"> </label>
                            </div>
                            
                            <div class="form-group">
                                <label for="password" class="text-info">PASSWORD:</label>
                                <font color="red">${msg2}</font><br>
                                <input type="password"  name="m_pass" id="password" class="form-control" value="${nmember.m_pass}">
                            </div>
                             <div class="form-group">
                                <label class="text-info"></label>
                                <font color="red"></font>
                            	<label for="username" class="text-info"> </label>
                            </div>
                            
                            <div class="form-group">
                                <input type="button" class="btn btn-info btn-md" style="background-color: #FBB710; border-color: #FBB710" value="로그인" onClick="member_login_action();">

                            </div>
                            <div id="register-link" class="text-right">
                            
                                <input type="button" class="btn btn-info btn-md" style="background-color: #FBB710; border-color: #FBB710" value="회원가입" onClick="member_write_form()">                                
                            </div>
                        </form>
                           
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