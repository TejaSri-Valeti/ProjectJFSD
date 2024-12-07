package com.klef.jfsd.springboot.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.Models.EducationalMaterial;
import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.Quiz;
import com.klef.jfsd.springboot.Models.Webinar;
import com.klef.jfsd.springboot.repositories.EducationalMaterialRepository;
import com.klef.jfsd.springboot.repositories.EducatorRepository;
import com.klef.jfsd.springboot.repositories.QuizRepository;
import com.klef.jfsd.springboot.repositories.WebinarRepository;

import jakarta.transaction.Transactional;

@Service
public class EducatorServiceImpl implements EducatorService {

    @Autowired
    private EducatorRepository educatorRepository;
    @Autowired
    private EducationalMaterialRepository educationalMaterialRepository;
    @Autowired
    private WebinarRepository webinarRepository;
    @Autowired
    private QuizRepository quizRepository;

    // Check if an educator already exists based on username or email
    @Override
    public boolean isEducatorExists(String username, String email) {
        return educatorRepository.existsByUsernameOrEmail(username, email);
    }

    // Save the educator (including setting the status to "pending" initially)
    @Override
    public void saveEducator(Educator educator) {
        educator.setStatus("pending");  // Set the status to "pending" when saving the educator
        educatorRepository.save(educator);
    }

    // Find educator by username
    @Override
    public Educator findByUsername(String username) {
        return educatorRepository.findByUsername(username);
    }

    // Update educator status (e.g., when admin approves the educator)
    @Override
    public void updateEducatorStatus(String status,Long educatorId) {
        Educator educator = educatorRepository.findById(educatorId).orElse(null);
        if (educator != null) {
            educator.setStatus(status);
            educatorRepository.save(educator);
        }
       

    }
    @Override
    public Educator validateLogin(String username, String password) {
        Educator educator = educatorRepository.findByUsername(username);

        // Validate username and password
        if (educator != null && educator.getPassword().equals(password)) {
            return educator;
        }

        return null; // Return null if validation fails
    }
    
    @Override
    public Educator getEducatorById(long educatorId) {
        return educatorRepository.findById(educatorId).orElse(null); // Fetch citizen by ID
    }

	@Override
	public void updateEducatorDetails(Educator educator)
	{
	educatorRepository.save(educator);
		
	}
	
	
	
	   public EducationalMaterial addMaterial(EducationalMaterial material) 
	   {
	     return educationalMaterialRepository .save(material);
	    }

	   @Override
	   public List<EducationalMaterial> viewmaterials() {
	       List<EducationalMaterial> materials = educationalMaterialRepository.findAll();
	       System.out.println("Materials fetched from DB: " + materials);
	       return materials;
	   }
	   @Override
	    public Webinar addWebinar(Webinar webinar) {
	        return webinarRepository.save(webinar); // Save the webinar to the database
	    }

	   @Override
	    public List<Webinar> getAllWebinars() {
	        return webinarRepository.findAll();
	    }

	    @Override
	    public Webinar getWebinarById(Long id) {
	        return webinarRepository.findById(id).orElse(null);
	    }
	    @Override
	    public Quiz addQuiz(Quiz quiz) {
	        return quizRepository.save(quiz);
	    }
	    @Transactional
	    public void deleteMaterial(Long materialId) {
	        educationalMaterialRepository.deleteById(materialId);
	    }
	    @Override
	    public boolean deleteWebinarById(Long id) {
	        Optional<Webinar> webinar = webinarRepository.findById(id);

	        if (webinar.isPresent()) {
	            webinarRepository.deleteById(id); // Deletes the webinar by ID
	            return true;
	        }
	        return false;
	    }
}