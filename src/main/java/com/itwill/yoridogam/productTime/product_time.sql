/**************************************
이름      널? 유형            
------- -- ------------- 
PT_NO      NUMBER(10)    
PT_DATE    DATE          
PT_TIME    VARCHAR2(100) 
P_NO       NUMBER(10)
 **************************************/

/******************************
				create
 *******************************/
 --(강사) 오프라인 강의 강의시간 등록
 insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) values(PRODUCT_TIME_PT_NO_SEQ.nextval,?,?,null,?,?);

 
 /*****************************
				update
 ******************************/
 --(강사) 특정 강의시간 수정
 update product_time set pt_time=? where pt_no=? and p_no=?;

 -- 예약시 예약된 인원 수정
  update product_time set pt_rsv=pt_rsv+? where pt_no=?;
  
 /*****************************
				delete
 ******************************/
 --(강사) 특정 강의시간 삭제
 delete from product_time where pt_no=?;
 
 /*****************************
				select
 ******************************/
 --강의 시간 조회
	select * from product_time where p_no=?;
 
-- 강의 pt_rsv 조회
	select pt_rsv from product_time where pt_no=?;
-- 강의 최대 인원 조회
	select pt_max form product_time where pt_no=?;	
	
	
 /*
  <service에서 구현함!> 
  
 --예약 가능한 강의 시간 리스트 조회
 select * from product_time pt join reservation rsv on pt.pt_time!=rsv.rsv_time where pt.p_no=?;
 --(강사)기예약 강의 시간 리스트 조회
 select * from product_time pt join reservation rsv on pt.pt_time=rsv.rsv_time where pt.p_no=?;
 */
 
