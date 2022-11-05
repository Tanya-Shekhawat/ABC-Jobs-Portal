package com.abc.portal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abc.portal.dao.JobsAppliedRepository;
import com.abc.portal.dao.JobRepository;
import com.abc.portal.dto.JobsApplied;
import com.abc.portal.dto.Jobsp;

@Service
public class JobServiceImpl implements JobService {
    @Autowired
	private JobRepository jobrepo;
	
    @Autowired
    JobsAppliedRepository appliedrepo;
    
	@Override
	public String addjob(Jobsp jb) {
		jobrepo.save(jb);
		return "JOB ADDED"; 
	}

	@Override
	public List<Jobsp> showAllJobs() {
		List<Jobsp> alljobs=jobrepo.findAll();
		return alljobs;
	}

	@Override
	public void addAppliedUser(JobsApplied applied) {
		appliedrepo.save(applied);	
	}

	@Override
	public int deletejob(int id) {
		jobrepo.deleteById(id);
		return 1;
	}
	


}
