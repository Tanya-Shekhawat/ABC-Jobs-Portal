package com.abc.portal.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.portal.dto.Jobsp;

public interface JobRepository extends JpaRepository<Jobsp, Integer> {
	

}
