package com.cher.dojoninjas.controllers;

//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cher.dojoninjas.models.Dojo;
import com.cher.dojoninjas.models.Ninja;
import com.cher.dojoninjas.services.MainService;

@Controller
public class MainController {

	// import Services
	@Autowired
	public MainService mainService;
	
	//Show create New Dojo form
	@RequestMapping(value={"/dojos/new", "/", "/dojos"})
	public String createDojo(@ModelAttribute("dojo") Dojo dojo, Model model) {
		List<Dojo> dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);
		return "newDojo.jsp";
	}

	// process New Dojo form
	@PostMapping("/dojos/new")
	public String processNewDojo(@Valid @ModelAttribute("dojo") Dojo dojo,
								BindingResult result, Model model) {
		if(result.hasErrors() ) {
			List<Dojo> dojos = mainService.allDojos();
			model.addAttribute("dojos", dojos);
			return "newDojo.jsp";
		} else {
			mainService.createDojo(dojo);
			return "redirect:/";
		}
	}
	
	//show create New Ninja form
	@RequestMapping("/ninjas/new")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = mainService.allDojos();
		model.addAttribute("dojos", dojos);
		return "newNinja.jsp";
	}

	//process New Ninja form
	@PostMapping("/ninjas/new")
	public String processNewNinja(@Valid @ModelAttribute("ninja") Ninja ninja,
								BindingResult result, Model model) {
		if(result.hasErrors() ) {
			model.addAttribute("dojos", mainService.allDojos());
			return "newNinja.jsp";
		} else {
			System.out.println("success");
			mainService.createNinja(ninja);
			return "redirect:/ninjas/new";
		}
	}
	
	//Show one Dojo w/ all Ninjas
	@GetMapping("dojo/{id}")
	public String showDojoNinjas(@PathVariable("id") Long id, Model model) {
		Dojo dojo = mainService.findOneDojo(id);
		model.addAttribute("dojo", dojo);
		
		return "showDojo.jsp";
	}
	
	
}
