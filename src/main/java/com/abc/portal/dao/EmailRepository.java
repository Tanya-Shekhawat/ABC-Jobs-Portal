package com.abc.portal.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.portal.dto.Email;

public interface EmailRepository extends JpaRepository<Email, Integer>{

}
