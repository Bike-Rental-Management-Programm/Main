package com.bike.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bike.dto.Community;
@Mapper
public interface CommunityDao {
	public int insertCommunity(Community dto);

	public List<Community> communityList();



}
