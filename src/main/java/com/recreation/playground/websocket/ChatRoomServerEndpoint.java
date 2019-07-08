package com.recreation.playground.websocket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceUnit;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.recreation.playground.dao.FriendListDao;
import com.recreation.playground.dao.MemberDao;
import com.recreation.playground.entity.FriendList;
import com.recreation.playground.entity.Member;
import com.recreation.playground.service.MemberService;

import static com.recreation.playground.websocket.WebSocketUtils.LIVING_SESSIONS_CACHE;
import static com.recreation.playground.websocket.WebSocketUtils.sendMessage;
import static com.recreation.playground.websocket.WebSocketUtils.sendMessageAll;

/**
 * 聊天室
 *
 * @author Levin
 * @since 2018/6/26 0026
 */
@RestController
@ServerEndpoint("/websocket/{username}/{usernumber}")
public class ChatRoomServerEndpoint {

	Thread thread;
	boolean running = false;

	private static final Logger log = LoggerFactory.getLogger(ChatRoomServerEndpoint.class);
	
	public String showIDfromUsername (int num) {
		EntityManager em = ApplicationContextRegister.getApplicationContext().getBean(EntityManager.class);
		Member a = em.find(Member.class, num);
		return a.getMemberId();
	};

	@SuppressWarnings({ "static-access", "unchecked" })
	@OnOpen
	public void openSession(@PathParam("username") String username, Session session , @PathParam("usernumber") Integer usernumber) {
		LIVING_SESSIONS_CACHE.put(username, session);
		sendMessageAll("用戶上線列表" + LIVING_SESSIONS_CACHE.keySet().toString());
		

////////////////////////////////
//
// 有人加使用者好友時，發出通知給使用者
//
////////////////////////////////

		final Session mysession = session;
		this.running = true;
		this.thread = new Thread(() -> {
			while (running) {
				if (mysession.isOpen()) {
					try {
						FriendListDao friendlistdao =  ApplicationContextRegister.getApplicationContext().getBean(FriendListDao.class);
						List<Object> list = friendlistdao.findCurrentIdunRead(usernumber);
						if (list.size() !=0) {
							Map<Integer,List<String>> map = new HashMap<>();
							for (int i = 0 ; i < list.size() ; i++) {
								List<String> friendinfo = new ArrayList<>();
								Object[] tempObj = (Object[]) list.get(i);
								int membernum =  (int) tempObj[0];
								int memberlist = (int) tempObj[2];
								friendinfo.add(String.valueOf(membernum));
								friendinfo.add(showIDfromUsername(membernum));
								map.put(memberlist, friendinfo);

							}
							mysession.getBasicRemote().sendText("加好友訊息"+"/"+map);
//							System.out.println(Arrays.deepToString(list.toArray()));
//							String data = Arrays.deepToString(list.toArray());
//							String[] data1 = data.split(",");
//							int a = Integer.valueOf(data1[0].replace("[", "").replace("]", ""));
//							System.out.println(showIDfromUsername(a));
//							mysession.getBasicRemote().sendText("加好友訊息"+"/"+a+"/"+showIDfromUsername(a) + "/");

						} else {
							mysession.getBasicRemote().sendText("你沒朋友"+"/");
						}
//						System.out.println(list.isEmpty());
//						mysession.getBasicRemote().sendText(String.valueOf(list.get(1)));
						thread.sleep(1000);
					} catch (IOException | InterruptedException e) {
						running = false;
						e.printStackTrace();
					}
				} else {
					running = false;
				}
			}
		});
		this.thread.start();
	}

	@OnMessage
	public void onMessage(@PathParam("username") String username, String message) {
//        log.info(message);
//        sendMessageAll("用户[" + username + "] : " + message);
	}

	@OnClose
	public void onClose(@PathParam("username") String username, Session session) {
		// 当前的Session 移除
		this.running = false;
		this.thread = null;
		LIVING_SESSIONS_CACHE.remove(username);
		sendMessageAll("用戶上線列表" + LIVING_SESSIONS_CACHE.keySet().toString());
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
	public void onMessage(@PathVariable("sender") String sender, @PathVariable("receive") String receive,
			String message) {
		sendMessage(LIVING_SESSIONS_CACHE.get(receive), "[" + sender + "]" + "-> [" + receive + "] : " + message);
	}

}