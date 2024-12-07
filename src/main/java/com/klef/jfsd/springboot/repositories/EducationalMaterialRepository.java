package com.klef.jfsd.springboot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.Models.EducationalMaterial;

public interface EducationalMaterialRepository extends JpaRepository<EducationalMaterial, Integer>
{

public	void deleteById(Long materialId);
	

}
