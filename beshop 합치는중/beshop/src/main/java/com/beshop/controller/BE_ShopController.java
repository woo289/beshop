package com.beshop.controller;


import java.awt.Dialog;
import java.io.FileOutputStream;
import java.lang.ProcessBuilder.Redirect;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Producer;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_ProductDao;
import com.beshop.dao.BE_SubDao;
import com.beshop.dao.BE_UserDao;
import com.beshop.vo.BE_ProductVo;
import com.beshop.vo.BE_SubVo;
import com.beshop.vo.BE_UserVo;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class BE_ShopController {

	@Autowired
	private BE_ProductDao pao;
	
	public void setPao(BE_ProductDao pao) {
		this.pao = pao;
	}
	@Autowired
	private BE_UserDao dao;
	
	public void setDao(BE_UserDao dao) {
		this.dao = dao;
	}
	@Autowired
	private BE_SubDao sdao;
	
	public void setSdao(BE_SubDao sdao) {
		this.sdao = sdao;
	}
	@ResponseBody
	@RequestMapping("/shopping")
	public ModelAndView shopping() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", pao.shopList());
		mav.setViewName("shopping");
		System.out.println(pao.shopList());
		return mav;
	}

	@RequestMapping("shoppingDetail")
	public ModelAndView shoppingDetail(int pnum, HttpSession sesion) {
		System.out.println("pnum은용 ? =" + pnum);
		BE_ProductVo vo = pao.productDetail(pnum);
		ModelAndView mav = new ModelAndView();
		mav.addObject("de", vo);
		return mav;
	}

	@RequestMapping(value="/addProduct",method = RequestMethod.GET)
	public void addProductGet() {
		System.out.println("get온다");
		
	}
	
	@RequestMapping("inquiry")
	public void ma1() {
		
	}
	@RequestMapping("inquiry_detail")
	public void ma2() {
		
	}
	@RequestMapping("inquiry_write")
	public void ma3() {
		
	}
	
	@ResponseBody
	@RequestMapping(value="/addProduct",method = RequestMethod.POST)
	public ModelAndView addProductPost(BE_ProductVo po, HttpSession session, HttpServletRequest request) {
		System.out.println("post온다"+po.getP_cdate());
		String path = request.getRealPath("video");
		String path2 = request.getRealPath("img");
		String option1 = request.getParameter("option1");
		String option2 = request.getParameter("option2");
		String option3 = request.getParameter("option3");
		String sel_op1 = request.getParameter("select_op1");
		String sel_op2 = request.getParameter("select_op2");
		String sel_op3 = request.getParameter("select_op3");
		String p_category = request.getParameter("p_category");
		
		System.out.println(option2+sel_op2);
		System.out.println(p_category);
		MultipartFile file = po.getVideo();
		String p_video = file.getOriginalFilename();
		if(option2 == null || sel_op2 == null) {
			po.setOption2("");
			po.setSelect_op2("");
			po.setOption3("");
			po.setSelect_op3("");
		}
		else if(option3 == null  || sel_op3 == null) {
			
			po.setOption3("");
			po.setSelect_op3("");
		}
		else {
			po.setOption2(option2);
			po.setSelect_op2(sel_op2);
			po.setOption3(option3);
			po.setSelect_op3(sel_op3);
		}
		po.setP_video(p_video);
		po.setOption1(option1);
		po.setSelect_op1(sel_op1);
		po.setP_category(p_category);
		
		try {
			byte date[] = file.getBytes();
			FileOutputStream fos = new FileOutputStream(path+"/"+p_video);
			fos.write(date);
			fos.close();
			FileOutputStream fos2 = new FileOutputStream("C:/haeree/beshop/src/main/webapp/video/"+p_video);
		//	FileOutputStream fos2 = new FileOutputStream(path2+p_video);
			fos2.write(date);
			fos2.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		MultipartFile file2 = po.getSangse();
		String p_sangse = file2.getOriginalFilename();
		po.setP_sangse(p_sangse);
		try {
			byte date[] = file2.getBytes();
			FileOutputStream fos = new FileOutputStream(path2+"/"+p_sangse);
			fos.write(date);
			fos.close();
			//webapp/img
			FileOutputStream fos2 = new FileOutputStream("C:/haeree/beshop/src/main/webapp/img/"+p_sangse);
			fos2.write(date);
			fos2.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		MultipartFile file3 = po.getAs();
		String as_info = file3.getOriginalFilename();
		po.setAs_info(as_info);
		try {
			byte date[] = file3.getBytes();
			FileOutputStream fos = new FileOutputStream(path2+"/"+as_info);
			fos.write(date);
			fos.close();
			FileOutputStream fos2 = new FileOutputStream("C:/haeree/beshop/src/main/webapp/img/"+as_info);
			fos2.write(date);
			fos2.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("file3 까지 탄다.");
		ModelAndView mav = new ModelAndView("redirect:/mychannel");
		System.out.println(po);
		int r = pao.insertProduct(po);
		System.out.println(r);
		String msg = "";
		if(r != 1) { 
			msg ="실패";
		}else {
			msg = "성공";
		}
		mav.addObject("msg", msg);
		mav.setViewName("/mychannel");
		return mav;
	}
	
	@RequestMapping("/mychannel")
	public void mychannel(HttpSession session) {
		
	}
	//채널에 올린 상품 보여주기
	@ResponseBody
	@RequestMapping(value="/plist",method=RequestMethod.GET)
	public String plist(String beuid) {
		System.out.println(beuid);
		String str = "";
        try {
            ObjectMapper mapper = new ObjectMapper();
            str = mapper.writeValueAsString(pao.productList(beuid));
        }catch (Exception e) {
            // TODO: handle exception
            System.out.println(e.getMessage());
        }
        System.out.println(str);
        return str;
	}
	@ResponseBody
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public ModelAndView videoList() {
		ModelAndView mav = new ModelAndView();
            mav.addObject("list", pao.videoList());
            System.out.println(pao.videoList());
            mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping("/channel")
	public ModelAndView channel(HttpServletRequest request, HttpSession session) {
		String beuid = request.getParameter("beuid"); //해당 채널 아이디
		String sbeuid = (String) session.getAttribute("beuid");	//로그인 되어있는 아이디
		String sub = "";
		
		if(beuid.equals(sbeuid)) {
			ModelAndView mav = new ModelAndView("redirect:/mychannel");
			return mav;
		}
		else {
			ModelAndView mav = new ModelAndView("redirect:/channel");
			ArrayList<String> sublist = sdao.subList(sbeuid);
			for(int i=0; i<sublist.size(); i++) {
				if(sublist.get(i).equals(beuid)) {
					sub = "yes";
					break;
				}
				else {
					sub="no";
				}
			}
			// 구독 중인지 아닌지 확인
					mav.addObject("user",dao.getUser(beuid));
					mav.addObject("sub",sub);
					mav.setViewName("channel");
			return mav;
		}
	}
}
