package xyz.com.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import xyz.com.entity.Comment;

@Repository	
public interface CommentMapper {
	List<Comment> queryAllComments();
	Integer insertComment(Comment comment);
	List<Comment> queryCommentsById(Integer id);
}
