package com.yansm.web;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yansm.domain.User;
import com.yansm.service.UserService;

@Controller
public class LoginController {
	
	private static Logger logger = Logger.getLogger(LoginController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/")
	public String loginPage(){
		return "login";
	}
	
	@RequestMapping(value="/loginCheck")
	public ModelAndView loginCheck(HttpServletRequest request,HttpServletResponse response){

		String userName =request.getParameter("userName");
		String password = request.getParameter("password");
		boolean isValidUser = userService.hasMatchUser(userName, password);
		if(!isValidUser){
			return new ModelAndView("login","error","用户名或密码错误。");
		}else{
			User user = userService.findUserByUserName(userName);			
			user.setLastIp(request.getRemoteAddr());
			user.setLastVisit(new Date());
			userService.loginSuccess(user);
			request.getSession().setAttribute("user", user);	
			
			
			List<User> users =userService.getAllUser();
			request.setAttribute("users", users);
			
			return new ModelAndView("main");
	
		
		}
	}
	@RequestMapping(value="/new")
	public String newUser(){
		return "new";
	}
	
	@RequestMapping(value="/main")
	public String main(HttpServletRequest request,HttpServletResponse response){
        		
		List<User> users =userService.getAllUser();
		request.setAttribute("users", users);
		
		return "main";
	}
	
	@RequestMapping(value="/addUser")
	public String insertUser(HttpServletRequest request,HttpServletResponse response){
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
				
		User user1= new User();
		user1.setUserName(userName);
		user1.setPassword(password);		
		user1.setCredits(0);		
		userService.insertUser(user1);	
		
		List<User> users =userService.getAllUser();
		request.setAttribute("users", users);		
		return "main";
		
		
	}
	@RequestMapping(value="/loginOut")
	public String loginOut(HttpServletRequest request,HttpServletResponse response){
		return "login";
	}
	
	
	@RequestMapping(value="/deleteUser/{userId}")
	public String deleteUser(HttpServletRequest request,@PathVariable String  userId){
					
		userService.deleteUser(userId);
		
		List<User> users =userService.getAllUser();
		request.setAttribute("users", users);
		
		return "redirect:/main";
	}
	
	@RequestMapping(value="/updateUser/{userId}")
	public String updateUser(HttpServletRequest request,@PathVariable String  userId){
		User user =userService.seeUser(userId);
		request.setAttribute("user", user);		
		return "user";		
	}
	
	
	@RequestMapping(value="/saveUser")
	public String saveUser(HttpServletRequest request ,HttpServletResponse response){
		
		
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String userId = request.getParameter("userId");							
		User user1 = userService.seeUser(userId);
				
		user1.setUserName(userName);
		user1.setPassword(password);

		userService.saveUser(user1);
		return "redirect:/main";
		
	}
	
	@RequestMapping(value="/searchName")
	public String searchName(HttpServletRequest request ,HttpServletResponse response){
				
		String userName = request.getParameter("userName");						
		List<User> users = userService.findUserList(userName);				
		request.setAttribute("users", users);
		
		return "main";
	}

}
