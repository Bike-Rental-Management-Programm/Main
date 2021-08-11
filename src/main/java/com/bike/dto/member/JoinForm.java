package com.bike.dto.member;

import lombok.Data;

@Data
public class JoinForm {

    private boolean agreedTermsOfService;
    private boolean agreedPersonalInformationCollectionAndUsage;

    private String memberEmail;
    private String memberPw;
    private String memberPwConfirm;
    private String memberName;
    private String memberPhone;
}
