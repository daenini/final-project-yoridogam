//결제 금액 계산 js로
$(document).ready(function(){
	var total=0;
	var price=document.getElementsByName("p_price");
	var qty=document.getElementsByName("qty");
	
	for(var i=0; i<price.length; i++){
		total+=parseInt(qty[i].value)*parseInt(price[i].value)
	}
	document.getElementById("total_price").innerHTML=total;
	document.getElementsByName("pay_total")[0].value=String(total);
})

// 주문디테일 모달창
    $("#modal_open_btn").click(function(){
        $("#modal").attr("style", "display:block");
    });
   
     $("#modal_close_btn").click(function(){
        $("#modal").attr("style", "display:none");
    });      
  
// 결제내역 상세 - 결제list 출력용
	$('button[name=detailBtn]').click(function(){
		var pay_no=($(this).val());
		var data = { "pay_no": pay_no };
					$('#productDetail').empty();
					$('#productDetail').load('payItem_detail_form',data).hide().fadeIn("3000")
	})
// 결제내역 삭제 - 결제list 출력용
	$('button[name=deleteBtn]').click(function(){
		var confirmD=confirm( "해당 결제내역을 삭제하시겠습니까?");
		if(confirmD){
			var pay_no=($(this).val());
			var data = { "pay_no": pay_no };
			$.ajax({
				url:'pay_delNo_action',
				method:'POST',
				data: data,
				success: function(){
						$('#check').empty();
						$('#check').load('pay_list_form').hide().fadeIn("slow");
					}
			})
		}
	})
	
	$('button[name=createReview]').click(function(){
		$("#exampleModalCenter").modal();
		p_no=$(this).val();
		p_name=$(this).attr('p_name');
		p_photo=$(this).attr('p_photo');
		
		$("#pPhoto").append(`<img width="100" height="100" src="${p_photo }">
										<span>${p_name}<span>
										<input type="hidden" class="p_noRV" value="${p_no}">`)
		
	})
	var r_star=0;
	$('#star a').click(function(){
		$(this).parent().children("a").removeClass("on");
		$(this).addClass("on").prevAll("a").addClass("on");
		r_star=$(this).attr("r_grade");

		})
	
	$("#submitRV").click(function(){
	var p_no=$('.p_noRV').val();
	var r_grade=r_star;
	var r_detail=$("#r_detail").val();
	
	var data={"p_no" : p_no, "r_grade":r_grade, "r_detail" : r_detail};
	$.ajax({ 
		type: 'POST',
		url: "review_create_action",
		data: data,
		success: function() {
			alert("한줄평 등록되었습니다");
			$('#exampleModalCenter').modal("hide");
		}
	});
})

	$("button[name=deleteRv]").click(function(){
		var r_no=$(this).val();
		var data={"r_no":r_no}
		$.ajax({ 
		type: 'POST',
		url: "review_delete_action",
		data: data,
		success: function(rList) {
			alert("삭제되었습니다");
			location.reload();
			}	
		})
	})

$("#kakaoPay").change(function () {
	        var url = "pay_method";
            var name = "카카오 결제";
            var option = "width = 600, height = 600, top = 100, left = 200, location = no"
            window.open(url, name, option);
})



			 