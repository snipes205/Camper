package com.camper.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.camper.model.UserDTO;

@Repository
@Mapper
public interface TestMapper {
    List<UserDTO> selectTest();
}