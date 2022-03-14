package com.camper.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.camper.mapper.UserMapper;
import com.camper.model.UserDTO;

@Service
public class UserService implements UserMapper {
	
	@Autowired
	public UserMapper mapper;

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private JavaMailSender javaMailSender;
	

	@Override
	public int checkId(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.checkId(to);
	}

	@Override
	public int checkNick(UserDTO to) {
		// TODO Auto-generated method stub
		return mapper.checkNick(to);
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

	@Override
	public int updatePwd(UserDTO to) throws Exception {
		// TODO Auto-generated method stub
		return mapper.updatePwd(to);
	}

	@Override
	public int findPwdCheck(UserDTO to) {
		// TODO Auto-generated method stub
		
		int flag = 2;
		
		// 위의 매개 변수로 받은 UserDTO는 사용자가 입력한 ID / EMAIL
		// 아래의 UserDTO는 ID가 존재할 경우 그 해당 아이디에 대한 모든 정보를 담은 UserDTO
		UserDTO ckto = mapper.successLogin(to);
		
		if(mapper.checkId(to) != 1) {
			// 등록되지 않은 아이디
			flag = 1;
		} else if(!to.getEmail().equals(ckto.getEmail())) {
			// 회원가입 시 기입한 이메일과 일치하지 않음
			flag = 0;
		}
		return flag;
	}
	
	@Override
	public int findPwd(HttpServletResponse response, UserDTO to) throws Exception {
		
		// 임시비밀 번호 메일 발송을 위한 코드 
		SimpleMailMessage simpleMessage = new SimpleMailMessage();
		simpleMessage.setTo(to.getEmail());
		simpleMessage.setSubject("CAMPER 임시비밀번호가 도착했어요!");
		String pwd = "";
		for (int i = 0; i < 12; i++) {
			pwd += (char) ((Math.random() * 26) + 97);
		}
		String msg = "임시비밀번호 발급 \n"+ to.getId()+"\t님의 임시 비밀번호는" + pwd + "\t입니다.\n"
				+ "로그인 후 비밀번호를 변경해주세요!";
		simpleMessage.setText(msg);
		javaMailSender.send(simpleMessage);
		
		// 위에 생성한 임시 비밀 번호를 메일로 발송 후 DB에도 업데이트 시켜준다
		to.setPwd(pwd);
		int flag = mapper.updatePwd(to);
		return flag;
	}

	@Override
	public int signup(UserDTO to) {
		int flag = 1;
		int result = sqlSession.insert("signup", to);
		if(result == 1) {
			flag = 0;
		}
		return flag;
	}
	
}
