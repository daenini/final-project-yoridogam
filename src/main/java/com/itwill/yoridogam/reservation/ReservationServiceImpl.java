package com.itwill.yoridogam.reservation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.product.Product;
import com.itwill.yoridogam.productTime.ProductTime;
import com.itwill.yoridogam.productTime.ProductTimeDao;
import com.itwill.yoridogam.productTime.ProductTimeService;
import com.itwill.yoridogam.teacher.Teacher;
import com.itwill.yoridogam.product.ProductDao;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDao reservationDao;
	@Autowired
	private ProductTimeDao productTimeDao;
	@Autowired
	private ProductTimeService productTimeService;
	@Autowired
	private ProductDao productDao;
	
	// 상품 예약
	@Override
	public int insert(Reservation reservation,String sUserId) throws Exception {
		String date = reservation.getRsv_date();
		String time = reservation.getRsv_time();
		int p_no = reservation.getProduct().getP_no();
		ProductTime pt = new ProductTime(0, date, time, 0, 0, productDao.selectByNo(p_no));
		ProductTime PTrsv = productTimeDao.selectPtNo2(pt);
		// 웹에서 받아온 reservation값을 넣어서 DB reservaion insert
		// selectPtNo 데이터를 PTrsv에 넣어준다	
		int rsv = PTrsv.getPt_rsv();
		int newQty = reservation.getRsv_qty();
		PTrsv.setPt_rsv( rsv+newQty);
		 productTimeDao.updatePt_rsv(PTrsv);
		return reservationDao.create(reservation);
	}

	// 회원의 예약내역 조회
	@Override
	public List<Reservation> selectAll(String sUserId) throws Exception {
		
		return reservationDao.selectAll(sUserId);
	}
	
	@Override
	public Reservation selectRsv_no(int rsv_no) throws Exception {
		
		return reservationDao.selectRsv_no(rsv_no);
	}
	
	// 상품으로 예약한 인원 조회
	@Override
	public List<Reservation> selectAllbyP(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return reservationDao.selectAllbyP(p_no);
	}

	// 회원의 예약 특정 상세 조회
	@Override
	public List<Reservation> selectById(String sUserId) throws Exception {
		
		return reservationDao.selectById(sUserId);
	}
	
	// 회원의 DB에 예약할 상품이 있는지 확인하기 위함
	public Reservation selectByP_no(Reservation reservation)throws Exception{
		
		return  reservationDao.selectByP_no(reservation);
	}

	// 회원의 특정 예약 취소
	@Override
	public int deletByRsv(int rsv_no) throws Exception {
		Reservation reservation = reservationDao.selectRsv_no(rsv_no);
		int p_no = reservation.getProduct().getP_no();
		String rsv_date = reservation.getRsv_date();
		String rsv_time = reservation.getRsv_time();
		ProductTime pt= productTimeDao.selectPtNo2(new ProductTime(0, rsv_date, rsv_time, 0, 0, new Product(p_no, null, null, null, null, null, null, null)));
		int rsv = reservation.getRsv_qty();
		int nowQty = pt.getPt_rsv();
		pt.setPt_rsv(nowQty-rsv);
		productTimeService.updatePt_rsv(pt);
		return reservationDao.deleteById(rsv_no);
	}

	// 회원의 전체 예약 삭제
	@Override
	public int deleteAll(String sUserId) throws Exception {
	
		return reservationDao.deleteAll(sUserId);
	}
	
	//p_no 이용해서 강사 찾기
	@Override
	public Teacher SelectTByP_no(int p_no) throws Exception {

		return productDao.selectTByP_no(p_no);
	}





}
