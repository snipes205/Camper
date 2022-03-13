package com.camper.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewTO {
	private String rvseq;
	private String contentId;
	private String nick;
	private String pwd;
	private String content;
	private String wdate;
}
