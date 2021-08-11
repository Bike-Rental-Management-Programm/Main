package com.bike.controller.member;

import com.bike.dto.member.LoginForm;
import com.bike.dto.member.Member;
import com.bike.dto.member.MemberRepository;
import com.bike.service.login.LoginService;
import com.bike.service.validation.LoginValidator;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/members")
@Controller
public class LoginController {

    private final LoginService loginService;
    private final LoginValidator loginValidator;

    @InitBinder
    public void init(WebDataBinder dataBinder) {
        log.info("init binder {}", dataBinder);
        dataBinder.addValidators(loginValidator);
    }

    @GetMapping("/login")
    public String login() {
        return "/member/loginForm";
    }

    @PostMapping("/login")
    public String login(@Validated @ModelAttribute("member") LoginForm form, BindingResult bindingResult) {

        if(bindingResult.hasErrors()) {
            log.info("errors={}", bindingResult);
            return "member/loginForm";
        }

        Member member = loginService.login(form.getMemberEmail(), form.getMemberPw());

        return "redirect:/";
    }
}
