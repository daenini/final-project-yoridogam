package com.itwill.yoridogam.reservation;

import java.util.List;

public interface ReservationDao {
/*
 <insert> m_id 회원 오프라인 강의 예약
 */
	int create(Reservation reservation) throws Exception;
/*
 <selectAll> 회원의 예약 전체 조회
 */
	List<Reservation> selectAll(String sUserId) throws Exception;
/*
 <selectAll> 회원의 예약 전체 조회
*/
	List<Reservation> selectAllbyP(int p_no)throws Exception;
	
/*
   에약 조회
*/
	Reservation selectRsv_no(int rsv_no) throws Exception;
/*
 <select> 회원의 예약 특정 상세 조회
 */
	List<Reservation> selectById(String sUserId) throws Exception;	
/*
 <select> 예약할 상품이 회원의 예약 DB에 있는지 확인
 */
	Reservation selectByP_no(Reservation reservation)throws Exception;
/*
 <delete> 회원 특정 예약 취소 및 내역 삭제
 */
	int deleteById(int rsv_no) throws Exception;
/*
 <delectAll> 회원 전체 예약 내역  삭제
 */
	int deleteAll(String sUserId) throws Exception;
}
