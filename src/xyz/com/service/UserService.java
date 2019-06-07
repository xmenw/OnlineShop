package xyz.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import xyz.com.entity.Users;
import xyz.com.mapper.CommentMapper;
import xyz.com.mapper.UserMapper;
import xyz.com.util.SHA;

@Transactional
@Service
public class UserService {
	@Autowired
	private UserMapper userMap;

	public Integer selectUser(Users user) {
		user.setPassword(SHA.getResult(user.getPassword()));
		Integer num = userMap.selectUser(user);
		return num;
	}
	
	public int insertUser(Users user){
		user.setPassword(SHA.getResult(user.getPassword()));
		Integer num = userMap.insertUser(user);
		return num;
	}
}
