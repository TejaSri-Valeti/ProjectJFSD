package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.Models.Webinar;
@Repository
public interface WebinarRepository extends JpaRepository<Webinar, Long> {
    // You can add custom queries here if needed
}
