<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<script type="text/javascript" src="js/teacher.js"></script>   
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="js/address.js">

</script> 
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
                            <h2>강사수정</h2>
                        </div>
                        <div class="cart-table clearfix" id="check">
                        </div>  
                    </div>
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50">
                            <h2>&nbsp;&nbsp;</h2>
                        </div>
                        <div class="cart-table clearfix" id="check">
                        
                        <form name="f" method="post" >
                       		<table	cellpadding="0" cellspacing="1" >
              
                       		<tr>
								<th width=140 align=center  height="22"> 아이디 : </th>
									<td  align="left" height="22">${loginUser.getT_id() }</td>
									<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
							</tr>
						<tr><th width=140 align=center  height="40"></th>
							<tr><th width=140 align=center  height="22"> 이름 : </th>
								<td align="left"><input type="text" 
								name="t_name" style="width: 200px" 
								value="${loginUser.getT_name() }" ></td>
							</tr>
							<tr><th width=140 align=center  height="40"></th>
							<tr><th width=140 align=center  height="40"> 비밀번호 : </th>
								<td align="left" height="40"><input type="password" name="t_pass" style="width: 200px" value="" ></td>
							</tr>
							<tr><th width=140 align=center  height="40"> 비밀번호확인 : </th>
								<td align="left" height="40"><input type="password" name="t_pass2" style="width: 200px" value="" ></td>
							</tr>
							
							<tr><th width=140 align=center  height="20"></th>
							<tr><th width=140 align=center  height="22"> 핸드폰 : </th>
								<td align="left"><input type="text" name="t_phone" style="width: 200px" value="${loginUser.getT_phone() }"  ></td>
							</tr>
							
								<tr><th width=140 align=center  height="30"></th>
							<tr><th width=140 align=center  height="22"> 이메일 : </th>
								<td align="left"><input type="text" name="t_email" style="width: 230px" value="${loginUser.getT_email() }"  ></td>
							</tr>
							<form>
							</form>
							<tr><th width=140 align=center  height="30"></th>
							<tr><th width=140 align=center  height="22"> 사진 : </th>
								<td align="left"><input type="file" name="t_photo" accept="" style="width: 230px" ></td>
							</tr>
							
							<tr><th width=140 align=center  height="30"></th>
							<tr><th width=140 align=center  height="22"> 상세정보 : </th>
								<td align="left"><textarea name="t_detail" cols="50" rows="5" style="width: 400px">${loginUser.getT_detail() }</textarea></td>
							</tr>
			
					<tr><th width=140 align=center  height="30"></th>
							<tr>
								<th width=140 align=center  height="22"> 주소 : </th>
									<td align="left" height="22"> 
										<input type="text" id="postcode" style="width: 100px"placeholder="우편번호">	
									<td>
										<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
									</td>
									<tr><th width=140 align=center  height="40"></th>
										<td>
											<input type="text" id="m_addr" name="t_location" style="width: 300px" placeholder="주소"><br>
										</td>
									<tr><th width=140 align=center  height="22">&nbsp;&nbsp;&nbsp;&nbsp;</th>
										<td>
											<input type="text" id="detailAddress" style="width: 150px" placeholder="상세주소">
										</td>
										<td style="padding-left: 40px">
										<input type="text" id="extraAddress" style="width: 150px" placeholder="참고항목"></td>
									</tr>
							
	
				         </table>
			         </form><br/>
				         	<div class="form-group"> </div>   
	
							 <div class="form-group">
							 	<table>
							 	<tr>
							 	<td style="padding-top: 50px;padding-left:200px">                               
							 		<input type="button" class="btn btn-info btn-md" value="정보수정" style="background-color: #FBB710; border-color: #FBB710" onClick="teacher_modify_action()">
                            	</td>
                            	<tr>
                            	</table>
                            </div>                       	
                                                	
                           
                        </div>
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