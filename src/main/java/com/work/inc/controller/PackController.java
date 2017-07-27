package com.work.inc.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.work.model.Category;
import com.work.model.Pack;
import com.work.service.PackService;

@Controller
public class PackController {
	@Autowired
	
	private PackService packService;

	@RequestMapping("/getpackform")
	public String getPackForm(Model model) {
		List<Category> categories = packService.getAllCategories();
		model.addAttribute("categories", categories);
		model.addAttribute("pack", new Pack());
		return "PackForm";
	}

	@RequestMapping("/savepack")
	public String savePack(@Valid @ModelAttribute(name = "pack") Pack pack, BindingResult result, Model model) {
		if (result.hasErrors()) {
			List<Category> categories = packService.getAllCategories();
			model.addAttribute("categories", categories);
			return "PackForm";
		}
		packService.savePack(pack);
		MultipartFile image = pack.getImage();
		Path path = Paths.get("C:\\Users\\MEENAKSHI\\workspace\\inc\\src\\main\\webapp\\WEB-INF\\resources\\images\\"
				+ pack.getId() + ".png");

		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/getallpacks";
	}

	@RequestMapping("/getallpacks")
	public String getAllPacks(Model model) {
		List<Pack> packs = packService.getAllPacks();
		model.addAttribute("packs", packs);
		return "PackageList";
	}

	@RequestMapping("/viewpack{id}")
	public String getPackById(@PathVariable int id, Model model) {
		Pack pack = packService.getPackById(id);
		model.addAttribute("pack", pack);
		return "ViewPackage";
	}

	@RequestMapping("/deletepack/{id}")
	public String getPackById(@PathVariable int id) {
		packService.deletePack(id);
		Path path = Paths.get("C:\\Users\\MEENAKSHI\\workspace\\inc\\src\\main\\webapp\\WEB-INF\\resources\\images\\"
				+ id + ".png");
		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return "redirect:/getallpacks";
	}

	@RequestMapping("/geteditform/{id}")
	public String getEditForm(@PathVariable int id, Model model) {
		List<Category> categories = packService.getAllCategories();
		model.addAttribute("categories", categories);
		Pack pack = packService.getPackById(id);
		model.addAttribute("pack", pack);
		return "EditForm";
	}

	@RequestMapping("/editpack")
	public String editpack(@Valid @ModelAttribute(name = "pack") Pack pack, BindingResult result, Model model) {
		if (result.hasErrors()) {
			List<Category> categories = packService.getAllCategories();
			model.addAttribute("categories", categories);
			return "EditForm";
		}

		packService.updatePack(pack);
		MultipartFile image = pack.getImage();
		Path path = Paths.get("C:\\Users\\MEENAKSHI\\workspace\\inc\\src\\main\\webapp\\WEB-INF\\resources\\images\\"
				+ pack.getId() + ".png");

		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/getallpacks";
	}
	@RequestMapping("searchbyCategory{cid}")
	public String selectByCategory(@PathVariable int cid, Model model)
	{
		List<Pack> packs=packService.getPackByCategory(cid);
		model.addAttribute("packs",packs);
		return "PackageList";
	}

}
