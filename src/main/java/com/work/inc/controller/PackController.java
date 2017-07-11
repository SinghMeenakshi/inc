package com.work.inc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.model.Pack;
import com.work.service.PackService;

@Controller
public class PackController 
{
	
 //   ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,PackDaoImp.class,PackServiceImp.class);
   // PackService packService =(PackService)context.getBean("packServiceImp");
   
				@Autowired 
				private PackService packService;
					@RequestMapping("/getpackform")
					public String getPackForm(Model model)
					{
						 
						model.addAttribute("pack",new Pack()); 
						return "PackForm";
					}
					
					@RequestMapping("/savepack")
					public String savePack(@ModelAttribute(name="pack") Pack pack)
					{
						
						packService.savePack(pack);
						return "success";
					}
		
}
