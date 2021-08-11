package com.bike.dto.member;

import lombok.Data;

@Data
public class Member {

    private String memberEmail;
    private String memberPw;
    private String memberName;
    private String memberPhone;
    private int memberCash;
    private String memberGrade;
    private boolean memberRentalStatus;
    private String memberPhoto;

    public Member() {

    }

    public Member(String memberEmail, String memberPw, String memberName, String memberPhone) {
        this.memberEmail = memberEmail;
        this.memberPw = memberPw;
        this.memberName = memberName;
        this.memberPhone = memberPhone;
        this.memberGrade = MemberGrade.GENERAL;
    }
}
