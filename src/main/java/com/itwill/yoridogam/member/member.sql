/*******************    Member      ************************/
/*******************************
    이름         널?       유형            
    ---------- -------- ------------- 
    M_ID       NOT NULL VARCHAR2(20)  
    M_NAME     NOT NULL VARCHAR2(20)  
    M_PASS     NOT NULL VARCHAR2(30)  
    M_ADDR     NOT NULL VARCHAR2(100) 
    M_EMAIL    NOT NULL VARCHAR2(50)  
    M_PHONE    NOT NULL VARCHAR2(12)  
    M_INTEREST          VARCHAR2(30)  
    M_GENDER   NOT NULL VARCHAR2(10) 
**********************************/
/*
    member_select_by_id_count
    회원존재여부확인(회원가입시)
*/
select count(*) cnt from member where m_id='member1';

/*
    member_insert
    회원존재여부확인(회원가입시)
*/
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member1','김첨지1','1111','서울시','kkihon@naver.com','010-8888-8888','비건','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member2','김첨지2','1111','서울시','kkihon@naver.com','010-8888-8888','비건','남자');
insert into member(m_id,m_name,m_pass,m_addr,m_email,m_phone,m_interest,m_gender) values('member3','김첨지3','1111','서울시','kkihon@naver.com','010-8888-8888','비건','남자');


/*
    member_update
    회원수정
*/
update member set m_pass='222', m_addr='인천시', m_email='kkihon2@naver.com',m_phone='010-1111-2222',m_interest='빵',m_gender='여성' where m_id='member1';

/*
    member_remove
    회원삭제
*/
delete member where m_id='member1';

/*
    member_select_all
    회원전체검색
*/
select * from member;
/*
    member_select_by_id
    회원한명검색
*/
select * from member where m_id='member2';

/***************************member_interest table********************************/
/***************************************

이름          널?       유형           
----------- -------- ------------ 
MI_NO       NOT NULL NUMBER(10)   
MI_INTEREST          VARCHAR2(30) 
M_ID                 VARCHAR2(20) 

1) 회원가입시 insert memeber, member_interst 쿼리문 사용
 --> 받는 인자를 2개로 Member, m_interest
2) 회원가입시 날라온 Member 객체 member테이블에저장
3) 여기서 m_interest list를  반복문을 통해 mi_interest에 저장
4) 그리고  mi_interest=p_category 조건문을 통해 같은것만 출력 
****************************************/
insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'빵','member1');

desc member_interest;