package org.shahul.springsecurity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpringSecurityController 
{
	
	
	  @GetMapping("/") 
	  public String landing() {
		  return "landing"; 
	}
	 
	
	@GetMapping("/employees")
	public String home() {
		return "home";
	}
	
	@GetMapping("/leaders")
	public String manager() {
		return "leaders";
	}
	
	@GetMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@GetMapping("/access-denied")
	public String accessDenied() {
		return "accessDenied";
	}
	

}
