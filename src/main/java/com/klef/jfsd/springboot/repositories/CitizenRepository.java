package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.klef.jfsd.springboot.Models.Citizen;

public interface CitizenRepository extends JpaRepository<Citizen, Long> 
{
    // Method to find citizen by username
    Citizen findByUsername(String username);
}
