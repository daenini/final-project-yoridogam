// login , memberInsertPage , memberInsert , shopping_main , memberModify , memberDelete

function teacher_login_action() {
	if(f.t_id.value==""){
		alert("아이디를 입력하세요.");
		f.t_id.focus();
		return false;
	}
	if(f.t_pass.value==""){
		alert("비밀번호를 입력하세요.");
		f.t_pass.focus();
		return false;
	}

	f.action = "teacher_login_action"
	f.submit();
}


function teacher_write_form() {
	f.action = "teacher_write_form"
	f.submit();
}

function teacher_write_action() {
	if (f.t_id.value == "") {
		alert("사용자 아이디를 입력하세요.");
		f.t_id.focus();
		return false;
	}
	if (f.t_name.value == "") {
		alert("이름을 입력하세요.");
		f.t_name.focus();
		return false;
	}
	if (f.t_pass.value == "") {
		alert("비밀번호를 입력하세요.");
		f.t_pass.focus();
		return false;
	}
	if (f.t_pass2.value == "") {
		alert("비밀번호확인을 입력하세요.");
		f.t_pass2.focus();
		return false;
	}
	if (f.t_phone.value == ""){
		alert("핸도폰번호를 입력하세요.");
		f.t_phone.focus();
		return false;
	}
	if (f.t_email.value == ""){
		alert("이메일을 입력하세요.");
		f.t_email.focus();
		return false;
	}
	if (f.t_photo.value == "") {
		alert("사진을 업로드해주세요.");
		f.t_photo.focus();
		return false;
	}
		if (f.t_detail.value == "") {
		alert("상세정보를 입력하세요.");
		f.t_detail.focus();
		return false;
	}
	if (f.t_location.value == "") {
		alert("주소를 입력하세요.");
		f.t_location.focus();
		return false;
	}

	if (f.t_pass.value != f.t_pass2.value) {
		alert("비밀번호 비밀번호확인은 일치해야 합니다.");
		f.t_pass.focus();
		f.t_pass.select();
		return false;
	}
	f.action = "teacher_write_action";
	f.method='POST';
	f.submit();
}
	
function home_main() {
	f.action = "home"
	f.submit();
}
function teacher_detail() {
	f.action = "teacher_detail"
	f.submit();
}

function teacher_modify_form() {
	ff.action = "teacher_modify_form";
	ff.method = "POST";
	ff.submit();
}
function teacher_modify_action() {
		document.f.action = "teacher_modify_action";
		document.f.method='POST';
		document.f.submit();
	}

function teacher_remove_action() {
	if(confirm("정말 탈퇴 하시겠습니까?")){
		ff.action = "teacher_remove_action";
		ff.method = "POST";
		ff.submit();
	}
}


function id_duplicate_check(){
		window.open('teacher_duplicate_form','checkForm','width=500,height=300,resizable = no,scrollbar = no');
	}
	
	function id_duplicate_check2() {
		var userId=document.getElementById("sTeacherId").value;
		if(sTeacherId==null|| sTeacherId==''){
			alert('아이디를 입력하시고 중복체크를 하세요.');
			return;
		}
		document.getElementById('checkForm').action='teacher_duplicate_action';
		document.getElementById('checkForm').method='POST';
		document.getElementById('checkForm').submit();
		
	}

	function id_duplicate_send_value() {
		opener.document.f.t_id.value = window.document.getElementById('sTeacherId').value;
		window.close();
	}
	
	
	/*************************AJAX*************************/
	// 강사 상품등록
/*
	$(document).ready(function(){
		$('#productCreate').click(function(){
			$('#check').empty();
			$('#check').load('product_insert_form');
		})
	})
*/
	
	// 강사 상세리스트 보기
	$(document).ready(function(){
		$('#productList').click(function(){
			$('#check').empty();
			$('#check').load('teacher_product_list').hide().fadeIn("slow");
		})
	})
	
	
	
$('button[name="ptdetail"]').click(function(){
	alert("d");
	var pt_no=$(this).val();
	if($('.abc'+pt_no).css("display") == "none"){
    $('.abc'+pt_no).show();
} else {
    $('.abc'+pt_no).hide();
}
})