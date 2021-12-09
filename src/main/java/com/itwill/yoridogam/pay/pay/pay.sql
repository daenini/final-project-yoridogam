/**************************************
 이름     널?       유형           
------ -------- ------------ 
PAY_NO    NOT NULL NUMBER(10)   
PAY_DATE           DATE         
PAY_TOTAL          VARCHAR2(10) 
PAY_TYPE           VARCHAR2(30) 
M_ID               VARCHAR2(20) 
 **************************************/

/******************************
				create
 *******************************/
 --m_id 회원 온라인 강의 결제
 insert into pay(pay_no, pay_date, pay_total, pay_type, m_id) values(PAY_PAY_NO_SEQ.nextval,sysdate,?,?,?);

 /*****************************
				delete
 ******************************/
--특정 결제 취소 및 내역 삭제(delete cascade - pay_item)
delete from pay where pay_no=?;
--m_id 회원의 모든 결제 내역 삭제(delete cascade - pay_item)
delete from pay where m_id=?;
 
 /*****************************
				select
 ******************************/
 --m_id 회원 수강내역 존재 여부
 select count(*) from pay where m_id=?;
  --m_id 회원 특정수강내역 존재 여부
 -- select count(*) from pay where m_id=? and pay_no=?;
 --m_id 회원 결제 특정 조회
 select * from pay where pay_no=?;
 --m_id 회원 결제 전체 조회
 select * from pay where m_id=?;
 --m_id 회원 결제 상세 조회
 select * from pay py join pay_item pi on py.pay_no=pi.pay_no join product p on pi.p_no=p.p_no where py.m_id=?;
 --m_id 회원 결제 특정 상세 조회
 select * from pay py join pay_item pi on py.pay_no=pi.pay_no join product p on pi.p_no=p.p_no join member m on py.m_id = m.m_id where py.pay_no=?;

