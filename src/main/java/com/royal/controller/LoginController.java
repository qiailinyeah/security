package com.royal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 登录控制类
 * @author Royal
 *
 */
@Controller
public class LoginController {
	
	@RequestMapping(value = "/login" , method = RequestMethod.GET)
	public String gotoLogin(ModelMap model){
		return "login";
	}
	
	/**
	 * 访问地址：http://ip:port/project/welcome
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/user" , method = RequestMethod.GET)
	public String gotoUser(ModelMap model){
		model.addAttribute("message", "USER");
		//寻找页面user.jsp，地址变为：http://ip:port/project/user.jsp
		return "user";
	}
	
	@RequestMapping(value = "/admin" , method = RequestMethod.GET)
	public String gotoAdmin(ModelMap model){
		model.addAttribute("message", "ADMIN");
		//寻找页面admin.jsp，地址变为：http://ip:port/project/admin.jsp
		return "admin";
	}

}
