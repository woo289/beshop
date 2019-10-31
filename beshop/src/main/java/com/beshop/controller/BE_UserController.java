package com.beshop.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_UserDao;
import com.beshop.vo.BE_UserVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class BE_UserController {
	@Autowired
	private BE_UserDao dao;

	public void setDao(BE_UserDao dao) {
		this.dao = dao;
	}
	@RequestMapping("/mypage")
	public void mypage() {

	}
	//비밀번호 변경 페이지
	@RequestMapping(value = "/user_update", method = RequestMethod.GET)
	public ModelAndView user_update(String beuid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("beuid", beuid);
		return mav;
	}
	@ResponseBody
	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public int update_pwd(HttpServletRequest request, HttpServletResponse response) {
		String beuid = request.getParameter("beuid");
		String pwd = request.getParameter("pwd");
		String new_pwd = request.getParameter("new_pwd");
		System.out.println(beuid+"  "+pwd+"  "+new_pwd);
		String alert = "";
		HashMap map = new HashMap();
		map.put("beuid", beuid);
		map.put("pwd", pwd);
		map.put("new_pwd", new_pwd);
	    int r = dao.updatePwd(map);
	    System.out.println("controller의 r" + r);
		if(r == 1) {
			alert ="회원 수정이 완료되었습니다.";
		}
		else {
			alert ="회원 수정에 실패하였습니다.";
		}
		System.out.println(alert);
		return r;
	}
	//아이디,비밀번호 찾기 페이지
	@RequestMapping(value = "/search_user", method = RequestMethod.GET)
	public void searchUser() {
		
	}
	
	@RequestMapping("find_id")
	public void find_id(){
		
	}
	@RequestMapping("header")
	public void haeder() {
		
	}
	
	//회원로그인 처리
	@RequestMapping(value = "login.do", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("redirect:/shopping_main");
		return mav;
	}
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login_process(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		String beuid = request.getParameter("beuid");
		String upw = request.getParameter("upw");
		System.out.println("회원아이디 : "+beuid+" 회원 비밀번호 : "+upw);
		HashMap map = new HashMap();
		map.put("beuid",beuid);
		map.put("upw", upw);
		String name = dao.getName(map);
		System.out.println(name);
		if(name.equals(null)) {
			mav.addObject("msg","입력하신 정보를 확인해주세요");
		}
		else {
			mav.addObject("msg",name+"님 환영합니다.");
		}
		mav.setViewName("header.jsp");
		return mav;
	}
	
	@ResponseBody
	 @RequestMapping(value = "search_id.do") 
	  public String searchId(HttpServletRequest request, HttpServletResponse response) { 
		 String uname = request.getParameter("uname");
		 String email = request.getParameter("email");
		 System.out.println("이름:"+uname+" 이메일:"+email);
//		 ModelAndView mav = new ModelAndView("redirect:/find_id");

		 HashMap map = new HashMap();
		 map.put("uname", uname);
		 map.put("email", email);
//		 mav.addObject("b", dao.searchID(map));
//		 mav.setViewName("find_id");
		 String beuid = dao.searchID(map);
//		 System.out.println(beuid);
//		 if (!beuid.equals(null)) {
//			 ModelAndView mav = new ModelAndView("redirect:/find_id");
//			 mav.addObject("b", beuid);
//			 mav.setViewName("find_id");
//			 return mav;
//		 }
		 return beuid;
	 	}
	@RequestMapping("main_shopping")
	public void be_main() {
		
	}
	@RequestMapping("customer_center")
	public void custmoer() {
		
	}
}