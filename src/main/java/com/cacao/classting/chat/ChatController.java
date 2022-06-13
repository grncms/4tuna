package com.cacao.classting.chat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {
	@Autowired
	private SimpMessagingTemplate simpMessagingTempleate;	
	@Autowired
	private ChatService service;
	@MessageMapping("/topic/public") // 클라이언트에서 메세지를 보내는 주소.
	public void message(Chat chat) throws Exception {
		String classId = chat.getCtcsSeq();
		String receiver = chat.getCtmgReceiver();
		String sender = chat.getCtmgSender();
		String msg = chat.getCtmgMessage();
		System.out.println("classId: " + classId + "receiver: " + receiver );
		System.out.println("sender: " + sender+ "msg: " + msg);
		service.insertMsgInfo(chat);
		
		//받은 데이터를 저장 발신인,수신인,메세지,전송날짜,클래스id
		
		
		
		simpMessagingTempleate.convertAndSend("/sub/topic/" + classId + "/" + receiver, chat); //받은 메세지를 converAndSend의 파라미터로 전송

		 System.out.println("수신메시지: " + chat.getCtmgMessage());
	}
	
	@ResponseBody
	@RequestMapping("/enterRoom")
	public Map<String,Object> enterRoom(@RequestBody Map<String,Object> chatMap ) throws Exception {
		System.out.println("맵:" + chatMap.toString());
		chatMap.put("code","0000");
		List<Chat> chatList = service.selectMsg(chatMap);
		chatMap.put("receiver", chatMap.get("ctmgReceiver"));
		chatMap.put("chatList", chatList);
		
		return chatMap;
	}

}
