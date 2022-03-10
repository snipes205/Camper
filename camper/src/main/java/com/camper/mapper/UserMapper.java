package com.camper.mapper;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.model.UserDTO;

@Repository
@Mapper
public interface UserMapper {
	public int checkId(UserDTO to);
	public int checkPwd(UserDTO to);
	public UserDTO successLogin(UserDTO to);
	public void leaveUser(UserDTO to);
	public void deleteUser(UserDTO to);
	public void sendEmail(UserDTO to, String div) throws Exception;
	public void findPwd(HttpServletResponse response, UserDTO to) throws Exception;
	public int updatePwd(UserDTO to) throws Exception;
}
