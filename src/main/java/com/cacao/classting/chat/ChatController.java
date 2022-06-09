package com.cacao.classting.chat;

import java.util.Map;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {

	@MessageMapping("/topic/public/{classId}/{myId}") // 클라이언트에서 메세지를 보내는 주소.
	@SendTo("/sub/topic/{classId}/{myId}") // 클래스 아이디 + /내 세션아이디
	public String message(String msg) {
		
		/*
		 * System.out.println("메시지: "+chat.getMsg());
		 * System.out.println("보낸사람: "+chat.getId());
		 */
		 System.out.println("수신메시지: " + msg);
		return msg; // sentTo 주소에 매핑하여 전송
	}
	
	@ResponseBody
	@RequestMapping("/enterRoom")
	public Map<String,Object> enterRoom(@RequestBody Map<String,Object> chat) {
		System.out.println("맵:" + chat.toString());
		chat.put("code","0000");
		
		return chat;
	}

}
