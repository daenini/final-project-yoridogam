DROP TABLE reservation CASCADE CONSTRAINTS;

CREATE TABLE reservation(
		rsv_no                        		NUMBER(10)		 NOT NULL,
		rsv_total                     		NUMBER(10)		 NULL ,
		rsv_type                      		VARCHAR2(20)		 NULL ,
		rsv_qty                       		NUMBER(10)		 NULL ,
		rsv_date                      		VARCHAR2(100)		 NULL ,
		rsv_time                      		VARCHAR2(100)		 NULL ,
		rsv_payDate                   		DATE		 DEFAULT sysdate		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE reservation_rsv_no_SEQ;

CREATE SEQUENCE reservation_rsv_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_PK PRIMARY KEY (rsv_no);
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,8900,'현장결제',1,'2021-11-10','10:00-11:00',sysdate,'member1',5);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,19800,'카카오페이',2,'2021-11-10','11:00-12:00',sysdate,'member1',7);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,45900,'무통장입금',1,'2021-11-10','10:00-11:00',sysdate,'member1',11);

 insert into reservation(rsv_no, rsv_total, rsv_type, rsv_qty, rsv_date, rsv_time, rsv_paydate, m_id, p_no)
values(RESERVATION_RSV_NO_SEQ.nextval,91800,'카드결제',2,'2021-11-10','13:00-14:00',sysdate,'member1',12);

commit;