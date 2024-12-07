package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.Models.Feedback;

public interface FeedbackRepository extends JpaRepository<Feedback, Long> {
    // Additional query methods (if needed) can be added here
}
