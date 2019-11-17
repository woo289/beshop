package com.beshop.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_Sub_ListVo;
import com.beshop.vo.Be_RankingVo;


@Repository
public class BE_SubDao {
	
	
//	public List<BE_SubVo> list_sub() {
//		return DBManager.list_sub();
//	}
	public List<BE_Sub_ListVo> list_sub(String sbeuid) {
		return DBManager.list_sub(sbeuid);
	}
	
	public int insertSub(HashMap map) {
		// TODO Auto-generated method stub
		return DBManager.insertSub(map);
	}
	
	//구독중인지 아닌지 확인
	public ArrayList<String> subList(String beuid) {
		// TODO Auto-generated method stub
		return DBManager.subList(beuid);
	}
}
