package com.klef.jfsd.springboot.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.Models.LegalExpert;
import com.klef.jfsd.springboot.repositories.LegalExpertRepository;

import org.springframework.transaction.annotation.Transactional;

@Service
public class LegalExpertServiceImpl implements LegalExpertService 
{

    @Autowired
    private LegalExpertRepository legalExpertRepository;

    @Transactional
    public String saveLegalExpert(LegalExpert legalExpert) {
        legalExpertRepository.save(legalExpert);
        return "Added Successfully";
    }


    @Override
    public boolean isLegalExpertExists(String username, String email) {
        return legalExpertRepository.existsByUsernameOrEmail(username, email);
    }

    @Override
    public LegalExpert findLegalExpertByUsernameAndPassword(String username, String password) {
        // Assuming you add a custom query method in the repository
        return legalExpertRepository.findByUsernameAndPassword(username, password);
    }

    @Override
    public void updateLegalExpertStatus(String status, long legalExpertId) {
        LegalExpert legalExpert = legalExpertRepository.findById((int) legalExpertId).orElse(null);
        if (legalExpert != null) {
            legalExpert.setStatus(status);
            legalExpertRepository.save(legalExpert);
        }
    }

    @Override
    public List<LegalExpert> getAllLegalExperts() 
    {
        return (List<LegalExpert>) legalExpertRepository.findAll();
    }
}
