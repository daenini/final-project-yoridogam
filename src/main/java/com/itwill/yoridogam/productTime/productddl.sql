DROP TABLE product_time CASCADE CONSTRAINTS;

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

ALTER TABLE product_time ADD CONSTRAINT IDX_product_time_PK PRIMARY KEY (pt_no);
ALTER TABLE product_time ADD CONSTRAINT IDX_product_time_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no) ON DELETE CASCADE;

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',5);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',5);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no) 
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'13:00-14:00',5);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',7);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',7);
 
insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'13:00-14:00',7);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'10:00-11:00',11);

insert into product_time(pt_no,pt_date, pt_max, pt_rsv, pt_time, p_no)
values(PRODUCT_TIME_PT_NO_SEQ.nextval,'2021-11-10',30,0,'11:00-12:00',11);

commit;