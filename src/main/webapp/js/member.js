// login , memberInsertPage , memberInsert , shopping_main , memberModify , memberDelete

function member_login_action() {
	if(f.m_id.value==""){
		alert("아이디를 입력하세요.");
		f.m_id.focus();
		return false;
	}
	if(f.m_pass.value==""){
		alert("비밀번호를 입력하세요.");
		f.m_password.focus();
		return false;
	}

	f.action = "member_login_action"
	f.submit();
}

function member_write_form() {
	f.action = "member_write_form"
	f.submit();
}

function member_write_action() {
	if (f.m_id.value == "") {
		alert("사용자 아이디를 입력하세요.");
		f.m_id.focus();
		return false;
	}
	if (f.m_name.value == "") {
		alert("이름을 입력하세요.");
		f.m_name.focus();
		return false;
	}
	if (f.m_pass.value == "") {
		alert("비밀번호를 입력하세요.");
		f.m_pass.focus();
		return false;
	}
	if (f.m_pass2.value == "") {
		alert("비밀번호확인을 입력하세요.");
		f.m_pass2.focus();
		return false;
	}
	if (f.m_addr.value == "") {
		alert("주소를 입력하세요.");
		f.m_addr.focus();
		return false;
	}
	if (f.m_email.value == ""){
		alert("이메일을 입력하세요.");
		f.m_email.focus();
		return false;
	}
	if (f.m_phone.value == ""){
		alert("핸도폰번호를 입력하세요.");
		f.m_phone.focus();
		return false;

	}

	if (f.m_pass.value != f.m_pass2.value) {
		alert("비밀번호 비밀번호확인은 일치해야 합니다.");
		f.m_password.focus();
		f.m_password.select();
		return false;
	}
	f.action = "member_write_action";
	f.method='POST';
	f.submit();
}
	
function home_main() {
	f.action = "home"
	f.submit();
}
function member_detail() {
	f.action = "member_detail"
	f.submit();
}

function member_modify_form() {
	ff.action = "member_modify_form";
	ff.method = "POST";
	ff.submit();
}
function member_modify_action() {
		document.f.action = "member_modify_action";
		document.f.method='POST';
		document.f.submit();
	}

function member_remove_action() {
	if(confirm("정말 탈퇴 하시겠습니까?")){
		ff.action = "member_remove_action";
		ff.method = "POST";
		ff.submit();
	}
}

function member_modify_action() {
	if (f.m_pass.value == "") {
		alert("비밀번호를 입력하세요.");
		f.m_pass.focus();
		return false;
	}
	if (f.m_pass2.value == "") {
		alert("비밀번호확인을 입력하세요.");
		f.m_pass2.focus();
		return false;
	}

		if (f.m_addr.value == "") {
		alert("주소를 입력하세요.");
		f.m_addr.focus();
		return false;
	}
	if (f.m_email.value == ""){
		alert("이메일을 입력하세요.");
		f.m_email.focus();
		return false;
	}
	if (f.m_phone.value == ""){
		alert("핸도폰번호를 입력하세요.");
		f.m_phone.focus();
		return false;

	}
	if (f.m_pass.value != f.m_pass2.value) {
		alert("비밀번호 비밀번호확인은 일치해야 합니다.");
		f.m_password.focus();
		f.m_password.select();
		return false;
	}
	document.f.action = "member_modify_action";
	document.f.method='POST';
	document.f.submit();
}

function id_duplicate_check(){
		window.open('member_duplicate_form','checkForm','width=500,height=300,resizable = no,scrollbar = no');
	}
	
	function id_duplicate_check2() {
		var userId=document.getElementById("sUserId").value;
		if(sUserId==null|| sUserId==''){
			alert('아이디를 입력하시고 중복체크를 하세요.');
			return;
		}
		document.getElementById('checkForm').action='member_duplicate_action';
		document.getElementById('checkForm').method='POST';
		document.getElementById('checkForm').submit();
		
	}

	function id_duplicate_send_value() {
		opener.document.f.m_id.value = window.document.getElementById('sUserId').value;
		window.close();
	}
	
	
	/************결제내역 ajx*************/
	$(document).ready(function(){
		$('#payList').click(function(){
			$('#check').empty();
			$('#check').load('pay_list_form').hide().fadeIn("slow");
		})
	})

	
	$(document).ready(function(){
		$('#rsvList').click(function(){
			$('#check').empty();
			$('#check').load('rsv_member_list').hide().fadeIn("slow");
		})
	})
	
	$(document).ready(function(){
		$('#interestList').click(function(){
			location.href="member_detail";
		})
	})
	
		$('#boardList').click(function(){
			$('#check').empty();
			$('#check').load('member_board_list');
	})
	
	$('#categorySelect').change(function(){
		var category = $('#categorySelect').val();
		var data={"mi_interest":category}
		$.ajax({
		type : 'post',
		url : 'category_list',
		data : data,
		success: function(categoryList){
			console.log(categoryList)
			$("#interestProduct").empty()
			$.each(categoryList, function(i){
			$("#interestProduct").append(`
				<tr style="width: 750px">
											<td align="left" scope="row"><a href="product_detail?p_no=${categoryList[i].p_no }"><img src="${categoryList[i].p_photo }" width="70%"/></a></td>	 
											<td scope="row">${categoryList[i].p_name}</td>
											<td scope="row">${categoryList[i].p_type}</td>
											<td scope="row" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;">${categoryList[i].p_detail}</td>
										</tr>
										`)
			})
		}	
	})
})	
	
	