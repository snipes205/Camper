package com.camper.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camper.mapper.ReplyMapper;
import com.camper.model.BoardTO;
import com.camper.model.ReplyTO;
import com.camper.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	public ReplyMapper mapper;

	@Override
	public int callMaxRno() {
		return mapper.replyMaxrno();
	}

	@Override
	public ReplyTO writeReply( ReplyTO to ) throws Exception {
		ReplyTO result = new ReplyTO();
		try {
			// 모댓글 작성
			mapper.writeReply( to );
			
			// 모든 댓글 카운트
			int totalCount = mapper.selectReplyCount( to );
			result.setTotalCount(totalCount);
		} catch(Exception e) {
			throw new Exception("[댓글작성 에러발생]" + e.getMessage(), e);
		}
		return result;
	}

	@Override
	public void checkReply( ReplyTO to ) {
		mapper.checkReply( to );
	}

	@Override
	public void togetherDelete( ReplyTO to ) {
		mapper.togetherDelete( to );
		
	}

	@Override
	public void writeRereply( BoardTO to ) {
		mapper.writeRereply( to );
		
	}

	@Override
	public void hitUpReply( BoardTO to ) {
		mapper.upReply( to );
	}

	@Override
	public ReplyTO replyList(ReplyTO to) {
		return mapper.replyList( to );
	}

	@Override
	public BoardTO countChangeReply(BoardTO to) {
		return mapper.countReply( to );
	}

	@Override
	public int countRereply(BoardTO to) {
		return mapper.countRereply( to );
	}

	@Override
	public int countOnlyRereply(ReplyTO to) {
		return mapper.countOnlyRereply( to );
	}

	@Override
	public void deleteNotHaveRereply(ReplyTO to) {
		mapper.deleteNotHaveRereply( to );
	}

	@Override
	public void deleteHaveRereply(ReplyTO to) {
		mapper.deleteHaveRereply( to );
	}

	@Override
	public void deleteRereply(ReplyTO to) {
		mapper.deleteRereply( to );
	}

	@Override
	public void hitDownReply(ReplyTO to) {
		mapper.downReply( to );
	}

}
