package com.bike.dto.member;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Repository
public class MemoryMemberRepository implements MemberRepository {

    private static Map<String, Member> store = new HashMap<>();

    public Member add(Member member) {
        log.info("add: member={}", member);
        store.put(member.getMemberEmail(), member);
        return member;
    }

    public Member findById(String memberEmail) {
        return store.get(memberEmail);
    }

    public Member findByLoginId(String loginId) {
        List<Member> all = findAll();
        for (Member member : all) {
            if (member.getMemberEmail().equals(loginId)) {
                return member;
            }
        }
        return null;
    }

    public List<Member> findAll() {
        return new ArrayList<>(store.values());
    }

    public void clearStore() {
        store.clear();
    }
}
