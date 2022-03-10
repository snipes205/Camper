package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
=======
>>>>>>> origin/ljh
import org.springframework.stereotype.Repository;

import com.camper.model.UserDTO;

<<<<<<< HEAD

@Repository
@Mapper
public interface TestMapper {
	@Autowired
=======
@Repository
@Mapper
public interface TestMapper {
>>>>>>> origin/ljh
    List<UserDTO> selectTest();
}