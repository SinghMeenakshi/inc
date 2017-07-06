package com.work.inc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller	
public class HomeController 

{
		@RequestMapping("/")
		public String homePage()
		{
			return "home" ;
		}

		@RequestMapping("/login")
		public String login()
		{
			return "login";
		}
		
		
		@RequestMapping("/registeration")
		public String registeration()
		{
			return "registeration";
		}
		
		@RequestMapping("/aboutus")
		public String aboutus()
		{
			return "aboutus";
		}
		@RequestMapping("/contactus")
		public String contactus()
		{
			return "contactus";
		}
		@RequestMapping("/footer")
		public String footer()
		{
			return "footer";
		}
}
