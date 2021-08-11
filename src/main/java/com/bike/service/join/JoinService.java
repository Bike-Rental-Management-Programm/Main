package com.bike.service.join;

import com.bike.dto.member.JoinForm;
import com.bike.dto.member.Member;
import com.bike.dto.member.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class JoinService {

    private final MemberRepository memberRepository;

    public Member join(JoinForm form) {
        Member member = new Member(form.getMemberEmail(), form.getMemberPw(), form.getMemberName(), form.getMemberPhone());
        memberRepository.add(member);
        return member;
    }
}
