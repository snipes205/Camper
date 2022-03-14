package com.camper.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyTO {
	private int rno;
	private int bno;
	private int grp;
	private int grps;
	private int depth;
	private String nick;
	private String content;
	private String wdate;
	
	private int totalCount;
}
