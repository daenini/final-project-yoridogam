/**************************************
 이름     널?       유형           
------ -------- ------------ 
CI_NO  NOT NULL NUMBER(10)   
CI_QTY          NUMBER(10)   
P_NO            NUMBER(10)   
M_ID            VARCHAR2(20) 
 **************************************/

/******************************
				create
 *******************************/
 --m_id 회원 오프라인 강의 예약

insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,?,?,?,?,?,sysdate,?,?);

insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,30000,'네이버페이',1,'2021/10/21','10:00-11:00',sysdate,'대현',1);
 /*****************************
				delete
 ******************************/
--m_id 회원 특정 예약 취소 및 내역 삭제
delete from reservation where rsv_no=? and m_no=?;

delete from reservation where rsv_no=1 and m_no=1;
--m_id 회원 전체 예약 내역 삭제
delete from reservation where m_id=?;
 
 /*****************************
				select
 ******************************/
 --m_id 회원 예약 전체 조회
 select * from reservation where m_id=?;
 
 select * from reservation where m_id=1;
 
 select * from product_time  where pt_date= ? and pt_time= ? and p_no= ?;
 --m_id 회원 예약 특정 상세 조회
 select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_id=?;
 
 select * from product p join reservation rsv on rsv.p_no=p.p_no where rsv.m_id=1;
 
 