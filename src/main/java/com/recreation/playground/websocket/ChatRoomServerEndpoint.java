package com.recreation.playground.websocket;

import java.io.IOException;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import static  com.recreation.playground.websocket.WebSocketUtils.LIVING_SESSIONS_CACHE;
import static  com.recreation.playground.websocket.WebSocketUtils.sendMessage;
import static  com.recreation.playground.websocket.WebSocketUtils.sendMessageAll;

/**
 * 聊天室
 *
 * @author Levin
 * @since 2018/6/26 0026
 */
@RestController
@ServerEndpoint("/websocket/{username}")
public class ChatRoomServerEndpoint {

    private static final Logger log = LoggerFactory.getLogger(ChatRoomServerEndpoint.class);

    @OnOpen
    public void openSession(@PathParam("username") String username, Session session) {
        LIVING_SESSIONS_CACHE.put(username, session);
//        String message = "欢迎用户[" + username + "] 来到聊天室！";
//        log.info(message);
//        System.out.println(LIVING_SESSIONS_CACHE.keySet());
        sendMessageAll("用戶上線列表"+LIVING_SESSIONS_CACHE.keySet().toString());

    }

    @OnMessage
    public void onMessage(@PathParam("username") String username, String message) {
//        log.info(message);
//        sendMessageAll("用户[" + username + "] : " + message);
    }

    @OnClose
    public void onClose(@PathParam("username") String username, Session session) {
        //当前的Session 移除
        LIVING_SESSIONS_CACHE.remove(username);
        sendMessageAll("用戶上線列表"+ LIVING_SESSIONS_CACHE.keySet().toString());
        try {
            session.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @OnError
    public void onError(Session session, Throwable throwable) {
        try {
            session.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        throwable.printStackTrace();
    }


    @GetMapping("/chat-room/{sender}/to/{receive}")
    public void onMessage(@PathVariable("sender") String sender, @PathVariable("receive") String receive, String message) {
        sendMessage(LIVING_SESSIONS_CACHE.get(receive), "[" + sender + "]" + "-> [" + receive + "] : " + message);
    }

}