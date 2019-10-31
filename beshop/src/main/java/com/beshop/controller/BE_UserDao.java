package com.beshop.dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_UserVo;
@Repository
public class BE_UserDao {
	public String searchID(HashMap map) {
		//return DBManager.searchId(uname, email);
		return DBManager.searchId(map);
	}

	public int updatePwd(HashMap map) {
		// TODO Auto-generated method stub
		return DBManager.updatePwd(map);
	}

	public String getName(HashMap map) {
		// TODO Auto-generated method stub
		return DBManager.getName(map);
	}
}
