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

	Thread threadfriendnotice;
	boolean runningnotice = false;

	private static final Logger log = LoggerFactory.getLogger(ChatRoomServerEndpoint.class);

	public String showIDfromUsername(int num) {
		EntityManager em = ApplicationContextRegister.getApplicationContext().getBean(EntityManager.class);
		Member a = em.find(Member.class, num);
		return a.getMemberId();
	};

	@SuppressWarnings({ "static-access", "unchecked" })
	@OnOpen
	public void openSession(@PathParam("username") String username, Session session,
			@PathParam("usernumber") Integer usernumber) {
		LIVING_SESSIONS_CACHE.put(username, session);
		sendMessageAll("用戶上線列表" + LIVING_SESSIONS_CACHE.keySet().toString());

		final Session mysession = session;
////////////////////////////////
//
// 有人加使用者好友時，發出通知給使用者
//
////////////////////////////////

		this.running = true;
		this.thread = new Thread(() -> {
			while (running) {
				if (mysession.isOpen()) {
					try {
						FriendListDao friendlistdao = ApplicationContextRegister.getApplicationContext().getBean(FriendListDao.class);
						List<Object> list = friendlistdao.findCurrentIdunRead(usernumber);
						if (list.size() != 0) {
							Map<Integer, List<String>> map = new HashMap<>();
							for (int i = 0; i < list.size(); i++) {
								List<String> friendinfo = new ArrayList<>();
								Object[] tempObj = (Object[]) list.get(i);
								int membernum = (int) tempObj[0];
								int memberlist = (int) tempObj[2];
								friendinfo.add(String.valueOf(membernum));
								friendinfo.add(showIDfromUsername(membernum));
								map.put(memberlist, friendinfo);

							}
							mysession.getBasicRemote().sendText("加好友訊息" + "/" + map);
						} else {
							mysession.getBasicRemote().sendText("你沒朋友" + "/");
						}
/////////////////////////////////找通知
						EntityManager em = ApplicationContextRegister.getApplicationContext().getBean(EntityManager.class);
						String sql = "SELECT distinct  f1.friend_list_friendid , m1.member_id , f1.friend_list_num  FROM friend_list f1   JOIN friend_list f2 ON f2.friend_list_memberid = f1.friend_list_friendid JOIN  member m1 ON m1.member_num = f1.friend_list_friendid  WHERE f1.friend_list_memberid = "
								+ usernumber
								+ " and f1.friend_id_is_read = f2.friend_id_is_read and f1.friend_id_is_read = 1 and f1.friend_notify = 0";
						List<Object[]> list1 = em.createNativeQuery(sql).getResultList();
						
						String sql2 = "SELECT DISTINCT m1.member_num , c1.complaint_message , c1.complaint_response , c1.complaint_num FROM complaint c1 JOIN member m1 on m1.member_id = c1.member_id  WHERE m1.member_num = "+usernumber+" and c1.response_anno = 0 ";
						List<Object[]> list2 = em.createNativeQuery(sql2).getResultList();
						
						String sql3 = "SELECT  m1.member_illegal_times , m1.member_id , m1.member_num FROM MEMBER m1 WHERE m1.member_num = "+usernumber+" and m1.ban_annot = 0";
						List<Object[]> list3 = em.createNativeQuery(sql3).getResultList();
						
						String sql4 = "SELECT c2.customermessageboard_memberid , c2.customermessageboard_response_floor, c1.customermessageboard_title , c2.customermessageboard_num FROM  customer_message_board c1 INNER JOIN customer_message_board c2 ON c2.customermessageboard_article_floor = c1.customermessageboard_article_floor WHERE c1.customermessageboard_response_floor = 0 and c2.customermessageboard_article_floor <> 0 and c2.customermessageboard_member_num <> "+usernumber+" and c1.customermessageboard_member_num = "+usernumber+"  and c2.customerresponseanno = 0";
						List<Object[]> list4 = em.createNativeQuery(sql4).getResultList();
						if (list1.size() != 0 || list2.size() !=0 || list3.size() !=0 || list4.size() !=0) {
							try {
								mysession.getBasicRemote().sendText("test" + "/" + Arrays.deepToString(list1.toArray()) +"response" + Arrays.deepToString(list2.toArray()) + "ban" + Arrays.deepToString(list3.toArray()) + "reply" + Arrays.deepToString(list4.toArray()));
							} catch (IOException e) {
								running = false;
							}
						} else {
							mysession.getBasicRemote().sendText("沒有通知" + "/");
						}
						thread.sleep(3000); //thread結束，睡X秒後從new Thread開始跑
					} catch (IOException | InterruptedException e) {
						running = false;
						e.printStackTrace();
					}
				} else {
					running = false;
				}
			} //running 結尾
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