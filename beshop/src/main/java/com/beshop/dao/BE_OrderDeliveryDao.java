package com.beshop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_OrderDeliveryVo;
import com.beshop.vo.BE_OrderPurchaseVo;
import com.beshop.vo.BE_UserVo;


@Repository
public class BE_OrderDeliveryDao {

	/*
	public List<BE_OrderPurchaseVo> listod() {
		System.out.println("db ok");
		return DBManager.listOrderdelivery();
		
	}
	*/
	public List<Be_OrderDeliveryVo> orderList(String beuid)
	{
		return DBManager.orderList(beuid);
	}
	
	public Be_OrderDeliveryVo orderDetail(String beuid, int onum)
	{
		return DBManager.orderDetail(beuid, onum);
	}
	public int insertOrderdelivery(BE_OrderDeliveryVo od)
	{
		System.out.println("db ok");
		return DBManager.insertODPay(od);
	}
}
