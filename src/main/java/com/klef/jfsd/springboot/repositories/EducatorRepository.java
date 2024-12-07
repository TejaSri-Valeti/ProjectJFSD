package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.Models.Educator;

@Repository
public interface EducatorRepository extends JpaRepository<Educator, Long> {

    // Find educator by username
    Educator findByUsername(String username);

    // Check if educator exists by username or email
    boolean existsByUsernameOrEmail(String username, String email);
}
