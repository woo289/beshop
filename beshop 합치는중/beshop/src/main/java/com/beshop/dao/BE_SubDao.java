package com.beshop.dao;

import java.util.ArrayList;
import java.util.HashMap;


import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;


@Repository
public class BE_SubDao {
	
	public int insertSub(HashMap map) {
		// TODO Auto-generated method stub
		return DBManager.insertSub(map);
	}
	
	//구독중인지 아닌지 확인
	public ArrayList<String> subList(String sbeuid) {
		// TODO Auto-generated method stub
		return DBManager.subList(sbeuid);
	}
}
