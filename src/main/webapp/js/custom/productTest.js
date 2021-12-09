$("select[name=p_type]").change(function(){ // select 옵션 값이 변한다면
	var p_type=($(this).val()); // 옵션 value 가져오기
	$(".rowCustom").attr("style", "display:flex"); // rowCustom div css접근, none설정->flex셋팅
}); 

$(document).ready(function(){//update pt
    $("#pt_timeSetting").click(function(){
		$("#exampleModalCenter").modal();
    });
});
$(document).ready(function(){ //detail
    $("button[name=detailMap]").click(function(){
		$("#exampleModalCenter").modal();
    });
});
$('#pt_dateSelect').change(function(e){
	var date = $('#pt_dateSelect').val();
	var p_no = $('input[name=p_no]').val();
	$.ajax({
		type : 'post',
		url : 'pt_date_ajax',
		data : {'pt_date' : date, 'p_no' : p_no },
		dataType:'json',
		success: function(result){
			$('#time_tbody').empty();
			$.each(result, function(i, jsonObject){
			$('#time_tbody').append(`<tr id="timeTr">
                    <td></td>
                    <td>${result[i].pt_time}</td>
                    <td>${result[i].pt_max}</td>
                    <td>${result[i].pt_rsv}</td>
                    <td><input type="checkbox" class="checkPt" value="${result[i].pt_no}"/></td>
					</tr>`);
		    })
		}
	})
});


$("#submitPT").click(function(){
	var p_no=$('input[name=p_no]').val();
	var pt_date=$('input[name=pt_date]').val();
	var pt_time=$('input[name=pt_time]').val();
	var pt_max=$('input[name=pt_max]').val();
	var data={"p_no":p_no, "pt_date":pt_date, "pt_time":pt_time, "pt_max":pt_max};
	$.ajax({ 
		type: 'POST',
		url: "pt_create_action",
		data: JSON.stringify(data),
		contentType: "application/json; charset=UTF-8",
		success: function(pt) {
			alert("강의 시간이 추가 되었습니다.");
			$('#time_tbody').empty();
			$.each(pt, function(i){
			$('#time_tbody').append(`<tr id="timeTr">
                    <td></td>
                    <td>${pt[i].pt_time}</td>
                    <td>${pt[i].pt_max}</td>
                    <td>${pt[i].pt_rsv}</td>
                    <td><input type="checkbox" class="checkPt" value="${pt[i].pt_no}"/></td>
					</tr>`);
		    })
		}
	});
})

$("#deletePt").click(function(){
	var pt_noList=[];
	var pt_date=$('input[name=pt_dateSelect]').val();
	var p_no=$('input[name=p_no]').val();
    $('.checkPt:checked').each(function(){
        var pt_no=$(this).val()
        pt_noList.push(pt_no)
		});
		var data={"pt_noList": pt_noList, "pt_date":pt_date, "p_no":p_no}
		$.ajax({
		type : 'post',
		url : 'product_time_delete_action',
		data : data,
		dataType:'json',
		success: function(result){
			alert("강의 시간이 삭제 되었습니다.");
			$('#time_tbody').empty();
			$.each(result, function(i){
			$('#time_tbody').append(`<tr id="timeTr">
                    <td></td>
                    <td>${result[i].pt_time}</td>
                    <td>${result[i].pt_max}</td>
                    <td>${result[i].pt_rsv}</td>
                    <td><input type="checkbox" class="checkPt" value="${result[i].pt_no}"/></td>
					</tr>`);
					})
			}
		})
})

$("input[name=onOff]").change(function(){
	$("#category").show();
		$(".listCategory").click(function(){
			$("input[name=cancelSearch]").show();
	})
})


$(".listCartAdd").click(function(){
	var p_no=$(this).val();
	data={"p_no":p_no}
	$.ajax({
		url:'cart_insert_list_action',
		method:'POST',
		data: data,
		success: function(){	
		}
	})
})

$("button[name=detailCartAdd]").click(function(){
	var p_no=$(this).val();
	var qty=$("#qty").val();
	data={"p_no":p_no, "qty":qty}
	$.ajax({
		url:'cart_insert_action',
		method:'POST',
		data: data,
		success: function(){	
		}
	})
})



function cartAdd(){
toastr.options = {
	"timeOut": 2000,
}
    toastr.success("장바구니 추가되었습니다", {timeOut: 2000});
}




function listCategory(e){
		var p_type=$('input:radio[name=onOff]:checked').val();
		var p_category=$(e).text();
		var data={"p_category":p_category, "p_type":p_type}
	$.ajax({
		type : 'post',
		url : 'product_list_category',
		data : data,
		dataType:'json',
		success: function(result){
			console.log(result)
			$('#ListCategory').empty();
			$.each(result, function(i){
				$("#ListCategory").append(`
				<div class="col-12 col-sm-6 col-md-12 col-xl-6" >
				<div class="single-product-wrapper">
                            <div class="product-img">
                            	<a href="product_detail?p_no=${result[i].p_no }" >
                                <img src="${result[i].p_photo }" >
                            	</a>
                                <!--<img class="hover-img" src="img/product-img/product2.png" >--> <!-- hover효과 추후 상세정보나 다른 사진삽입 --> 
                            </div>

                            <div class="product-description d-flex align-items-center justify-content-between">
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price"><f:formatNumber> ${result[i].p_price }</f:formatNumber>원</p>
                                    <a href="product_detail?p_no=${result[i].p_no }" >
                                        <h5>${result[i].p_name }</h5>
                                    </a>
                                    <span>
                                        <h6 style="color: red">[${result[i].p_type } 강의]</h6>
                                    </span>
                                </div>
                                <div class="ratings-cart text-right">
                                    <div class="cart" id="cartAdds${result[i].p_no}">
                                    </div>
                                    </c:when>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>`)
				})
				$.each(result, function(i){
					if(result[i].p_type=='온라인'){
						var p_no=result[i].p_no
						$('#cartAdds'+p_no).append(`<button onclick="cartAdd()" class="listCartAdd" style="border: 0px" data-toggle="tooltip" data-placement="left" title="장바구니 담기" value="${result[i].p_no }">
                                         담기
                                    	<img src="img/core-img/cart.png" alt=""></button>`)
					}
				
				})
				
				
			}
		})
	}

$(document).ready(function(){
	var star=$(".star").length;
	var review=$(".reviewList").length
	var avgStar=Math.round(star/review);
	
	for(var i=0; i<avgStar; i++){
		$(".ratings").append(`<i class="fa fa-star" aria-hidden="true"></i>`)
	}
	$(".ratings").append(`<span>  (${review}명 참여)</span>`)
	
	for(var i=0; i<avgStar; i++){
	$("#stars").append(`<span class="star" aria-hidden="true">★</span>`)
	}
	$("#stars").append(`<span>  (${review}명 참여)</span>`)
})
	

