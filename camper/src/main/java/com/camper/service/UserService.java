package com.camper.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
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

	@Override
	public void sendEmail(UserDTO to, String div) throws Exception {
		// TODO Auto-generated method stub
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "ddd0128888@gmail.com";
		String hostSMTPpwd = "dongram88*";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "CAMPER";
		String fromName = "CAMPER";
		String subject = "";
		String msg = "";

		if(div.equals("findpwd")) {
			subject = "베프마켓 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += to.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += to.getPwd() + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = to.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
		
	}
	
	@Override
	public int updatePwd(UserDTO to) throws Exception {
		// TODO Auto-generated method stub
		return mapper.updatePwd(to);
	}

	@Override
	public void findPwd(HttpServletResponse response, UserDTO to) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		// 위의 매개 변수로 받은 UserDTO는 사용자가 입력한 ID / EMAIL
		// 아래의 UserDTO는 ID가 존재할 경우 그 해당 아이디에 대한 모든 정보를 담은 UserDTO
		UserDTO ck = mapper.successLogin(to);
		PrintWriter out = response.getWriter();
		// 가입된 아이디가 없으면
		if(mapper.checkId(to) != 1) {
			out.print("등록되지 않은 아이디입니다.");
			out.close();
		}
		// 가입된 이메일이 아니면
		else if(!to.getEmail().equals(ck.getEmail())) {
			out.print("등록되지 않은 이메일입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pwd = "";
			for (int i = 0; i < 12; i++) {
				pwd += (char) ((Math.random() * 26) + 97);
			}
			to.setPwd(pwd);
			// 비밀번호 변경
			mapper.updatePwd(to);
			// 비밀번호 변경 메일 발송
			sendEmail(to, "findpwd");

			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
	}

}
