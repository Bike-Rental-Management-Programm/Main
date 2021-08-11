package com.bike.controller.member;

import com.bike.dto.member.JoinForm;
import com.bike.dto.member.Member;
import com.bike.dto.member.MemberRepository;
import com.bike.service.join.JoinService;
import com.bike.service.validation.JoinValidator;
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
public class JoinController {

    private final JoinService joinService;
    private final JoinValidator joinValidator;

    @InitBinder
    public void init(WebDataBinder dataBinder) {
        log.info("init binder {}", dataBinder);
        dataBinder.addValidators(joinValidator);
    }

    @GetMapping("/joinPolicy")
    public String getJoinPolicy() {
        return "/member/joinPolicy";
    }

    @PostMapping("/joinPolicy")
    public String postJoinPolicy() {
        return "member/joinForm";
    }

    @PostMapping("/join")
    public String join(@Validated @ModelAttribute("member") JoinForm joinForm, BindingResult bindingResult) {

        if(bindingResult.hasErrors()) {
            log.info("errors={}", bindingResult);
            return "member/joinForm";
        }

        Member member = joinService.join(joinForm);

        log.info("join member={}", member);
        return "redirect:/index.jsp";
    }
}
