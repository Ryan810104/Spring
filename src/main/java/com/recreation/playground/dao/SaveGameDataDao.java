package com.recreation.playground.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.recreation.playground.entity.SaveGameData;

public interface SaveGameDataDao extends JpaRepository<SaveGameData,Integer> {

}
