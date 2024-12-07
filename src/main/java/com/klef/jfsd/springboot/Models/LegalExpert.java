package com.klef.jfsd.springboot.Models;

import jakarta.persistence.*;

@Entity
@Table(name = "legal_experts")
public class LegalExpert {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "cases_handled",nullable = false) // Match the column name
    private String casesHandled;

    @Column(name = "current_organization",nullable = false)
    private String currentOrganization;

    @Column(name = "education",nullable = false)
    private String education;

    @Column(name = "email", nullable = false, unique = true)
    private String email;

    @Column(name = "experience",nullable = false)
    private int experience;

    @Column(name = "linkedin",nullable = false)
    private String linkedin;

    @Column(name = "mobile", unique = true)
    private String mobile;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "specialization",nullable = false)
    private String specialization;

    @Column(name = "username", nullable = false, unique = true)
    private String username;
    
    @Column(name="leg_status",nullable = false)
private String status;
    public String getStatus() {
        return status;
    }

    
    public void setStatus(String status) {
        this.status = status;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCasesHandled() {
        return casesHandled;
    }

    public void setCasesHandled(String casesHandled) {
        this.casesHandled = casesHandled;
    }

    public String getCurrentOrganization() {
        return currentOrganization;
    }

    public void setCurrentOrganization(String currentOrganization) {
        this.currentOrganization = currentOrganization;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public String getLinkedin() {
        return linkedin;
    }

    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
