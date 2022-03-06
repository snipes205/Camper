package com.camper.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardTO {

	// 캠핑톡톡 전체 페이지에서 필요한 데이터 ( 컬럼명 )
	private String pseq;
	private String title;
	private String nick;
	private String pwd;
	private String content;
	private String img;
	private String type;
	private String wdate;
	private int heart;
	private int preply;
	
	// 공지사항 전체 페이지에서 필요한 데이터 ( 나머지는 컬럼명이 같다. )
	private String nseq;
}
