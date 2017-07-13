package com.work.inc.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.configuration.DBConfiguration;
import com.work.dao.PackDaoImp;
import com.work.model.Pack;
import com.work.service.PackService;
import com.work.service.PackServiceImp;

@Controller
public class PackController 
{               
					
				 ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,PackServiceImp.class,PackDaoImp.class);
				 PackService packService=(PackService)context.getBean("packServiceImp");
					
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
					
					@RequestMapping("all/pack/getallpacks")
					public String getAllPacks(Model model)
					{
						List<Pack> packs=packService.getAllPacks();
						model.addAttribute("Packs",packs);
						return "PackageList"; 
					}
		
}
