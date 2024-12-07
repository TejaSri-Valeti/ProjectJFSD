package com.klef.jfsd.springboot.services;

import java.util.List;
import java.util.Optional;

import com.klef.jfsd.springboot.Models.Citizen;
import com.klef.jfsd.springboot.Models.EducationalMaterial;
import com.klef.jfsd.springboot.Models.Feedback;
import com.klef.jfsd.springboot.Models.Webinar;

public interface CitizenService {
    String registerCitizen(Citizen citizen);
    
    Citizen checkCitizenLogin(String username, String password);  
    
    // Add this method to check login
    public  Citizen getcitizenbyid(long id);

	public void updateCitizenDetails(Citizen citizen);
	
	public  List<Webinar> getAllWebinars();
	
	
	public    Webinar getWebinarById(Long id);
	public List<EducationalMaterial> viewmaterials();
	
	 Feedback saveFeedback(Feedback feedback);
    
}
