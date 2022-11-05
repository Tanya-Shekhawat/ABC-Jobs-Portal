package com.abc.portal.service;

import java.util.List;

import com.abc.portal.dto.JobsApplied;
import com.abc.portal.dto.Jobsp;


public interface JobService {
	
	public String addjob(Jobsp jb);
	public List<Jobsp> showAllJobs();
	public void addAppliedUser(JobsApplied applyjob);
	public int deletejob(int id);


}
