package com.itwill.yoridogam.pay.pay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.pay.cart.Cart;
import com.itwill.yoridogam.pay.cart.CartDao;
import com.itwill.yoridogam.pay.payItem.Pay_item;
import com.itwill.yoridogam.pay.payItem.Pay_itemDao;
import com.itwill.yoridogam.product.ProductDao;

@Service("payService")
public class PayServiceImpl implements PayService{

	@Autowired
	private PayDao payDao;
	@Autowired
	private Pay_itemDao pay_itemDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CartDao cartDao;
	
	// 강의페이지-> 결제
	@Override
	public int createPay(Pay pay, int pi_qty, int p_no) throws Exception{
		payDao.createPay(pay);
		Pay_item newPi=new Pay_item(0, pi_qty, pay.getPay_no(), productDao.selectByNo(p_no));
		pay_itemDao.createPayItem(newPi);
		return pay.getPay_no();
	}
	
	// 장바구니(온라인)-> 결제
	@Override
	public int createPayFromCart(Pay pay,List<Cart> cList,String sUserId) throws Exception {
		payDao.createPay(pay);
		for(Cart cart:cList) {
			pay_itemDao.createPayItem
			(new Pay_item(0, cart.getCi_qty(), pay.getPay_no(), cart.getProduct()));
		}
		return pay.getPay_no();
	}
	
	@Override
	public int deletePayByNo(int pay_no) throws Exception {
		return payDao.deletePayByNo(pay_no);
	}

	@Override
	public int deletePay(String sUserId) throws Exception {
		return payDao.deletePay(sUserId);
	}

	@Override
	public boolean isExistPay(String sUserId) throws Exception {
		return payDao.isExistPay(sUserId);
	}

	@Override
	public Pay findPayByNo(int pay_no) throws Exception {
		return payDao.findPayByNo(pay_no);
	}

	@Override
	public List<Pay> findPayList(String sUserId) throws Exception {
		return payDao.findPayList(sUserId);
	}

	@Override
	public List<Pay> findPayDetailList(String sUserId) throws Exception {
		return payDao.findPayDetailList(sUserId);
	}

	@Override
	public Pay findPayDetailByNo(int pay_no) throws Exception {
		return payDao.findPayDetailByNo(pay_no);
	}

	
	
}

