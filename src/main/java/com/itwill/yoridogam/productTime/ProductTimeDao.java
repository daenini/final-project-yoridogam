package com.itwill.yoridogam.productTime;

import java.util.List;

public interface ProductTimeDao {
// <create> (강사) 오프라인 강의시간 등록
	int create(ProductTime productTime) throws Exception;
	
// <selectAll> 강의 시간 조회
	List<ProductTime> selectAll(int p_no) throws Exception;

	
// <selectPtNo> 특정 강의 예약된 인원 조회
	ProductTime selectPtNo(int pt_no) throws Exception;
	
// <selectPtNo> 특정 강의 예약된 인원 조회
	ProductTime selectPtNo2(ProductTime productTime) throws Exception;
	
// <selectPtTime> 특정 강의 특정 날짜에 시간 조회
	List<ProductTime>selectPtTime(ProductTime productTime)throws Exception;
	
// <update> 특정 강의시간 수정
	int update(ProductTime productTime) throws Exception;

// <addPt_rsv> 강의 예약한 인원 추가 수정
	int updatePt_rsv(ProductTime productTime) throws Exception;
	
// <delete> 특정 강의시간 삭제
	int delete(int pt_no) throws Exception;
}
