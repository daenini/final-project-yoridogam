/*******************    Teacher      ************************/
/*******************************
  이름         널?       유형            
---------- -------- ------------- 
    T_ID       NOT NULL VARCHAR2(20)  
    T_NAME     NOT NULL VARCHAR2(20)  
    T_PASS     NOT NULL VARCHAR2(30)  
    T_EMAIL    NOT NULL VARCHAR2(50)  
    T_PHOTO    NOT NULL VARCHAR2(500) 
    T_DETAIL   NOT NULL VARCHAR2(500) 
    T_LOCATION NOT NULL VARCHAR2(100) 
    P_NO                NUMBER(10)    
**********************************/
/*
    teacher_select_by_id_count
    회원존재여부확인(회원가입시)
*/
select count(*) cnt from teacher where m_id='teaher1';

/*
    teacher_insert
    회원존재여부확인(회원가입시)
*/
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location,p_no) values('teacher1','kim1','1111','010-0000-0000','kkiho@naver.com','이미지1','일타강사','서울',1);
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location,p_no) values('teacher2','him1','2222','010-1111-1111','kkiho1@naver.com','이미지2','일타강사1','서울1',2);
insert into teacher(t_id,t_name,t_pass,t_phone,t_email,t_photo,t_detail,t_location,p_no) values('teacher3','tim1','3333','010-2222-2222','kkiho2@naver.com','이미지3','일타강사2','서울2',3);



/*
    teacher_update
    회원수정
*/
update teacher set t_pass='2222',t_phone='010-9999-9999',t_email='dfff@naver.com',t_photo='이미지이1',t_detail='이타강사',t_location='인천',p_no='1' where t_id='teacher1';

/*
    teacher_remove
    회원삭제
*/
delete teacher where t_id='teacher1';

/***************select************************/
/*
    teacher_select_all
    회원전체검색
*/
select * from teacher;
/*
    teacher_select_by_id
    회원한명검색
*/
select * from teaher where t_id='teacher2';

desc teacher;