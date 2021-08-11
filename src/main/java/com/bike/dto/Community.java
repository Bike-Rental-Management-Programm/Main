package com.bike.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/*
 * 계시판 도메인 클래스
 */
@Data
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Community {

	/* 게시판 글번호 */
	private int communityWriteNo;

	/* 게시판 작성자 */
	private String memberEmail;
	
	/* 제목 */
	private String communitySubject;
	
	/* 내용*/
	private String communityContent;
	
	/* 파일첨부*/
	private String communityAttachedFile;
	
	/*추천수*/
	private int communityLikeCnt;
	
	/*조회수*/
	private int communityViewCnt;
	
	/* 게시판 작성일 */
	private String communityTime;

}
