package com.bike.service.validation;

import com.bike.dto.member.LoginForm;
import com.bike.util.RegularExpression;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@RequiredArgsConstructor
@Component
public class LoginValidator implements Validator {

    private final RegularExpression regularExpression;

    @Override
    public boolean supports(Class<?> clazz) {
        return LoginForm.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        LoginForm form = (LoginForm) target;

        if (!StringUtils.hasText(form.getMemberEmail())) {
            errors.rejectValue("memberEmail", "required");
        } else if (!regularExpression.isEmail(form.getMemberEmail())) {
            errors.rejectValue("memberEmail", "form");
        }

        if (!StringUtils.hasText(form.getMemberPw())) {
            errors.rejectValue("memberPw", "required");
        }
    }
}
