package com.klef.jfsd.springboot.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.Models.Citizen;
import com.klef.jfsd.springboot.Models.EducationalMaterial;
import com.klef.jfsd.springboot.Models.Feedback;
import com.klef.jfsd.springboot.Models.Webinar;
import com.klef.jfsd.springboot.repositories.FeedbackRepository;
import com.klef.jfsd.springboot.services.CitizenService;
import com.klef.jfsd.springboot.services.EducatorService;

import org.springframework.ui.Model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CitizenController {

    @Autowired
    private CitizenService citizenService;
    @Autowired
    private EducatorService educatorService;
    @Autowired
    private FeedbackRepository feedbackrepository;

    // Endpoint to show registration form
    @GetMapping("/citizenregister")
    public ModelAndView showRegisterForm() {
        ModelAndView mv = new ModelAndView("CitizenRegister");
        return mv;
    }

    // Endpoint to handle form submission for registration
    @PostMapping("/registerCitizen")
    public ModelAndView registerCitizen(HttpServletRequest request) {
        Citizen citizen = new Citizen();
        citizen.setUsername(request.getParameter("username"));
        citizen.setEmail(request.getParameter("email"));
        citizen.setMobile(request.getParameter("mobile")); // Corrected field name
        citizen.setPassword(request.getParameter("password"));
        citizen.setConfirmPassword(request.getParameter("confirm_password"));
        citizen.setRole("Citizen");

        String message;
        try {
            message = citizenService.registerCitizen(citizen);
        } catch (Exception e) {
            message = "Failed to register citizen: " + e.getMessage();
        }

        ModelAndView mv = new ModelAndView("CitizenRegister");
        mv.addObject("message", message);
        return mv;
    }
  
    // Endpoint for citizen login (only registered users)
    @PostMapping("/citizenlogin")
    public String checkCitizenLogin(@RequestParam("username") String username, 
                                    @RequestParam("password") String password, 
                                    Model model, HttpServletRequest request) {
        // Check if the citizen is registered and the credentials match
        Citizen citizen = citizenService.checkCitizenLogin(username, password);

        if (citizen != null) {
            // If citizen login is successful, set the session
            HttpSession session = request.getSession();
            session.setAttribute("citizen", citizen);
            session.setAttribute("citizenUsername", citizen.getUsername()); // Add username to session
            return "welcome"; // Redirect to citizen's home page on successful login
        } else {
            // If login fails, add a message and return to the login page
            model.addAttribute("message", "Invalid Username or Password. Please ensure you're a registered user.");
            return "login"; // Redirect back to login page on failure
        }
    }


    @GetMapping("/citizensessionexpiry")
    public String sessionExpiry() 
    {
      
        return "sessionexpiry";  // Return to the sessionexpiry.jsp page
    }
    @GetMapping("/citizenprofile")
    public ModelAndView showCitizenProfile(HttpSession session) {
        // Retrieve the logged-in citizen from the session
        Citizen citizen = (Citizen) session.getAttribute("citizen");

        ModelAndView mv = new ModelAndView("CitizenProfile");

        if (citizen != null) {
            mv.addObject("citizen", citizen); // Pass the citizen object to the view
        } else {
            mv.addObject("message", "No citizen is logged in. Please log in first.");
        }
        return mv;
    }
    @GetMapping("/citizenviewWebinars")
    public String citizenviewWebinars(Model model) {
        List<Webinar> webinarList = citizenService.getAllWebinars();
        System.out.println("Received webinar list size: " + webinarList.size());
        model.addAttribute("webinarList", webinarList); 
        return "citizenviewWebinars";
    }
    @GetMapping("/citizenviewmaterials")
    public ModelAndView citizenviewmaterials() {
        ModelAndView mv = new ModelAndView("citizenviewmaterials");
        List<EducationalMaterial> materialList = educatorService.viewmaterials();
        
        // Log retrieved materials for debugging
        System.out.println("Retrieved materials in Controller: " + materialList);

        mv.addObject("materialList", materialList);
        return mv;
    }

    @GetMapping("/CitizenFeedback")
    public ModelAndView showFeedbackForm() {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("CitizenFeedback");
    	return mv;
    }

    @PostMapping("/SubmitFeedback")
   public ModelAndView handleFeedbackSubmission(HttpServletRequest request) {
    	ModelAndView mv = new ModelAndView();
    	
        String username = request.getParameter("username");
        String feedback = request.getParameter("feedback");
        
        Feedback f = new Feedback();
        f.setUsername(username);
        f.setFeedback(feedback);
        
        feedbackrepository.save(f);
        
        mv.setViewName("SubmitFeedback");
        return mv;
        
        
    }
}