package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.Models.LegalExpert;

@Repository
public interface LegalExpertRepository extends JpaRepository<LegalExpert, Integer> {
	public boolean existsByUsernameOrEmail(String username, String email);

	public LegalExpert findByUsernameAndPassword(String username, String password);
}
