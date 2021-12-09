------------INSERT-----------------
--상품 추가
insert into product(p_no,p_name,p_detail,p_category,p_price,p_type,p_poto,t_id)values(p_no_seq.nextval,?,?,?,?,?,?,?);
------------DELETE-----------------
--상품 삭제
delete from product where p_no=?;
------------UPDATE-----------------
--상품 업데이트
update product set p_name = ? ,p_detail = ?,p_category=?,p_price=?,p_type=?,p_poto=? where p_no=?;
------------SELECT-----------------
--상품전체 리스트
select * from product;
--상품 1개
select * from product where p_no=?;
