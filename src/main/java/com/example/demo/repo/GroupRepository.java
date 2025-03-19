package com.example.demo.repo;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.Group;

public interface GroupRepository extends CrudRepository<Group,Integer> {

	boolean existsByGroupName(String groupName);

}
