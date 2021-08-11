package com.bike.dto.member;

import java.util.List;

public interface MemberRepository {

    public Member add(Member member);

    public Member findById(String memberEmail);

    public Member findByLoginId(String loginId);

    public List<Member> findAll();

}
