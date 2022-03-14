package com.camper.service;

import com.camper.model.BoardTO;
import com.camper.model.ReplyTO;

public interface ReplyService {
	public int callMaxRno();
	public ReplyTO writeReply( ReplyTO to ) throws Exception;
	public void checkReply( ReplyTO to );
	public void togetherDelete( ReplyTO to );
	public void writeRereply( BoardTO to );
	public void hitUpReply( BoardTO to );
	public ReplyTO replyList( ReplyTO to );
	public BoardTO countChangeReply( BoardTO to );
	public int countRereply( BoardTO to );
	public int countOnlyRereply( ReplyTO to );
	public void deleteNotHaveRereply( ReplyTO to );
	public void deleteHaveRereply( ReplyTO to );
	public void deleteRereply( ReplyTO to );
	public void hitDownReply( ReplyTO to );
}
