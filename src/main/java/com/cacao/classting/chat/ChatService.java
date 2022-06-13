package com.cacao.classting.chat;

import java.util.List;
import java.util.Map;

public interface ChatService {
	public int insertMsgInfo(Chat chat) throws Exception;
	public List<Chat>selectMsg(Map<String, Object> chatMap) throws Exception;
	
}