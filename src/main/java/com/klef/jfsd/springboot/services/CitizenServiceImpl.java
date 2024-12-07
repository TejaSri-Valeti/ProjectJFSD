package com.klef.jfsd.springboot.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.Models.Citizen;
import com.klef.jfsd.springboot.Models.EducationalMaterial;
import com.klef.jfsd.springboot.Models.Feedback;
import com.klef.jfsd.springboot.Models.Webinar;
import com.klef.jfsd.springboot.repositories.CitizenRepository;
import com.klef.jfsd.springboot.repositories.EducationalMaterialRepository;
import com.klef.jfsd.springboot.repositories.FeedbackRepository;
import com.klef.jfsd.springboot.repositories.WebinarRepository;

import jakarta.transaction.Transactional;

@Service
public class CitizenServiceImpl implements CitizenService {

    @Autowired
    private CitizenRepository citizenRepository;
    @Autowired
    private FeedbackRepository feedbackRepository;
@Autowired
private WebinarRepository webinarRepository;
@Autowired
private EducationalMaterialRepository educationalMaterialRepository;
    @Override
    @Transactional
    public String registerCitizen(Citizen citizen) {
        // Store password as plain text (not recommended for production)
        citizenRepository.save(citizen);
        return "Citizen registered successfully!";
    }

    @Override
    @Transactional
    public Citizen checkCitizenLogin(String username, String password) {
        // Fetch the citizen by username
        Citizen citizen = citizenRepository.findByUsername(username);

        // If citizen exists and passwords match
        if (citizen != null && citizen.getPassword().equals(password)) {
            return citizen; // Valid citizen login
        }
        return null; // Invalid credentials
    }

	@Override
	public Citizen getcitizenbyid(long id) 
	{
	return citizenRepository.findById(id).orElse(null);
	}
	 @Override
	    public void updateCitizenDetails(Citizen citizen)
	 {
	        citizenRepository.save(citizen);  // This will update the citizen details in the database
	    }

	 
	 public List<Webinar> getAllWebinars() {
	     List<Webinar> webinars = webinarRepository.findAll();
	     System.out.println("Number of webinars: " + webinars.size());
	     return webinars;
	 }

	@Override
	public Webinar getWebinarById(Long id) 
	{
	// TODO Auto-generated method stub
		return webinarRepository.findById(id).orElse(null);
	}
	@Override
	   public List<EducationalMaterial> viewmaterials() {
	       List<EducationalMaterial> materials = educationalMaterialRepository.findAll();
	       System.out.println("Materials fetched from DB: " + materials);
	       return materials;
	   }
	 @Override
	    public Feedback saveFeedback(Feedback feedback) {
	        return feedbackRepository.save(feedback);
	    }
	 
}
