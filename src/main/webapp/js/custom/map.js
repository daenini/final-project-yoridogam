
var pLo=""; // location 
var pName="";
var pPhoto="";
$(document).on("click", "button[name=mapBtn]", function() {
	pLo=$(this).val();
	pName=$(this).attr('p_name');
	pPhoto=$(this).attr('p_photo');
	$("#map").empty();
	map();
})
$(document).on("click", "button[name=detailMap]", function() {
	pLo=$("#detailTLocation").val();
	pName=$(this).attr('p_name');
	pPhoto=$(this).attr('p_photo');
	$('#exampleModalCenter').on('shown.bs.modal', function (e) { // 모달창 켜질 때 딜레이 동안 map()실행되면 지도가 짤림 방지
		map();
	})
})
	
function map(){
var mapContainer = document.getElementById('map'), 
    mapOption = {
        center: new kakao.maps.LatLng(37.49880895832632, 127.03189979811991), // geo 초기값
        level: 3 // 지도의 확대 레벨
    };  

var map = new kakao.maps.Map(mapContainer, mapOption);  // kakao api 지도생성
var geocoder = new kakao.maps.services.Geocoder(); // kakao api lib service 주소->좌표 변환

geocoder.addressSearch(pLo, function(result, status) { // 주소 입력
     if (status === kakao.maps.services.Status.OK) { // 주소가 성공적으로 검색되면
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x); // 위도 경도 값을 얻어 변수에 넣음(array시 유사배열로 들어감..)

        var marker = new kakao.maps.Marker({ // 마킹
            map: map,
            position: coords // 마킹 할 위치
        });
        
		var mapTypeControl = new kakao.maps.MapTypeControl();
		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		
		var zoomControl = new kakao.maps.ZoomControl();
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);


        var infowindow = new kakao.maps.InfoWindow({ // 해당 마커 상단에 띄워질 info 추후 강의명으로 뿌리자
            content: `<div class='mapInfoBox'>${pName}</div>
            				<div align="center"><img width="100" height="100" src="${pPhoto }"></div>
            				<hr><div style="text-align:center;padding:6px 0;">${pLo}</div>`
        });
        infowindow.open(map, marker);

        map.setCenter(coords); // focus
    } 
})
}

$(document).ready(function(){ // dom tree 생성이후  초기 출력
var mapContainer = document.getElementById('map'), 
    mapOption = {
        center: new kakao.maps.LatLng(37.49880895832632, 127.03189979811991), //아이티윌 
        level: 3 
    };  

var map = new kakao.maps.Map(mapContainer, mapOption); 
/*
var mapTypeControl = new kakao.maps.MapTypeControl();
map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
*/
})



$("#region").change(function(){ 
	 $.ajax({
		url:'product_maps_region',
		method:'POST',
		data: {"region":$(this).val()},
		success: function(result){
			if(result.length==0){
				
				//reload 될 부분 또 다른 function으로 분리 할 것.
				$("#classList").empty();
				$("#classList").append(`<span>해당 지역에 강의가 없어요!</span>`)
				return false;
			}
			$("#classList").empty();
			$.each(result, function(i){
			
			$("#classList").append(`<li>`)
			$("#classList").append(`[${result[i].teacher.t_name }] 강사 &nbsp;&nbsp;
                				         	<span style="color: orange;">${result[i].p_name }</span><hr>
                        				  	<button class="btn btn-outline-warning" name="mapBtn" value="${result[i].teacher.t_location }">위치 보기</button>&nbsp;&nbsp;
                          					${result[i].teacher.t_location}`)
			$("#classList").append(`</li><hr>`)
			})
		}
    });
})

