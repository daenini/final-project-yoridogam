package com.itwill.yoridogam.reservation;

import java.util.List;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.teacher.Teacher;

public interface ReservationService {
	
	/*
	 <<예약하면 오프라인예약에 넣어주고 상품시간의 예약된 인원 늘려주기!>>
	 
	reservationDao.insert(resvation reservation,ProductTime productTime,String sUserId);
	reservationDao.insert(인자)
	ProductTime pt =  pt.setpt_rsv(reservaion.rsv_qty+product_timeDao.selectPtNo(productTime.pi_no))
	// pt에 웹에서 받은 rsv_qty랑 selectPtNo의 pt_rsv값을더해서 set한것
	//(selectptNo 은 pt_rsv만 가져오기)
	int rsv = pt.pt_rsv // int에 찾은상품시간 인원 넣고 
	productTimeDao.update(rsv)
	*/
	// 상품 예약
	int insert(Reservation reservation,String sUserId) throws Exception;
	
	// 회원의 예약내역 조회
	List<Reservation> selectAll(String sUserId)throws Exception;
	
	// 상품별 예약 내역 조회
	List<Reservation> selectAllbyP(int p_no)throws Exception;

	// 예약 조회
	Reservation selectRsv_no(int rsv_no) throws Exception;
	
	// 회원의 예약 특정 상세 조회
	List<Reservation> selectById(String sUserId)throws Exception;
	
	// 회원의 DB에 예약할 상품이 있는지 확인하기 위함
	Reservation selectByP_no(Reservation reservation)throws Exception;
	
	// 회원의 특정 예약 취소
	int deletByRsv(int rsv_no)throws Exception;
	
	// 회원의 전체 예약 삭제
	int deleteAll(String sUserId) throws Exception;
	
	//p_no을 이용해서 강사 찾기
	Teacher SelectTByP_no(int p_no) throws Exception;
}
