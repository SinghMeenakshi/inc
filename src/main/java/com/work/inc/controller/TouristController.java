package com.work.inc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.model.Tourist;
import com.work.model.User;
import com.work.service.TouristService;

@Controller
public class TouristController {
	@Autowired
	private TouristService touristService;

	@RequestMapping("/Registeration")
	public String getRegisterationForm(Model model) {
		model.addAttribute("tourist", new Tourist());
		return "Registeration";
	}

	@RequestMapping("/savetourist")
	public String registerTourist(@Valid @ModelAttribute Tourist tourist, BindingResult result, Model model) {

		System.out.println("data recieved in Tourist Controller" + tourist.getFirstname());
		if (result.hasErrors()) {

			return "Registeration";

		}
		User user = touristService.validateUsername(tourist.getUser().getUsername());
		if (user != null) {
			model.addAttribute("duplicationUsername", "Username already exists plz try another username");
			return "Registeration";
		}

		Tourist duplicateTourist = touristService.validateEmail(tourist.getEmail());
		if (duplicateTourist != null) {
			model.addAttribute("duplicationEmail", "Email already exists plz try another Email");
			return "Registeration";
		}
		touristService.registerTourist(tourist);
		return "home";
	}
}
