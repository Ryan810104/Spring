package com.recreation.playground;

import java.util.TimeZone;

import javax.annotation.PostConstruct;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

@SpringBootApplication

@EnableJpaAuditing
@EnableWebSocket
@EnableScheduling
public class GameboyAPP {

	public static void main(String[] args) {
		SpringApplication.run(GameboyAPP.class, args);
	}
    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        return new ServerEndpointExporter();
    }
    
	@PostConstruct
    void setCSTTimeZone(){
        TimeZone.setDefault(TimeZone.getTimeZone("UTC +8"));
    }
}
