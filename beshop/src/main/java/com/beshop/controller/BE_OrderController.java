package com.beshop.controller;

import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_OrderDeliveryDao;
import com.beshop.dao.BE_PayDao;
import com.beshop.vo.BE_OrderDeliveryVo;
import com.beshop.vo.BE_PayVo;

@Controller
public class BE_OrderController {
	@Autowired
	private BE_OrderDeliveryDao dao;
	@Autowired
	private BE_PayDao pdao;
	
	
	public void setPdao(BE_PayDao pdao) {
		this.pdao = pdao;
	}
	public void setDao(BE_OrderDeliveryDao dao) {
		this.dao = dao;
	}
	@ResponseBody
	@RequestMapping("/OrderPurchase")
	public ModelAndView orderdelivery()
	{
		System.out.println("컨트롤러동작함");
		ModelAndView mav=new ModelAndView();
		System.out.println(dao.listod());
		mav.addObject("orderdeliverylist",dao.listod());
		return mav;
	}
	@RequestMapping(value = "/orderpage",method = RequestMethod.GET)
	public void Order() 
	{
		
	}
	@RequestMapping("/purchase_ok")
	public ModelAndView popup(BE_PayVo p,HttpServletRequest request)
	{
		ModelAndView mav=new ModelAndView();
		int re=pdao.insertpay(p);
		if(re==1)
		{
			mav=new ModelAndView("redirect:/purchase_ok");
		}
		return mav;
	}
	@RequestMapping(value = "/orderpage",method =RequestMethod.POST )
	public ModelAndView Order(BE_OrderDeliveryVo vo,HttpServletRequest request)
	{
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String phone3=request.getParameter("phone3");
		String uphone=phone1+phone2+phone3;
		String oaddr1=request.getParameter("oaddr1");
		String oaddr2=request.getParameter("oaddr2");
		String onum=request.getParameter("odnum");
		String dstatus="배송준비중";
		String receivename=request.getParameter("receivename");
		int dcnum=1;
		int odnum=Integer.parseInt(onum);
		System.out.println(odnum);
		//int pnum=Integer.parseInt(request.getParameter("odpnum"));
		int pnum=1;
		String paymethod="iamport";
		String beuid="godkkoo";
		String oname=request.getParameter("oname");
		System.out.println(oname);
		vo.setDcnum(dcnum);
		vo.setOname(oname);
		vo.setReceivename(receivename);
		vo.setDstatus(dstatus);
		vo.setOaddr1(oaddr1);
		vo.setOaddr2(oaddr2);
		vo.setOphone(uphone);
		vo.setPaymethod(paymethod);
		vo.setBeuid(beuid);
		vo.setOnum(odnum);
		vo.setPnum(pnum);
		System.out.println(vo);
		ModelAndView mav=new ModelAndView();
		int re=dao.insertOrderdelivery(vo);
		if(re==1)
		{
			mav=new ModelAndView("redirect:/purchase_ok");
		}
		return mav;
		
	
		
	}
}
