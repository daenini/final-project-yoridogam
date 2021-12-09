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
 --m_id 회원 장바구니에 온라인 강의 추가 (오프라인X)
 insert into cart(ci_no, ci_qty, p_no, m_id) values(CART_CI_NO_SEQ.nextval,?,?,?);
 
 /*****************************
				update
 ******************************/
 --장바구니 강의 수량 +,-
 update cart set ci_qty=ci_qty+1 where ci_no=?;
 update cart set ci_qty=ci_qty-1 where ci_no=?;

 /*****************************
				delete
 ******************************/
 --장바구니 내 강의 특정 삭제
 delete from cart where ci_no=?;
 --장바구니 내 강의 전체 삭제
 delete from cart where m_id=?;
 
 /*****************************
				select
 ******************************/
 --카트아이템 하나 보기
 select * from cart where ci_no=?;
 --m_id 회원 장바구니 강의리스트 출력
 select * from cart c join product p on c.p_no=p.p_no where m_id=?;
 --m_id 회원 장바구니 내 강의 존재 여부
select count(*) from cart c join member m on c.m_id=m.m_id where m.m_id=?;
 --m_id 회원 장바구니 내 특정 강의 존재 여부
select count(*) from cart c join member m on c.m_id=m.m_id where p_no=? and m.m_id=?;

 
