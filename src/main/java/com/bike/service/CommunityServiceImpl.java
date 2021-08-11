package com.bike.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bike.dao.CommunityDao;
import com.bike.dto.Community;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	CommunityDao communityDao;

	/* 소통장 계시판 등록 */
	@Override
	public int insertCommunity(Community dto) {
		int result = 0;
		try {
			result = communityDao.insertCommunity(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/* 소통장 계시판 목록 */
	@Override
	public List<Community> communityList() {
		List<Community> list = communityDao.communityList();
		return list;
	}

}
