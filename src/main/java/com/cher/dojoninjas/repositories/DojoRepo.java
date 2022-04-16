package com.cher.dojoninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cher.dojoninjas.models.Dojo;

@Repository
public interface DojoRepo extends CrudRepository<Dojo, Long> {
	//method to retrieve all dojos from DB
	List<Dojo> findAll();
	
}
