package com.klef.jfsd.springboot.services;

import java.util.List;

import com.klef.jfsd.springboot.Models.EducationalMaterial;
import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.Quiz;
import com.klef.jfsd.springboot.Models.Webinar;

public interface EducatorService {

    // Check if educator exists by username or email
    boolean isEducatorExists(String username, String email);

    // Save educator (including status as "pending")
    void saveEducator(Educator educator);

    // Find educator by username
    Educator findByUsername(String username);

    // Update educator status (for admin approval)
    void updateEducatorStatus(String status, Long educatorId);
    
    Educator validateLogin(String username, String password);
    
    Educator getEducatorById(long educatorId);

	public void updateEducatorDetails(Educator educator);
	
	
	   public EducationalMaterial addMaterial(EducationalMaterial material) ;
	   public List<EducationalMaterial> viewmaterials();
	   
	   Webinar addWebinar(Webinar webinar);
	   
	   List<Webinar> getAllWebinars();
	    Webinar getWebinarById(Long id);
	    
	    Quiz addQuiz(Quiz quiz);
	    void deleteMaterial(Long materialId);

		boolean deleteWebinarById(Long id);
}
