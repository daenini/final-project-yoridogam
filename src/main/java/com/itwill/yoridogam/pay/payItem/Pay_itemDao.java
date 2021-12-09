package com.itwill.yoridogam.pay.payItem;

public interface Pay_itemDao {
	
	/*******************강의 결제******************/
	int createPayItem(Pay_item pay_item) throws Exception;
	/*******************강의 결제******************/
	Pay_item findPayItemDetail(int pi_no) throws Exception;
}
