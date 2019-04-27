package org.shahul.springsecurity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpringSecurityController 
{
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
}
