package com.beshop.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.beshop.dao.Be_NoticeDao;
import com.beshop.vo.Be_NoticeVo;
import com.beshop.vo.Be_QnaVo;



public class DBManager {

	private static SqlSessionFactory factory;
	
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/beshop/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();		
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	
	public static int deleteNotice(int noticenum) {
		int re = -1;
		HashMap map = new HashMap();
		map.put("noticenum", noticenum);
		SqlSession session = factory.openSession(true);
		re = session.delete("notice.delete", map);
		session.commit();
		session.close();
		return re;
	}
	
	public static int updateNotice(Be_NoticeVo nvo) {
		int re = -1;
		SqlSession session = factory.openSession();
		re =session.insert("notice.update", nvo);
		session.commit();
		session.close();
		return re;
	}
	
	public static int getCountQna(HashMap map) {
		int cnt = 0;
		SqlSession session = factory.openSession();
		cnt = session.selectOne("qna.getCount", map);
		session.close();
		return cnt;
	}
	
	
	public static int getCountNotice(HashMap map) {
		int cnt = 0;
		SqlSession session = factory.openSession();
		cnt = session.selectOne("notice.getCount", map);
		session.close();
		return cnt;
	}
	
	public static Be_QnaVo selectQna(int qnanum) {
		Be_QnaVo n = null;
		HashMap map = new HashMap();
		map.put("qnanum", qnanum);
		SqlSession session = factory.openSession();
		n = session.selectOne("qna.getQna", map);
		session.close();
			
		return n;
	}
	
	public static Be_NoticeVo selectNotice(int noticeNum)
	{
		Be_NoticeVo n = null;
		HashMap map = new HashMap();
		map.put("noticenum", noticeNum);
		SqlSession session = factory.openSession();
		n = session.selectOne("notice.getNotice", map);
		session.close();
		return n;
	}
	
	public static int insertNotice(Be_NoticeVo nvo) {
		int re = -1;
		SqlSession session = factory.openSession(true);
		re = session.insert("notice.insert", nvo);
		session.close();
		return re;
	}
	
	
	public static List<Be_QnaVo> listAllQna(HashMap map) {
		SqlSession session = factory.openSession();
		List<Be_QnaVo> list = session.selectList("qna.selectAll", map);
		session.close();
		return list;
	}
		
	
	public static List<Be_NoticeVo> listAllNotice(HashMap map) {
		SqlSession session = factory.openSession();
		List<Be_NoticeVo> list = session.selectList("notice.selectAll", map);
		session.close();
		return list;
	}

	//be_user 관련 해리가 추가한 DBManager
	public static  String searchId(HashMap map) {
		// TODO Auto-generated method stub
		String beuid = "";	
		SqlSession session = factory.openSession();
		String uname = (String)map.get("uname");
		System.out.println(uname);
		beuid += session.selectOne("beuser.searchId",map);
		System.out.println(beuid);
		session.close();
		return	beuid;
	}

	public static int updatePwd(HashMap map) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		String beuid = (String)map.get("beuid");
		String pwd = (String)map.get("pwd");
		String new_pwd = (String)map.get("new_pwd");
		System.out.println("아이디 : "+beuid+"비밀번호 : "+pwd+"새 비번 : "+new_pwd);
	    int r =  session.update("beuser.updatePwd",map);
	    System.out.println(r);
	    session.commit();
		session.close();
		return r;
	}

	public static BE_UserVo getName(HashMap map) {
		// TODO Auto-generated method stub
		BE_UserVo vo = null;
		SqlSession session = factory.openSession();
		String beuid = (String)map.get("beuid");
		String upw = (String)map.get("upw");
		System.out.println("로그인 시도한 아이디 : "+beuid+" 비밀번호 : "+upw);
		vo = session.selectOne("beuser.loginUser",map);
		System.out.println(vo);
		session.close();
		return vo;
	}

	public static int newPwd(String beuid, String keyCode) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		System.out.println("매니저까지 잘 왔나용 아이디 :"+beuid+"keycode는 용"+keyCode);
		HashMap map = new HashMap();
		map.put("beuid", beuid);
		map.put("new_pwd", keyCode);
		int r = session.update("beuser.newPwd", map);
		System.out.println(r);
		session.commit();
		session.close();
		return r;
	}

	public static int deleteUser(HashMap map) {
		// TODO Auto-generated method stub
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.delete("beuser.deleteUser", map);
		System.out.println(re);
		session.commit();
		session.close();
		return re;
	}

	public static int insert(BE_UserVo v) {
		// TODO Auto-generated method stub
		int re=-1;
		SqlSession session=factory.openSession();
		System.out.println("매니저에서의 값확인"+v);
		re=session.insert("beuser.insert",v);
		session.commit();
		session.close();
		return re;
	}
	public static int insertProduct(BE_ProductVo po) {
	      int r = 0;
	      SqlSession session = factory.openSession();
	      r = session.insert("product.insert",po);
	      session.commit();
	      session.close();
	      return r;
	   }
		

	
}
