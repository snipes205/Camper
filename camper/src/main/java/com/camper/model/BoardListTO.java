package com.camper.model;

import java.util.ArrayList;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardListTO {

	// Pagination
	private int cpage;
	private int recordPerPage;
	private int blockPerPage;
	private int totalPage;
	private int totalRecord;
	private int startBlock;
	private int endBlock;
	
	// BoardListTO에서 BoardTO 객체를 포함하도록 한다
	private ArrayList<BoardTO> boardLists;
	
	public BoardListTO() {
		// TODO Auto-generated constructor stub
		// 현재 페이지 번호
		this.cpage = 1;
		
		//한 페이지당 보일 데이터(게시물) 갯수
		this.recordPerPage = 5;
		
		// 페이지당 출력 페이지 개수
		this.blockPerPage = 5;
		
		// 전체 페이지
		this.totalPage = 1;
		
		// 총 게시물 수
		this.totalRecord = 0;
	}
}
