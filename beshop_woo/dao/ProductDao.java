package com.beshop.dao;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.ProductVo;

@Repository
public class ProductDao {
	
	public int insertProduct(ProductVo po) {
		return DBManager.insert(po);
	}
}
