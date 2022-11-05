package com.abc.portal.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abc.portal.dto.JobsApplied;
@Repository
public interface JobsAppliedRepository extends JpaRepository<JobsApplied, Integer>{

}
