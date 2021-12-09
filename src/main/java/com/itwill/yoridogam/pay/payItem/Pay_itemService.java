package com.itwill.yoridogam.pay.payItem;


import com.itwill.yoridogam.pay.pay.Pay;
public interface Pay_itemService {
	/***********************결제템 상세 조회***********************/
	Pay_item findPayItemDetailByNo(int p_no) throws Exception;
	
}
