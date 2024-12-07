package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.Models.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, String> {
    Admin findByUsernameAndPassword(String username, String password);
}
