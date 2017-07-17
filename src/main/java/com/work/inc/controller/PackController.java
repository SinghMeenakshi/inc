package com.work.inc.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
						model.addAttribute("packs",packs);
						return "PackageList"; 
					}
					
					@RequestMapping("all/pack/viewpack/{id}")
					public String getPackById(@PathVariable int id,Model model)
					{
						Pack pack=packService.getPackById(id);
						model.addAttribute("Pack",pack);
						return "ViewPackage";
					}
					@RequestMapping("admin/pack/deletepack/{id}")
					public String getPackById(@PathVariable int id)
					{
						packService.deletePack(id);
						return "redirect:/all/pack/getallpacks";
					}
					@RequestMapping("admin/pack/geteditform/{id}")
					public String getEditForm(@PathVariable int id,Model model)
					{
						Pack pack=packService.getPackById(id);
						model.addAttribute("Pack",pack);
						return "PackForm";
					}
					@RequestMapping("admin/pack/editpack")
					public String editpack(@ModelAttribute(name="pack")Pack pack)
					{
						packService.updatePack(pack);
						return "redirect:/all/pack/getallpacks";
					}
}
