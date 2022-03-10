package com.camper.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camper.mapper.UserMapper;
import com.camper.model.UserDTO;

@Service
public class UserService implements UserMapper {
	
	@Autowired
	public UserMapper mapper;

	@Override
	public int checkId(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.checkId(to);
	}

	@Override
	public int checkPwd(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.checkPwd(to);
	}

	@Override
	public UserDTO successLogin(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.successLogin(to);
	}

	@Override
	public void leaveUser(UserDTO to) {
		// TODO Auto-generated method stub
		mapper.leaveUser(to);
		
	}

	@Override
	public void deleteUser(UserDTO to) {
		// TODO Auto-generated method stub
		mapper.deleteUser(to);
		
	}


	

}
