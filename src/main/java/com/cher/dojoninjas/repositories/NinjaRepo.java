package com.cher.dojoninjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cher.dojoninjas.models.Ninja;

@Repository
public interface NinjaRepo extends CrudRepository<Ninja, Long> {
	//method to retrieve all ninjas from DB
	List<Ninja> findAll();
}
