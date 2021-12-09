
/* 원하는 예약 날짜를 선택하면 예약 가능한 시간이 나오게 하는 ajax */

$('#rsv_date').change(function(e){
	
	var date = $('#rsv_date').val();
	$.ajax({
		type : 'post',
		url : 'rsv_date_ajax',
		data : {'rsv_date' : date,
				'p_no' : $(e.target).attr('p-no')
				},
		dataType:'json',
		success: function(result){
			// 컨트롤러에서 받아온 데이터는 result에 담아옴.
         // result는 json 형식으로 받아옴
          $('#rsv_date_time').empty();
          if(result.length ==0){
			$('#rsv_date_time').empty();
			 $('#rsv_date_time').append(`<p>해당 날짜에 가능한 강의시간이 없습니다.</p> `)
		}else{
         $('#rsv_date_time').append( `<select class="w-100" name ="rsv_time" id="rsv_time">`);
         $('#rsv_time').append(`<option >원하는 시간대를 골라주세요</option>`)
         $.each(result, function(i, jsonObject){
         if(result[i].pt_max > result[i].pt_rsv){ 
         $('#rsv_time').append(`<option value="${result[i].pt_time}">${result[i].pt_time}</option>`)
          }
          })
         $('#rsv_date_time').append( `</select>`);
      		}
      	}
   })
});

/* time을 골랐으면 날짜 시간 상품 넘겨서 가능한 인원 가져오기 */

$("#rsv_date_time").on("change","#rsv_time",function(e){
	var time = $('#rsv_time').val();
	var date = $('#rsv_date').val();
	var p_no = $('#rsv_date').attr('p-no')
	$.ajax({
		type : 'post',
		url : 'rsv_time_ajax',
		data : {'rsv_date' : date,
				'p_no' : $('#rsv_date').attr('p-no'),
				'rsv_time' :time
				},
		dataType:'json',
		success: function(result){
			 $('#rsv_date_qty').empty();
			 $('#rsv_date_qty').append(`<select class="w_100" name="rsv_qty" id="rsv_qty">`);//append 끝
			 var ptLength = result.pt_max-result.pt_rsv;
			 var qty =1
            for(var i = 0; i< ptLength; i++){
				$('#rsv_qty').append(`<option value="${qty}">${qty}</option>`)
				qty++
			};
             $('#rsv_date_qty').append(`</select>`);
				
		}});//ajax 끝
});

/* 인원이 늘었으면 가격도 더하기 */
$("#rsv_date_qty").on("change","#rsv_qty",function(e){
	
	var qty = $('#rsv_qty').val();
	$.ajax({
		type : 'post',
		url : 'rsv_qty_ajax',
		data : {'p_no' : $('#rsv_date').attr('p-no')},
		dataType:'json',
		success: function(result){
			 $('#rsv_pay_total').empty();
			$('#rsv_pay_total').append(
				`<input type="hidden"  id="rsv_total" name="rsv_total" value="${result.p_price*qty}">`);
			 var n1 = result.p_price*qty;
			 const n2 = n1.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","); //가격 , 찍는 코드
			$('#rsv_pay_total').append(`<label for="rsv_total">${n2} 원 </label>`);
		}});//ajax 끝

});

	$('button[name=deleteRsv]').click(function(){
			var cf = confirm("결제를 취소하시겠습니까?");
			
			if (cf) {
				var rsv_no=$(this).val();
				var ajaxData = {"rsv_no" : rsv_no};
				$.ajax({
					url: "rsv_no_delete",
					method: "POST",
					data: ajaxData,
					success: function(){
						$('#check').empty();
						$('#check').load('rsv_member_form').hide().fadeIn("slow");
					}
					
				})

		}});


// 강사 디테일에서 등록된 상품 디테일보기
 $(document).on("click", 'button[name=detailBtn]', function() {
		var p_no=($(this).val());
		var data = { "p_no": p_no };

					$('#detail').empty();
					$('#detail').load('teacher_product_detail',data).hide().fadeIn("3000")

	});
	
// 강사 디테일에서 등록된 상품 수정하기
	$('#updateBtn').click(function(){
		document.updateProduct.submit();
	});
// 강사 디테일에서 등록된 상품 삭제하기
 	$(document).on("click", 'button[name=deleteProductBtn]', function() {
		var p_no=$(this).val();
		var data={"p_no":p_no}
		$.ajax({
		type : 'post',
		url : 'product_delete_action',
		data : data,
		dataType:'json',
		success: function(pList){
				$("#tpList").empty()
				$.each(pList, function(i){
				$("#tpList").append(`
					<tr class="tpListTr${i}">
                    <td scope="row">${pList[i].p_no}</td>
                    <td scope="row">${pList[i].p_name}</td>
                    <td scope="row">${pList[i].p_type}</td>
                    <td scope="row"><form action="product_update_form" method="post" name="updateProduct"><button class="btn btn-outline-warning" id="updateBtn" name="p_no" value="${pList[i].p_no}">수정</button></form></td>
                    <td scope="row"><button class="btn btn-outline-warning" name="deleteProductBtn" value="${pList[i].p_no}">삭제</button></td>
                  </tr>				
				`)
				})
				$.each(pList, function(i){
					var type="오프라인"
					if(pList[i].p_type == type){
						$(".tpListTr"+i).append(`<td scope="row"><button class="btn btn-outline-warning" name="detailBtn" value="${pList[i].p_no}">상세보기</button></td>`)
					}
				})
			}
		})
	})
//카카오페이 모양만..	
$("#kakaoPay").change(function () {
	        var url = "pay_method";
            var name = "카카오 결제";
            var option = "width = 600, height = 600, top = 100, left = 200, location = no"
            window.open(url, name, option);
})
	
// 강사 디테일에서 등록된 상품 디테일에서 회원 디테일
	$('button[name="ptdetail"]').click(function(){
		var pt_no = $(this).val();
		
		if($('.abc'+pt_no).css('display') === 'none'){
			$('.abc'+pt_no).show();
		}else if($('.abc'+pt_no).css('display') != 'none'){
			$('.abc'+pt_no).hide();
		}
		
	});//끝
	





