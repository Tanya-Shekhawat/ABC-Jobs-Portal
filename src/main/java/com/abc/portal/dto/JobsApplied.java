package com.abc.portal.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class JobsApplied {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int appliedId;
	private int jobId;
	private Long userId;
	
	public JobsApplied() {
		
	}

	public int getAppliedId() {
		return appliedId;
	}

	public void setAppliedId(int appliedId) {
		this.appliedId = appliedId;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "AppliedJob [appliedId=" + appliedId + ", jobId=" + jobId + ", userId=" + userId + "]";
	}

	public JobsApplied(int appliedId, int jobId, Long userId) {
		super();
		this.appliedId = appliedId;
		this.jobId = jobId;
		this.userId = userId;
	}
	

}
