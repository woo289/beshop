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
	
	public static BE_AuctionVo nowAuction() {
		BE_AuctionVo ao= null;
		SqlSession session = factory.openSession();
		ao = session.selectOne("product.nowAuction");
		session.close();
		return ao;
	}
	
	public static int insertAuction(BE_AuctionVo ao) {
		int r = 0;
		SqlSession session = factory.openSession();
		r = session.insert("product.insertAuction",ao);
		session.commit();
		session.close();
		return r;
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
<<<<<<< HEAD
	
	public static List<Be_ChargePointVo> plusPointList(String beuid)
	{
		List<Be_ChargePointVo> plist = null;
		SqlSession session = factory.openSession();
		plist = session.selectList("point.PlusPointList");
		session.close();
		return plist;
	}
	public static List<Be_PayPointVo> minusPointList(String beuid)
	{
		List<Be_PayPointVo> mlist = null;
		SqlSession session = factory.openSession();
		mlist = session.selectList("point.MinusPointList");
		session.close();
		return mlist;
	}
	public static Be_PointBalanceVo pointBalance(String beuid)
	{
		HashMap map = new HashMap();
		//System.out.println("아이디는 "+beuid);
		map.put("beuid", beuid);
		System.out.println("manager에서 map"+map);
		Be_PointBalanceVo  p;
		SqlSession session = factory.openSession();
		p = session.selectOne("point.getPoint", beuid);
		session.close();
		return p;
	}
	
	public static int  chargePoint(Be_ChargePointVo c)
	{
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("point.chargeP", c);
<<<<<<< HEAD
		//System.out.println("?�작 dbmng");
=======
		//System.out.println("?�작 dbmng");
>>>>>>> b931015aca3c0477a351ad2314742c3abaff7861
		//System.out.println("re: "+re);
		session.commit();
		session.close();
		
		return re;
=======

	//be_user ���� �ظ��� �߰��� DBManager
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
		System.out.println("���̵� : "+beuid+"��й�ȣ : "+pwd+"�� ��� : "+new_pwd);
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
		System.out.println("�α��� �õ��� ���̵� : "+beuid+" ��й�ȣ : "+upw);
		vo = session.selectOne("beuser.loginUser",map);
		System.out.println(vo);
		session.close();
		return vo;
	}

	public static int newPwd(String beuid, String keyCode) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		System.out.println("�Ŵ������� �� �Գ��� ���̵� :"+beuid+"keycode�� ��"+keyCode);
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
		System.out.println("�Ŵ��������� ��Ȯ��"+v);
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
>>>>>>> 81fbed5f244ad09c119c8cb07d683050a86dbb26
		
	}
	
	public static int payPoint(Be_PayPointVo p)
	{
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("point.payP", p);
		session.close();
		return re;
	}
	public static List<BE_OrderPurchaseVo> listOrderdelivery()
	{
		
		SqlSession session = factory.openSession();
		List<BE_OrderPurchaseVo> list = null;
		System.out.println("���");
		list = session.selectList("Order.selectodpurchase");
		System.out.println(list);
		session.close();
		
		return list;
	}
	public static int insertODPay(BE_OrderDeliveryVo od)
	{
		int r=-1;
		
	     SqlSession session = factory.openSession();
	     r = session.insert("Order.insertorder",od);
	      session.commit();
	      session.close();
		return r;
	      
	}
	public static int insertPay(BE_PayVo p)
	{
		int r=-1;
		
	     SqlSession session = factory.openSession();
	     r = session.insert("Order.insertodpay",p);
	      session.commit();
	      session.close();
		return r;
	      
	}

	public static List<Be_OrderDeliveryVo> orderList(String beuid)
		{
			HashMap map = new HashMap();
			//System.out.println("아이디는 "+beuid);
			map.put("beuid", beuid);
			System.out.println("manager에서 map"+map);
			List<Be_OrderDeliveryVo> list;
			SqlSession session = factory.openSession();
			list = session.selectList("ordered.orderList", map);
			session.close();
			return list;
		}

	//상품 출력, 등록, 비디오 리스트
	public static List<BE_ProductVo> productList(String beuid) {
		// TODO Auto-generated method stub
		List<BE_ProductVo> list = null;
		SqlSession session = factory.openSession();
		System.out.println(beuid);
		list = session.selectList("product.list",beuid);
		System.out.println(list);
		session.close();
		return list;
	}

	public static List<BE_ProductVo> videoList() {
		// TODO Auto-generated method stub
		List<BE_ProductVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("product.videolist");
		System.out.println(list);
		session.close();
		return list;
	}

	public static BE_UserVo getUser(String beuid) {
		// TODO Auto-generated method stub
		System.out.println(beuid);
		SqlSession session = factory.openSession();
		BE_UserVo vo = session.selectOne("beuser.getUser",beuid);
		System.out.println(vo);
		session.close();
		return vo;
	}

	public static int insertSub(HashMap map) {
		// TODO Auto-generated method stub
		int r = 0;
		SqlSession session = factory.openSession();
		r = session.insert("sub.insertSub", map);
		session.commit();
		session.close();
		return r;
	}

	public static ArrayList<String> subList(String sbeuid) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		List<String> listall = null;
		listall =session.selectList("sub.subList",sbeuid);
		ArrayList<String> list = new ArrayList<String>();
		list.addAll(listall);
		System.out.println(list);
		session.close();
		return list;
	}

	public static List<BE_ProductVo> shopList() {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		List<BE_ProductVo> list = null;
		list = session.selectList("product.shoplist");
		session.close();
		return list;
	}

	public static BE_ProductVo productDetail(int pnum) {
		// TODO Auto-generated method stub
		BE_ProductVo vo = new BE_ProductVo();
		SqlSession session = factory.openSession();
		vo = session.selectOne("product.productDetail", pnum);
		session.close();
		return vo;
	}
		
	public static Be_OrderDeliveryVo orderDetail(String beuid, int onum)
		{
			Be_OrderDeliveryVo o;
			HashMap map = new HashMap();
			map.put("beuid", beuid);
			map.put("onum", onum);
			System.out.println("manager에서 map"+map);
			SqlSession session = factory.openSession();
			o = session.selectOne("ordered.orderDetail", map);
			session.close();
			return o;
		}
}
