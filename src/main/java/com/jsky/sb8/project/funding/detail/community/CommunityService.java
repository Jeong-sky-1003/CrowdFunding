package com.jsky.sb8.project.funding.detail.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommunityService {

	@Autowired
	private CommunityRepository communityRepository;
	
	public long getCommentCount(long tmpNum) throws Exception{
		return communityRepository.getCommentCount(tmpNum);
	}
	
	public List<CommunityVO> getReplyList(long writeNum, long step) throws Exception{
		return communityRepository.findByRefAndStepOrderByRegDateDesc(writeNum, step);
	}
	
	public List<CommunityVO> getCommentList(long tmpNum, long step) throws Exception{
		return communityRepository.getComment(tmpNum, step);
	}
	
}
