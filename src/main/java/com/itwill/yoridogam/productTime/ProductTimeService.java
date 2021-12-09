package com.itwill.yoridogam.productTime;

import java.util.List;



public interface ProductTimeService {

	// 상품별 시간 리스트
	List<ProductTime> selectAll(int p_no)throws Exception;

	// productTime pt_no으로 찾기
	ProductTime selectByNo(int pt_no)throws Exception;

	// productTime pt_no으로 찾기
	ProductTime selectPtNo2(ProductTime productTime)throws Exception;

	// 날짜랑 상품번호 이용해서 시간찾기
	List<ProductTime> selectPtTime(String rsv_date, int p_no)throws Exception;
	
	// 상품별 시간 insert
	int create(ProductTime productTime)throws Exception;

	//특정 강의 시간 수정
	int update(ProductTime productTime)throws Exception;

	//강의 예약한 인원 추가
	int updatePt_rsv(ProductTime productTime)throws Exception;

	// 특정 강의시간 삭제
	int delete(int pt_no)throws Exception;
}