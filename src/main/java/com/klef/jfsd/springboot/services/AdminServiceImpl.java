package com.klef.jfsd.springboot.services;

import com.klef.jfsd.springboot.Models.Admin;
import com.klef.jfsd.springboot.Models.Citizen;
import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.LegalExpert;
import com.klef.jfsd.springboot.repositories.AdminRepository;
import com.klef.jfsd.springboot.repositories.CitizenRepository;
import com.klef.jfsd.springboot.repositories.EducatorRepository;
import com.klef.jfsd.springboot.repositories.LegalExpertRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private CitizenRepository citizenRepository;

    @Autowired
    private EducatorRepository educatorRepository;

    @Autowired
    private LegalExpertRepository legalExpertRepository;

    @Override
    public Admin checkAdminLogin(String username, String password) {
        return adminRepository.findByUsernameAndPassword(username, password); // Fetch admin by credentials
    }

    @Override
    public List<Citizen> viewAllCitizens() {
        return citizenRepository.findAll(); // Fetch all citizens from repository
    }

    @Override
    public void deleteCitizen(long citizenId) {
        citizenRepository.deleteById(citizenId); // Delete citizen by ID
    }

    @Override
    public String deleteEducator(long educatorId) {
        educatorRepository.deleteById(educatorId); // Delete educator by ID
        return "Educator Deleted Successfully"; // Return confirmation message
    }

    @Override
    public void deleteLegalExpert(long legalExpertId) {
        legalExpertRepository.deleteById((int) legalExpertId); // Delete legal expert by ID
    }

    @Override
    public List<Educator> viewAllEducators() {
        return educatorRepository.findAll(); // Fetch all educators from repository
    }

    @Override
    public List<LegalExpert> viewAllLegalExperts() {
        return legalExpertRepository.findAll(); // Fetch all legal experts from repository
    }

    @Override
    public Citizen getCitizenById(long citizenId) {
        return citizenRepository.findById(citizenId).orElse(null); // Fetch citizen by ID
    }

    @Override
    public String updateCitizenDetails(Citizen citizen) {
        // Check if citizen exists
        if (citizenRepository.existsById(citizen.getId())) {
            citizenRepository.save(citizen); // Update citizen details
            return "Citizen details updated successfully."; // Return success message
        } else {
            return "Citizen not found."; // Return failure message if citizen doesn't exist
        }
    }

	@Override
	public String updateEducatorDetails(Educator educator) {
		if (educatorRepository.existsById(educator.getId())) {
            educatorRepository.save(educator); // Update citizen details
            return "Educator details updated successfully."; // Return success message
        } else {
            return "Educator not found."; // Return failure message if citizen doesn't exist
        }
	}
	
}
