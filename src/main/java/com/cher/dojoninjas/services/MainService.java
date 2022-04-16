package com.cher.dojoninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cher.dojoninjas.models.Dojo;
import com.cher.dojoninjas.models.Ninja;
import com.cher.dojoninjas.repositories.DojoRepo;
import com.cher.dojoninjas.repositories.NinjaRepo;

@Service
public class MainService {

	//import repos
	@Autowired
	private DojoRepo dojoRepo;
	
	@Autowired
	private NinjaRepo ninjaRepo;
	
	
//CRUD
	
	//CREATE
	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}
	
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
	
	//READ ALL
	public List<Dojo> allDojos() {
		return dojoRepo.findAll();
	}
	
	public List<Ninja> allNinjas() {
		return ninjaRepo.findAll();
	}
	
	//READ ONE
	public Dojo findOneDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}
	
	public Ninja findOneNinja(Long id) {
		Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		if(optionalNinja.isPresent()) {
			return optionalNinja.get();
		} else {
			return null;
		}
	}
	
	
	//UPDATE--not required yet for this assignment
	//DELETE--not required yet for this assignment
	
}
