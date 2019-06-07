package xyz.com.handler;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.com.entity.Users;
import xyz.com.service.UserService;


@Controller
public class UserHandler {
	@Autowired
	private UserService service;
	
	@RequestMapping(value="selectUser")
	public Integer handlerSelectUser(@ModelAttribute("user") Users user) {
		Integer num = service.selectUser(user);
		return num;
	}
	
	@RequestMapping(value="insertUser")
	public int handlerInsertUser(@ModelAttribute("user") @Valid Users user, BindingResult res) {
		int num = service.insertUser(user);
		if(res.hasErrors()) {
			throw new RuntimeException();
		}
		return num;
	}
	
	@RequestMapping(value="login")
	public String handlerLogin() {
		return "login";
	}
	
	@RequestMapping(value="regist")
	public String handlerRegist() {
		return "Regist";
	}
}
