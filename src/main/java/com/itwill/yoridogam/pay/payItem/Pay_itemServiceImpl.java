package com.itwill.yoridogam.pay.payItem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.pay.pay.PayDao;

@Service("payItemService")
public class Pay_itemServiceImpl implements Pay_itemService{
	@Autowired
	private PayDao payDao;
	@Autowired
	private Pay_itemDao pay_itemDao;
	
	
	@Override
	public Pay_item findPayItemDetailByNo(int p_no) throws Exception {
		return pay_itemDao.findPayItemDetail(p_no);
	}
}
