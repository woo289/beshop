package com.bit.myBeShop.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit.myBeShop.dao.PointDao;
import com.bit.myBeShop.vo.ChargePointVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class PointController {
	@Autowired
	PointDao dao = new PointDao();

	public void setDao(PointDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value = "/charge", method = RequestMethod.POST)
	public String chargePoint(ChargePointVo c, RedirectAttributes rttr)
	{
		//System.out.println("동작controller");
		String chargelist = Integer.toString(c.getChargelist());
		String chargemethod = c.getChargemethod();
		rttr.addFlashAttribute("chargelist", chargelist);
		rttr.addFlashAttribute("chargemethod", chargemethod);
		dao.charge(c);
		return "redirect:chargeCom";
		
	}
	
	@RequestMapping("/chargeCom")
	public void chargeCom(@ModelAttribute(value="vo") ChargePointVo c, HttpServletRequest request)
	{
		
	}
	
	@RequestMapping(value = "/charge", method = RequestMethod.GET)
	public void charge()
	{
    	
	}
	
	
	
}
