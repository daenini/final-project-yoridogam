<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type="text/javascript" src="js/member.js"></script>  
        <!-- Header Area Start -->
		<%@include file="/WEB-INF/views/common/include_header.jsp"%>
        <!-- Header Area End -->
        
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
						<div >
						<input type="button" class="btn btn-info btn-md"  id="interestList" style="background-color: #FBB710; border-color: #FBB710" value="관심강의">&nbsp;&nbsp; 
						<input type="button" class="btn btn-info btn-md"  id="boardList" style="background-color: #FBB710; border-color: #FBB710" value="내가 쓴 글" >&nbsp;&nbsp;
						<input type="button" class="btn btn-info btn-md"  id="payList" style="background-color: #FBB710; border-color: #FBB710" value="결제내역" >&nbsp;&nbsp;
						<input type="button" class="btn btn-info btn-md" id="rsvList"  style="background-color: #FBB710; border-color: #FBB710" value="오프라인 수업"> 
						<h3>&nbsp;&nbsp;</h3>
         			   </div>

                        <div class="cart-table clearfix" id="check">
						<section>
						<p>관심 카테고리</p>
						</section>
						<select id="categorySelect">
							<option  value="all">-전체-
						<c:forEach var="interest" items="${interestList}">
							<option value="${interest.mi_interest }">${interest.mi_interest }
						</c:forEach>
						</select><br></br>
						<table class="table table-responsive">
						<thead>
							<tr style="width: 750px">
								<th scope="col">강의 사진</th>
								<th scope="col">강의  명</th>
								<th scope="col">강의 유형</th>
								<th scope="col">강의 상세</th>
							</tr>
						</thead>
						<tbody id="interestProduct">
						<c:forEach var="interest" items="${interestList}">
							<c:forEach var="product" items="${productList }">
							<form >
							<c:if test="${interest.mi_interest==product.p_category }">
								<tr style="width: 750px">
											<td align="left" scope="row"><a href="product_detail?p_no=${product.p_no }"><img src="${product.p_photo }" width="70%"/></a></td>	 
											<td scope="row">${product.p_name}</td>
											<td scope="row">${product.p_type}</td>
											<td scope="row" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${product.p_detail}</td>
										</tr>
								</c:if>
								</form>
							</c:forEach>
						</c:forEach>
						</tbody>
						</table>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                    <form name="ff" method="post">
                    <table>
                            <h5>회원정보</h5><hr></hr>
                            <ul class="summary-table">
                              	<li><span>아이디 : </span> <span>${loginUser.m_id }</span></li>
                                <hr>
                                <li><span>이름 : </span> <span>${loginUser.m_name }</span></li>
                                <hr>
                                <li><span>이메일 : </span> <span>${loginUser.m_email }</span></li>
                                <hr>
                                <li><span>핸드폰번호 : </span> <span>${loginUser.m_phone }</span></li>
                                <hr>
                                <li><span>주소 : </span> <span>${loginUser.m_addr }</span></li>
                                <hr>
                                <li><span>성별 : </span> <span>${loginUser.m_gender }</span></li>
                                <hr>
                            </ul>
                       </table>   
                    
                           		<a style="padding-left: 60"><input type="button" class="btn btn-info btn-md" style="background-color: #FBB710; border-color: #FBB710" value="회원수정" onClick="member_modify_form()"></a>   
                           		<a>&nbsp;&nbsp;&nbsp;</a>
                           		<a><input type="button" class="btn btn-info btn-md" style="background-color: #FBB710; border-color: #FBB710" value="회원탈퇴" onClick="member_remove_action()"></a>    
                      
						</form>		
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
	<script src="js/member.js"></script>
</body>

</html>