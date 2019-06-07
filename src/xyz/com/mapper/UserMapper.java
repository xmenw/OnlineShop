package xyz.com.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import xyz.com.entity.Users;

@Repository
public interface UserMapper {
	List<Users> queryAllUsers();
	int selectUser(Users user);
	int insertUser(Users user);
}
