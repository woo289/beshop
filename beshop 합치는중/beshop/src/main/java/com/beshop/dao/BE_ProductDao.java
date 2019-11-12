package com.beshop.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_ProductVo;

@Repository
public class BE_ProductDao {
	
	public int insertProduct(BE_ProductVo po) {
		return DBManager.insertProduct(po);
	}

	public List<BE_ProductVo> productList(String beuid) {
		// TODO Auto-generated method stub
		return DBManager.productList(beuid);
	}

	public List<BE_ProductVo> videoList() {
		// TODO Auto-generated method stub
		return DBManager.videoList();
	}

	//쇼핑 메인에 최근 올려진 방송 출력(게시일이 현재시간 이전인것들만)
	public List<BE_ProductVo> shopList() {
		// TODO Auto-generated method stub
		return DBManager.shopList();
	}

	public BE_ProductVo productDetail(int pnum) {
		// TODO Auto-generated method stub
		return DBManager.productDetail(pnum);
	}
}
