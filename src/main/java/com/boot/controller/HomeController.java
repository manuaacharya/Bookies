package com.boot.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.pojo.loginuser;
import com.boot.service.LoginService;

@Controller
public class HomeController {

	@Autowired
	private LoginService loginservice;

	public HomeController() {
		System.out.println("Home Controller");
	}

	@GetMapping("/")
	public String getIndex() {
		return "index";
	}

	@GetMapping("/back")
	public String getBack() {
		return "dashboardview";
	}

	@GetMapping("/login")
	public String getLogin(@RequestParam(required = false) String error, Map<String, String> map) {
		if (error != null) {
			map.put("error", error);
		}
		return "login";
	}

	@PostMapping("/login")
	public String postLogin(@RequestParam(required = false) String register, loginuser loginuser, HttpSession session,Map<String, String> map) {
		if (register == null) {
			try {
				if (loginservice.userValidation(loginuser)) {
					session.setAttribute("mail", loginservice.getLoginUser(loginuser.getEmail()).getEmail());
					return "dashboardview";
				} else {
					map.put("error", "Invalid creditionals!");
					return "redirect:login";
				}
			} catch (Exception e) {
				map.put("error", "User not found please register!");
				return "redirect:login";
			}

		} else {
			return "redirect:register";
		}
	}

	@GetMapping("/register")
	public String getRegister(@RequestParam(required = false) String error, Map<String, String> map) {
		if (error != null) {
			map.put("error", error);
		}
		return "register";
	}

	@PostMapping("/register")
	public String userRegister(loginuser user,Map<String, String> map) {
		System.out.println(user);
		if(loginservice.insertUser(user)) {
			return "redirect:login?error=Registration successfull please login!";
		}else {
			return "redirect:register?error=User can't be registered!";
		}
	}

	@GetMapping("/logout")
	public String getLogout(HttpSession httpSession) {
		httpSession.removeAttribute("email");
		return "login";
	}
}
