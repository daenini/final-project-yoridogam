/**************************************
이름             널?       유형             
-------------- -------- -------------- 
NOTI_NO        NOT NULL NUMBER(10)     
NOTI_TITLE              VARCHAR2(100)  
NOTI_DATE               DATE           
NOTI_VIEWCOUNT          NUMBER(10)     
NOTI_CONTENT            VARCHAR2(1000) 
M_ID                    VARCHAR2(20)
 **************************************/

/******************************
				create
 *******************************/
 --공지사항 게시글 추가
insert INTO NOTICE(NOTI_NO, NOTI_TITLE, NOTI_DATE, NOTI_VIEWCOUNT, NOTI_CONTENT, M_ID) 
		VALUES(notice_noti_no_SEQ.nextval, ?, sysdate, 0, ?, ?);

 /*****************************
				update
 ******************************/
 --공지사항 수정(글 번호)
update NOTICE set NOTI_TITLE =?, NOTI_CONTENT=? where NOTI_NO=?;		

--공지사항 조회수 증가
update NOTICE set NOTI_VIEWCOUNT = NOTI_VIEWCOUNT+1 where NOTI_NO=?;
 
 /*****************************
				delete
 ******************************/
 --공지사항 특정 글 삭제(글 번호)
DELETE FROM NOTICE WHERE NOTI_NO=?;		

 
 /*****************************
				select
 ******************************/
--공지사항 상세보기(글 번호)
select NOTI_NO, NOTI_TITLE, NOTI_DATE, NOTI_VIEWCOUNT, NOTI_CONTENT, M_ID from NOTICE where NOTI_NO=?;		
--공지사항 전체 보기
select * from NOTICE;		
	

 
