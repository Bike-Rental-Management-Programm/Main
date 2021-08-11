package com.bike.service.validation;

import com.bike.dto.member.JoinForm;
import com.bike.util.RegularExpression;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@RequiredArgsConstructor
@Component
public class JoinValidator implements Validator {

    private final RegularExpression regularExpression;

    @Override
    public boolean supports(Class<?> clazz) {
        return JoinForm.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        JoinForm form = (JoinForm) target;

        if (!StringUtils.hasText(form.getMemberEmail())) {
            errors.rejectValue("memberEmail", "required");
        } else if (!regularExpression.isEmail(form.getMemberEmail())) {
            errors.rejectValue("memberEmail", "form");
        }

        if (!StringUtils.hasText(form.getMemberPw())) {
            errors.rejectValue("memberPw", "required");
        } else if (!regularExpression.isPassword(form.getMemberPw())) {
            errors.rejectValue("memberPw", "form");
        }

        if (!form.getMemberPw().equals(form.getMemberPwConfirm())) {
            errors.rejectValue("memberPwConfirm", "notEqual");
        }

        if (!StringUtils.hasText(form.getMemberName())) {
            errors.rejectValue("memberName", "required");
        } else if (!regularExpression.isName(form.getMemberName())) {
            errors.rejectValue("memberName", "form");
        }

        if (!StringUtils.hasText(form.getMemberPhone())) {
            errors.rejectValue("memberPhone", "required");
        } else if (!regularExpression.isPhone(form.getMemberPhone())) {
            errors.rejectValue("memberPhone", "form");
        }

    }


}
