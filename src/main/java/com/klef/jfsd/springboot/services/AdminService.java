package com.klef.jfsd.springboot.services;

import com.klef.jfsd.springboot.Models.Citizen;
import com.klef.jfsd.springboot.Models.Admin;
import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.LegalExpert;

import java.util.List;

public interface AdminService {
    // Admin Authentication
    Admin checkAdminLogin(String username, String password);

    // Citizen Management
    List<Citizen> viewAllCitizens(); 
    void deleteCitizen(long citizenId); 
    String updateCitizenDetails(Citizen citizen);// Added method for updating citizen details

    // Educator Management
    List<Educator> viewAllEducators();
    String deleteEducator(long educatorId);
    String updateEducatorDetails(Educator educator);

    // Legal Expert Management
    List<LegalExpert> viewAllLegalExperts();
    void deleteLegalExpert(long legalExpertId);

	Citizen getCitizenById(long citizenId);
	
}
