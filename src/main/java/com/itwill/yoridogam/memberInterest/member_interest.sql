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

select * from member_interest where m_id='member1';

insert into member_interest values(MEMBER_INTEREST_MI_NO_SEQ.nextval,'빵','member1');

update member_interest set mi_interest ='빵' where m_id ='member1'

delete member_interest where m_id='member1';

desc member_interest;