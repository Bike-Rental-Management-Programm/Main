package com.bike.util;

import org.springframework.stereotype.Component;

import java.util.regex.Pattern;

@Component
public class RegularExpression {

    public boolean isEmail(String memberEmail) {
        return Pattern.matches("^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$", memberEmail);
    }

    public boolean isPassword(String memberPw) {
        return Pattern.matches("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,16}$", memberPw);
    }

    public boolean isName(String memberName) {
        return Pattern.matches("^[가-힣]{2,10}$", memberName);
    }

    public boolean isPhone(String memberPhone) {
        return Pattern.matches("^[0-9]{9,11}$", memberPhone);
    }
}
