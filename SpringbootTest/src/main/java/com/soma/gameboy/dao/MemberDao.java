package com.soma.gameboy.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.soma.gameboy.entities.Member;

public interface MemberDao extends JpaRepository<Member, Long> {

}
