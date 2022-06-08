package com.cacao.classting.chat;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatHandler extends TextWebSocketHandler {
		 private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			sessionList.add(session);
			System.out.println(session + "님이 접속하였습니다.");
		}

		
		@Override
		public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
			sessionList.remove(session);
			System.out.println(("{} 연결 끊김"+ session.getId()));
		}

		@Override
		protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	        System.out.println(("{}로 부터 {} 받음"+ session.getId()+ message.getPayload()));
	        for (WebSocketSession sess : sessionList) {
	          sess.sendMessage(new TextMessage(session.getId() + " : " + message.getPayload()));
	        }
		}
}
