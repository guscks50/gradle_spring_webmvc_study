package gradle_spring_webmvc_study.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import gradle_spring_webmvc_study.dto.RegisterRequest;
import gradle_spring_webmvc_study.exception.DuplicateMemberException;
import gradle_spring_webmvc_study.service.MemberRegisterService;

@Controller
@RequestMapping("/register")
public class RegisterController {

	@Autowired
	private MemberRegisterService memberRegisterService;

	@RequestMapping("/step1")
	public String handleStep1() {
		return "/register/step1";
	}

	@PostMapping("/step2")
	public String handleStep2(@RequestParam(value = "agree", defaultValue = "false") Boolean agree, RegisterRequest registerRequest) {
		if (!agree) {
			return "register/step1";
		}
		return "register/step2";
	}

	@GetMapping("/register/step2")
	public String handleStep2Get() {
		return "redirect:/register/step1";
	}

	@PostMapping("/step3")
	public String handleStep3(@Valid RegisterRequest regReq, Errors errors) {
//		new RegisterRequestValidator().validate(regReq, errors);
		if (errors.hasErrors())
			return "register/step2";
		try {
			memberRegisterService.regist(regReq);
			return "register/step3";
		} catch (DuplicateMemberException ex) {
			errors.rejectValue("email", "duplicate");
			return "register/step2";
		}
	}

}
