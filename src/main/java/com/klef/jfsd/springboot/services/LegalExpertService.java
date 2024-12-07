package com.klef.jfsd.springboot.services;


import java.util.List;

import com.klef.jfsd.springboot.Models.LegalExpert;

public interface LegalExpertService {
	public String saveLegalExpert(LegalExpert legalExpert); 

    boolean isLegalExpertExists(String username, String email);

    LegalExpert findLegalExpertByUsernameAndPassword(String username, String password);

    void updateLegalExpertStatus(String status, long legalExpertId);

    List<LegalExpert> getAllLegalExperts();
}
