package com.bike.service;

import java.util.List;

import com.bike.dto.Community;

public interface CommunityService {
	public int insertCommunity(Community dto);

	public List<Community> communityList();


}
