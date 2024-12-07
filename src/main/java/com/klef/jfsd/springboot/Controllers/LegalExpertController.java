package com.klef.jfsd.springboot.Controllers;

import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.LegalExpert;

import com.klef.jfsd.springboot.services.LegalExpertService;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LegalExpertController {

    @Autowired
    private LegalExpertService legalExpertService;

    @GetMapping("/legalexpertregister")
    public ModelAndView showRegistrationForm() 
    {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("LegalExpertRegister");
        return mv; 
    }

    @PostMapping("/registerLegalExpert")
    public ModelAndView registerLegalExpert(HttpServletRequest request)
    {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");
        String casesHandled = request.getParameter("casesHandled");
        String currentOrganization = request.getParameter("currentOrganization");
        String education = request.getParameter("education");
        String linkedin = request.getParameter("linkedin");
        String specialization = request.getParameter("specialization");
        int experience = Integer.parseInt(request.getParameter("experience")); 
        String Status = "Registered";
        
        LegalExpert legalExpert = new LegalExpert();
        legalExpert.setUsername(username);
        legalExpert.setEmail(email);
        legalExpert.setMobile(mobile);
        legalExpert.setPassword(password);
        legalExpert.setCasesHandled(casesHandled);
        legalExpert.setCurrentOrganization(currentOrganization);
        legalExpert.setEducation(education);
        legalExpert.setLinkedin(linkedin);
        legalExpert.setSpecialization(specialization);
        legalExpert.setExperience(experience);
        legalExpert.setStatus(Status); 
        System.out.println("Username: " + username);
        System.out.println("Email: " + email);
        System.out.println("Saving legal expert...");


        
        legalExpertService.saveLegalExpert(legalExpert);

        
        return new ModelAndView("redirect:/legalexpertlogin");

    }


 // Show Login Page
    @GetMapping("/legalexpertlogin")
    public String showLoginPage() {
        return "legalexpertlogin"; // Matches legalexpertlogin.jsp
    }

    @PostMapping("/legalexpertslogin")
    public String loginLegalExpert(@RequestParam("username") String username,
                                   @RequestParam("password") String password,
                                   Model model,
                                   HttpServletRequest request) {
        // Fetch the LegalExpert from the service
        LegalExpert legalExpert = legalExpertService.findLegalExpertByUsernameAndPassword(username, password);

        if (legalExpert == null) 
        {
            // Add error message for invalid credentials
            model.addAttribute("error", "Invalid Username or Password. Please ensure you're a registered user.");
            return "legalexpertlogin"; // Redirect back to the login page
        }

        // Handle the status of the LegalExpert
        switch (legalExpert.getStatus().toLowerCase()) {
            case "approved":
                // Set session attributes for the logged-in legal expert
                HttpSession session = request.getSession();
                session.setAttribute("legalExpert", legalExpert);
                session.setAttribute("legalExpertUsername", legalExpert.getUsername());
                return "redirect:/legalexpertdashboard"; // Redirect to dashboard
            case "pending":
                // Add error message for pending status
                model.addAttribute("error", "Your registration is pending approval. Please wait for admin confirmation.");
                return "legalexpertlogin"; // Redirect back to login page
            case "rejected":
                // Add error message for rejected status
                model.addAttribute("error", "Your registration has been rejected. Please contact the admin for further details.");
                return "legalexpertlogin"; // Redirect back to login page
            default:
                // Handle unexpected status with a generic error
                model.addAttribute("error", "Unexpected error occurred. Please contact support.");
                return "legalexpertlogin"; // Redirect back to login page
        }
    }


    // Show Dashboard
    @GetMapping("/legalexpertdashboard")
    public String showDashboard() {
        return "legalexpertdashboard"; // Matches legalexpert.jsp (dashboard)
    }

    // Show List of Legal Experts
    @GetMapping("/legalexpertlist")
    public ModelAndView listLegalExperts() 
    {
        ModelAndView mv = new ModelAndView("LegalExpertList"); // Matches LegalExpertList.jsp
        mv.addObject("legalExperts", legalExpertService.getAllLegalExperts());
        return mv;
    }
    
    // Update Legal Expert Status
    @PostMapping("/updatelegalexpertstatus")
    public String updateLegalExpertStatus(@RequestParam("status") String status,
                                          @RequestParam("id") int id) {
        legalExpertService.updateLegalExpertStatus(status, id);
        return "redirect:/legalexpertlist";
    }
    
    @GetMapping("/legalExpertProfile")
    public ModelAndView legalExpertProfile() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("legalexpertprofile");
    	return mv;
    }
    
}
