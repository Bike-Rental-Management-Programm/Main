package com.bike.service.login;

import com.bike.dto.member.Member;
import com.bike.dto.member.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class LoginService {

    private final MemberRepository memberRepository;

    public Member login(String memberEmail, String memberPw) {
        Member findMember = memberRepository.findByLoginId(memberEmail);
        if (findMember == null) {
            return null;
        } else if (findMember.getMemberPw().equals(memberPw)) {
            return findMember;
        }
        return null;
    }
}
