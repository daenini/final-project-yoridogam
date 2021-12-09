package com.itwill.yoridogam.productTime;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.yoridogam.product.Product;

@Service("productTimeService")
public class ProductTimeServiceImpl implements ProductTimeService{

	@Autowired
	private ProductTimeDao productTimeDao;

	@Override
	public List<ProductTime> selectAll(int p_no) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.selectAll(p_no);
	}
// 특정 날짜와 특정 상품 번호 찾아서 특정 강의 시간 구하기
	@Override
	public List<ProductTime> selectPtTime(String rsv_date, int p_no) throws Exception {
		ProductTime productTime = new ProductTime(0, rsv_date, null, 0, 0, new Product(p_no, null, null, null, null, null, null, null));
		
		return productTimeDao.selectPtTime(productTime);
	}
	
	@Override
	public ProductTime selectByNo(int pt_no) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.selectPtNo(pt_no);
	}

	@Override
	public ProductTime selectPtNo2(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.selectPtNo2(productTime);
	}

	@Override
	public int create(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.create(productTime);
	}

	@Override
	public int update(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.update(productTime);
	}

	@Override
	public int updatePt_rsv(ProductTime productTime) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.updatePt_rsv(productTime);
	}

	@Override
	public int delete(int pt_no) throws Exception {
		// TODO Auto-generated method stub
		return productTimeDao.delete(pt_no);
	}



}