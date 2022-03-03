package com.camper.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camper.mapper.TestMapper;
import com.camper.model.UserDTO;

@Service
public class TestService {
    @Autowired
    public TestMapper mapper;

    public List<UserDTO> selectTest() {
        return mapper.selectTest();
    }
}