package xyz.com.handler;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import xyz.com.entity.Comment;
import xyz.com.service.CommentService;


@Controller
public class CommentHandler {
	@Autowired
	private CommentService comment;
	
	public void handlerQueryComment(Integer id, HttpServletRequest request) {
		List<Comment> comments = comment.queryCommentById(id);
		request.getSession().setAttribute("comments", comments);
	}
	
	@RequestMapping(value="insertComment", method = RequestMethod.POST)
	public String insertComment(@ModelAttribute("comment") Comment comment) {
		try {
			comment.setcomment(new String(comment.getcomment().getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Integer num = this.comment.insertComment(comment);
		return "redirect:http://localhost:8888/shop/detail/" + comment.getId();
	}
}
