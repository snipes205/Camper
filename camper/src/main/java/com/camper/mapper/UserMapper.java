package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.model.UserDTO;

@Repository
@Mapper
public interface UserMapper {
	int checkId(UserDTO to);
	int checkPwd(UserDTO to);
	UserDTO successLogin(UserDTO to);
	void leaveUser(UserDTO to);
	void deleteUser(UserDTO to);
}
