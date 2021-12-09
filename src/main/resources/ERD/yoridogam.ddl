DROP TABLE member_interest CASCADE CONSTRAINTS;
DROP TABLE product_time CASCADE CONSTRAINTS;
DROP TABLE inquiry CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE pay_item CASCADE CONSTRAINTS;
DROP TABLE pay CASCADE CONSTRAINTS;
DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE teacher CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;

CREATE TABLE member(
		m_id                          		VARCHAR2(20)		 NOT NULL,
		m_name                        		VARCHAR2(20)		 NOT NULL,
		m_pass                        		VARCHAR2(30)		 NOT NULL,
		m_addr                        		VARCHAR2(100)		 NOT NULL,
		m_email                       		VARCHAR2(50)		 NOT NULL,
		m_phone                       		VARCHAR2(16)		 NOT NULL,
		m_gender                      		VARCHAR2(10)		 NOT NULL
);


CREATE TABLE teacher(
		t_id                          		VARCHAR2(20)		 NOT NULL,
		t_name                        		VARCHAR2(20)		 NOT NULL,
		t_pass                        		VARCHAR2(30)		 NOT NULL,
		t_phone                       		VARCHAR2(16)		 NOT NULL,
		t_email                       		VARCHAR2(50)		 NOT NULL,
		t_photo                       		VARCHAR2(500)		 NOT NULL,
		t_detail                      		VARCHAR2(500)		 NOT NULL,
		t_location                    		VARCHAR2(100)		 NOT NULL
);


CREATE TABLE product(
		p_no                          		NUMBER(10)		 NOT NULL,
		p_name                        		VARCHAR2(500)		 NULL ,
		p_detail                      		VARCHAR2(1000)		 NULL ,
		p_category                    		VARCHAR2(30)		 NULL ,
		p_price                       		VARCHAR2(500)		 NULL ,
		p_type                        		VARCHAR2(30)		 NULL ,
		p_photo                       		VARCHAR2(500)		 NULL ,
		t_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE product_p_no_SEQ;

CREATE SEQUENCE product_p_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;




CREATE TABLE review(
		r_no                          		NUMBER(10)		 NOT NULL,
		r_title                       		VARCHAR2(400)		 NULL ,
		r_content                     		VARCHAR2(1000)		 NULL ,
		r_grade                       		NUMBER(10)		 NULL ,
		r_photo                       		VARCHAR2(500)		 NULL ,
		r_date                        		DATE		 DEFAULT sysdate		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE review_r_no_SEQ;

CREATE SEQUENCE review_r_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;




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



CREATE TABLE pay(
		pay_no                        		NUMBER(10)		 NOT NULL,
		pay_date                      		DATE		 NULL ,
		pay_total                     		VARCHAR2(10)		 NULL ,
		pay_type                      		VARCHAR2(30)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE pay_pay_no_SEQ;

CREATE SEQUENCE pay_pay_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE pay_item(
		pi_no                         		NUMBER(10)		 NULL ,
		pi_qty                        		NUMBER(10)		 NULL ,
		pay_no                        		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE pay_item_pi_no_SEQ;

CREATE SEQUENCE pay_item_pi_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE cart(
		ci_no                         		NUMBER(10)		 NOT NULL,
		ci_qty                        		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE cart_ci_no_SEQ;

CREATE SEQUENCE cart_ci_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE notice(
		noti_no                       		NUMBER(10)		 NOT NULL,
		noti_title                    		VARCHAR2(100)		 NULL ,
		noti_date                     		DATE		 DEFAULT sysdate		 NULL ,
		noti_viewCount                		NUMBER(10)		 DEFAULT 0		 NULL ,
		noti_content                  		VARCHAR2(1000)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE notice_noti_no_SEQ;

CREATE SEQUENCE notice_noti_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE inquiry(
		ib_no                         		NUMBER(10)		 NOT NULL,
		ib_title                      		VARCHAR2(100)		 NULL ,
		ib_content                    		VARCHAR2(1000)		 NULL ,
		ib_date                       		DATE		 DEFAULT sysdate		 NULL ,
		ib_viewCount                  		NUMBER(10)		 DEFAULT 0		 NULL ,
		ib_depth                      		NUMBER(10)		 DEFAULT 0		 NULL ,
		ib_groupno                    		NUMBER(10)		 NOT NULL,
		ib_step                       		NUMBER(10)		 NOT NULL,
		m_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE inquiry_ib_no_SEQ;

CREATE SEQUENCE inquiry_ib_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE SEQUENCE seqInquiry start with 1 increment by 1 nocache;

CREATE TABLE product_time(
		pt_no                         		NUMBER(10)		 NULL ,
		pt_date                       		VARCHAR2(100)		 NULL ,
		pt_max                       		NUMBER(10)		 NULL ,
		pt_rsv                       		NUMBER(10)		 DEFAULT 0		 NULL ,
		pt_time                       		VARCHAR2(100)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE product_time_pt_no_SEQ;

CREATE SEQUENCE product_time_pt_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE member_interest(
		mi_no                         		NUMBER(10)		 NULL ,
		mi_interest                   		VARCHAR2(30)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE member_interest_mi_no_SEQ;

CREATE SEQUENCE member_interest_mi_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;




ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (m_id);

ALTER TABLE teacher ADD CONSTRAINT IDX_teacher_PK PRIMARY KEY (t_id);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (p_no);
ALTER TABLE product ADD CONSTRAINT IDX_product_FK0 FOREIGN KEY (t_id) REFERENCES teacher (t_id) ON DELETE CASCADE ;


ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (r_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_PK PRIMARY KEY (rsv_no);
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;
ALTER TABLE reservation ADD CONSTRAINT IDX_reservation_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

ALTER TABLE pay ADD CONSTRAINT IDX_pay_PK PRIMARY KEY (pay_no);
ALTER TABLE pay ADD CONSTRAINT IDX_pay_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;

ALTER TABLE pay_item ADD CONSTRAINT IDX_pay_item_PK PRIMARY KEY (pi_no);
ALTER TABLE pay_item ADD CONSTRAINT IDX_pay_item_FK0 FOREIGN KEY (pay_no) REFERENCES pay (pay_no) ON DELETE CASCADE;
ALTER TABLE pay_item ADD CONSTRAINT IDX_pay_item_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (ci_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;

ALTER TABLE notice ADD CONSTRAINT IDX_notice_PK PRIMARY KEY (noti_no);
ALTER TABLE notice ADD CONSTRAINT IDX_notice_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;

ALTER TABLE inquiry ADD CONSTRAINT IDX_inquiry_PK PRIMARY KEY (ib_no);
ALTER TABLE inquiry ADD CONSTRAINT IDX_inquiry_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;

ALTER TABLE product_time ADD CONSTRAINT IDX_product_time_PK PRIMARY KEY (pt_no);
ALTER TABLE product_time ADD CONSTRAINT IDX_product_time_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

ALTER TABLE member_interest ADD CONSTRAINT IDX_member_interest_PK PRIMARY KEY (mi_no);
ALTER TABLE member_interest ADD CONSTRAINT IDX_member_interest_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id) ON DELETE CASCADE;

