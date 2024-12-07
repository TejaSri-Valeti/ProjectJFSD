package com.klef.jfsd.springboot.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.Models.Admin;
import com.klef.jfsd.springboot.Models.Citizen;
import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.LegalExpert;
import com.klef.jfsd.springboot.services.AdminService;
import com.klef.jfsd.springboot.services.CitizenService;
import com.klef.jfsd.springboot.services.EducatorService;
import com.klef.jfsd.springboot.services.LegalExpertService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;
   
    @Autowired
    private LegalExpertService legalExpertService;
    
    @Autowired
    private CitizenService citizenService;
    
    @Autowired
    private EducatorService educatorService;
    
    // Handle Admin Login
    @PostMapping("/checkadminlogin")
    public String checkAdminLogin(String auname, String apwd, Model model, HttpServletRequest request) {
        Admin admin = adminService.checkAdminLogin(auname, apwd);
        if (admin != null) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);
            return "AdminHome"; // Redirect to Admin Dashboard on successful login
        } else {
            model.addAttribute("message", "Invalid Username or Password. Please try again.");
            return "AdminLogin"; // Redirect back to login page on failure
        }
    }
    
    @GetMapping("adminhome")
    public String adminhome() {
        return "AdminHome";
    }

    // View All Citizens
    @GetMapping("/viewcitizen")
    public String viewAllCitizens(Model model) {
        List<Citizen> citizenList = adminService.viewAllCitizens(); // Fetch all citizens using AdminService
        model.addAttribute("citizenList", citizenList); // Add citizenList to the model for rendering in viewcitizen.jsp
        return "viewcitizen"; // Return the viewcitizen.jsp page
    }
    
    // View All Educators
    @GetMapping("/vieweducator")
    public String viewAllEducators(Model model) {
        List<Educator> educatorList = adminService.viewAllEducators(); // Fetch all educators using AdminService
        model.addAttribute("educatorList", educatorList); // Add educatorList to the model for rendering in vieweducator.jsp
        return "vieweducator"; // Return the vieweducator.jsp page
    }
    
    // View All Legal Experts
    @GetMapping("/viewlegalexpert")
    public String viewAllLegalExperts(Model model) {
        List<LegalExpert> legalExpertList = adminService.viewAllLegalExperts(); // Fetch all legal experts
        model.addAttribute("legalExpertList", legalExpertList); // Add legalExpertList to model
        return "viewlegalexpert"; // Return the viewlegalexpert.jsp page
    }

    // View Citizens to delete
    @GetMapping("/deletecitizen")
    public String viewAllCitizens1(Model model) 
    {
        List<Citizen> citizenList = adminService.viewAllCitizens(); // Fetch citizen data
        model.addAttribute("citizenList", citizenList); // Add data to the model
        return "deletecitizen"; // Return the deletecitizen.jsp page
    }

    // Delete Citizen
    @GetMapping("/deletecitizens")
    public String deleteCitizen(@RequestParam("id") long citizenId) 
    {
        adminService.deleteCitizen(citizenId); // Call the service to delete the citizen
        return "redirect:/deletecitizen"; // Redirect back to the citizen view page
    }
    @GetMapping("/deleteeducator")
    public String viewAllEducatorsForDeletion(Model model) 
    {
        List<Educator> educatorList = adminService.viewAllEducators();
        model.addAttribute("educatorList", educatorList);
        return "deleteeducator";
    }

    // Delete Educator
    @GetMapping("/deleteeducators")
    public String deleteEducator(@RequestParam("id") long educatorId) 
    {
        adminService.deleteEducator(educatorId);
        return "redirect:/deleteeducator";
    }
    @GetMapping("/deletelegalexpert")
    public String viewAllLegalExpertsForDeletion(Model model) {
        List<LegalExpert> legalExpertList = adminService.viewAllLegalExperts(); // Fetch all legal experts
        model.addAttribute("legalExpertList", legalExpertList); // Add list to model
        return "deletelegalexpert"; // Return deletelegalexpert.jsp page
    }

    // Delete Legal Expert
    @GetMapping("/deletelegalexperts")
    public String deleteLegalExpert(@RequestParam("id") long legalExpertId) {
        adminService.deleteLegalExpert(legalExpertId); // Call service to delete the legal expert
        return "redirect:/deletelegalexpert"; // Redirect back to the deletion page
    }
    @GetMapping("updateeducatorstatus")
    public ModelAndView updateEducatorStatus() 
    {
        List<Educator> educatorList = adminService.viewAllEducators();  // Retrieve all educators
        ModelAndView mv = new ModelAndView("updatestatus");  // Return the JSP page
        mv.addObject("educatorList", educatorList);  // Pass the list of educators to the JSP
        return mv;
    }
    @GetMapping("updatestatus")
    public String updateStatus(@RequestParam("educatorId") long educatorId, @RequestParam("approvalStatus") String status) {
        educatorService.updateEducatorStatus(status, educatorId);  // Update educator status based on ID
        return "redirect:/updateeducatorstatus";  // Redirect to the educator status update page
    }
    @GetMapping("updatelegalexpertstatus")
    public ModelAndView viewAllLegalExperts() {
        // Retrieve all legal experts from the AdminService
        List<LegalExpert> legalExpertList = adminService.viewAllLegalExperts();
        
        // Create a ModelAndView object for the JSP page
        ModelAndView mv = new ModelAndView("updatelegalexpertstatus");
        
        // Add the list of legal experts to the ModelAndView
        mv.addObject("legalExpertList", legalExpertList);
        
        // Return the ModelAndView object
        return mv;
    }


    @GetMapping("updatestatuslegalexpert")
    public String updateLegalExpertStatus(@RequestParam("legalExpertId") long legalExpertId, 
                                          @RequestParam("approvalStatus") String status) {
        // Update the legal expert's status using the LegalExpertService
        legalExpertService.updateLegalExpertStatus(status, legalExpertId);
        
        // Redirect back to the updatelegalexpertstatus page
        return "redirect:/updatelegalexpertstatus";
    }
    @GetMapping("/adminlogout")
    public String adminLogout(HttpServletRequest request) {
        HttpSession session = request.getSession(false); // Get the current session, if it exists
        if (session != null) {
            session.invalidate(); // Invalidate the session
        }
        return "redirect:/AdminLogin"; // Redirect to the admin login page
    }
    @GetMapping("/sessionexpiry")
    public String sessionExpiry() 
    {
      
        return "sessionexpiry";  // Return to the sessionexpiry.jsp page
    }
    
    @GetMapping("updatecitizendetails") // for viewall with action
    public ModelAndView updatecitizendetails()
    {
    	
    	 List<Citizen> citizenList= adminService.viewAllCitizens();
         ModelAndView mv = new ModelAndView("updatecitizendetails");
         mv.addObject("citizenList", citizenList);
    	return mv;
    }
    
    @GetMapping("updatecitizensdetails")// after clicking action form wiil be opened
    public String updatecitizensdetails(@RequestParam("cid") long id, Model model) 
    {
       Citizen citizen = citizenService.getcitizenbyid(id);
        model.addAttribute("citizen", citizen);
        return "updatecitizensdetails";
    }

    
    @PostMapping("/updatecitizen")
    public ModelAndView updateCitizen(HttpServletRequest request) 
    {
        ModelAndView mv = new ModelAndView();
        
        // Get the citizen ID from the request parameter
        long id = Long.parseLong(request.getParameter("cid"));
        
        // Fetch the citizen from the database using the ID
        Citizen citizen = citizenService.getcitizenbyid(id);
        
        if (citizen != null) {
            // Update citizen fields with the data from the request
            citizen.setUsername(request.getParameter("username"));
            citizen.setEmail(request.getParameter("email"));
            citizen.setMobile(request.getParameter("mobile"));
            citizen.setPassword(request.getParameter("password"));
            citizen.setConfirmPassword(request.getParameter("confirmPassword"));
            citizen.setRole(request.getParameter("role"));
            
            // You can add more fields if necessary, based on your Citizen entity
            
            // Update the citizen details in the database
            citizenService.updateCitizenDetails(citizen);
            
            // Set the success view
            mv.setViewName("updatecitizenSuccess");
            mv.addObject("message", "Citizen updated successfully.");
        } else {
            // Citizen not found, show error page
            mv.setViewName("errorPage");
            mv.addObject("message", "Citizen not found.");
        }
        
        return mv;
    }
    @GetMapping("updateeducatordetails") // To view all educators with an action
    public ModelAndView updateEducatorDetails() {
        // Fetch the list of all educators
        List<Educator> educatorList = adminService.viewAllEducators();
        ModelAndView mv = new ModelAndView("updateeducatordetails"); // JSP/HTML page name
        mv.addObject("educatorList", educatorList);
        return mv;
    }

    @GetMapping("updateeducatorsdetails") // Form view for updating a specific educator
    public String updateEducatorsDetails(@RequestParam("eid") long id, Model model) {
        // Fetch the educator details by ID
        Educator educator = educatorService.getEducatorById(id);
        if (educator != null) {
            model.addAttribute("educator", educator); // Add the educator object to the model
            return "updateeducatorsdetails"; // JSP/HTML page name for the form
        } else {
            model.addAttribute("message", "Educator not found.");
            return "errorPage"; // Error page if educator is not found
        }
    }

    @PostMapping("/updateeducator") // To handle form submission for updating educator details
    public ModelAndView updateEducator(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        try {
            // Get the educator ID from the request parameter
            long id = Long.parseLong(request.getParameter("eid"));
            Educator educator = educatorService.getEducatorById(id);

            if (educator != null) {
                // Update educator fields with the data from the request
                educator.setUsername(request.getParameter("username"));
                educator.setEmail(request.getParameter("email"));
                educator.setMobile(request.getParameter("mobile"));
                educator.setSubject(request.getParameter("subject"));
                educator.setExperience(Integer.parseInt(request.getParameter("experience")));
                educator.setEducation(request.getParameter("education"));
                educator.setInstitution(request.getParameter("institution"));
                educator.setLinkedin(request.getParameter("linkedin"));
                educator.setStatus(request.getParameter("status")); // Optional status field
                
                // Update the educator details in the database
                educatorService.updateEducatorDetails(educator);

                // Success response
                mv.setViewName("updateeducatorsuccess"); // JSP/HTML page name for success
                mv.addObject("message", "Educator updated successfully.");
            } else {
                // Educator not found
                mv.setViewName("errorPage"); // Error page
                mv.addObject("message", "Educator not found.");
            }
        } catch (Exception e) {
            // Handle errors and exceptions
            mv.setViewName("errorPage");
            mv.addObject("message", "An error occurred while updating the educator: " + e.getMessage());
        }

        return mv;
    }

    
}



