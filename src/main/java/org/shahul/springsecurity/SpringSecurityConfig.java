package org.shahul.springsecurity;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private DataSource securityDataSource;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
//		UserBuilder users=User.withDefaultPasswordEncoder();
//		auth.inMemoryAuthentication().withUser(users.username("shahul").password("shahul123").roles("EMP","MANAGER"))
//		.withUser(users.username("hameed").password("hameed123").roles("EMP"))
//		.withUser(users.username("basha").password("basha123").roles("EMP","ADMIN"));
		
		auth.jdbcAuthentication().dataSource(securityDataSource);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/").permitAll()
		.antMatchers("/employees").hasRole("EMPLOYEE")
		.antMatchers("/leaders/**").hasRole("MANAGER")
		.antMatchers("/admin/**").hasRole("ADMIN")
		.and()
		.formLogin().loginPage("/showLogin").loginProcessingUrl("/authenticateUser")
		.permitAll()
		.and()
		.exceptionHandling().accessDeniedPage("/access-denied");
		
		http.logout()
		.permitAll();
	}
	
	
	

}
