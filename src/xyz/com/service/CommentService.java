package xyz.com.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sun.org.apache.xml.internal.security.Init;

import xyz.com.entity.Comment;
import xyz.com.mapper.CommentMapper;

@Service
public class CommentService {
	@Autowired
	private CommentMapper c;
	
	public List<Comment> queryCommentById(int id){
		try {
			List<Comment> comments = c.queryCommentsById(id);
			return comments;
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}
	
	@Transactional(rollbackFor = {SQLException.class})
	public Integer insertComment(Comment comment){
		try {
			int num = c.insertComment(comment);
			return num;
		} catch (Exception e) {
			throw new RuntimeException();
		}
		
	}
	
}
