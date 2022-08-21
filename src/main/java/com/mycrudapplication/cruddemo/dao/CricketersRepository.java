package com.mycrudapplication.cruddemo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.mycrudapplication.cruddemo.entity.Cricketers;

@RepositoryRestResource(path="cricketer")
public interface CricketersRepository extends JpaRepository<Cricketers, Integer> {

}
