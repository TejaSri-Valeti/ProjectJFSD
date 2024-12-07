package com.klef.jfsd.springboot.Controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.Models.EducationalMaterial;
import com.klef.jfsd.springboot.Models.Educator;
import com.klef.jfsd.springboot.Models.Quiz;
import com.klef.jfsd.springboot.Models.Webinar;
import com.klef.jfsd.springboot.repositories.QuizRepository;
import com.klef.jfsd.springboot.services.EducatorService;

import jakarta.persistence.criteria.Path;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class EducatorController<QuizService> {

    @Autowired
    private EducatorService educatorService;
    

    // Show the educator registration form
    @GetMapping("educatorregister")
    public String showRegistrationForm() {
        return "educatorregister"; // JSP page for registration form
    }

    // Educator registration submission
    @PostMapping("/eregister")
    public ModelAndView registerEducator(@ModelAttribute Educator educator, Model model) {
        // Check if the educator already exists
        if (educatorService.isEducatorExists(educator.getUsername(), educator.getEmail())) {
            // Show error message if the educator exists
            ModelAndView mv = new ModelAndView("educatorregister");
            mv.addObject("message", "User already exists. Please try with a different username or email.");
            return mv;
        }

        // Set the educator's status to "pending" initially
        educator.setStatus("pending");

        // Save the new educator (Assume educatorService.saveEducator saves the educator)
        educatorService.saveEducator(educator);

        // Redirect to the login page after successful registration
        return new ModelAndView("redirect:/educatorlogin");
    }

    // Show educator login page
    @GetMapping("/educatorlogin")
    public String showEducatorLoginPage() {
        return "educatorlogin"; // Return the JSP page for educator login
    }

    @PostMapping("/educatorslogin")
    public String loginEducator(@RequestParam String username, 
                                 @RequestParam String password, 
                                 Model model, 
                                 HttpServletRequest request) {
        // Fetch educator by username
        Educator educator = educatorService.findByUsername(username);

        // If educator does not exist or password is incorrect
        if (educator == null || !educator.getPassword().equals(password)) {
            model.addAttribute("error", "Invalid Username or Password. Please ensure you're a registered user.");
            return "educatorlogin"; // Redirect to login page with error message
        }

        // Handle educator account status
        switch (educator.getStatus().toLowerCase()) {
            case "approved":
                // If approved, set session and redirect to dashboard
                HttpSession session = request.getSession();
                session.setAttribute("educator", educator);
                session.setAttribute("educatorUsername", educator.getUsername());
                return "EducatorHome"; // Redirect to educator's dashboard

            case "pending":
                // If approval is pending, show message
                model.addAttribute("error", "Your registration is pending approval. Please wait for admin confirmation.");
                return "educatorlogin";

            case "rejected":
                // If registration is rejected, show message
                model.addAttribute("error", "Your registration has been rejected. Please contact the admin for further details.");
                return "educatorlogin";

            default:
                // Handle unexpected status
                model.addAttribute("error", "Unexpected error occurred. Please contact support.");
                return "educatorlogin";
        }
    }
    @GetMapping("/educatorprofile")
    public String showEducatorProfile(HttpServletRequest request, Model model) {
        // Retrieve the logged-in educator from session
        HttpSession session = request.getSession();
        Educator educator = (Educator) session.getAttribute("educator");

        // If no educator is logged in, redirect to login page
        if (educator == null) {
            return "redirect:/educatorlogin";
        }

        // Pass educator details to the profile page
        model.addAttribute("educator", educator);
        return "educatorprofile"; // JSP page for educator profile
    }
    
    @GetMapping("/showCreateMaterialForm")
    public String showCreateMaterialForm(Model model) 
    {
        
        return "CreateEducationalMaterial"; // JSP page for creating material
    }
    @PostMapping("/createMaterial")
    public ModelAndView createMaterial(HttpServletRequest request) {
        // Create a new material object and populate its fields
        EducationalMaterial material = new EducationalMaterial();
        material.setTitle(request.getParameter("title"));
        material.setDescription(request.getParameter("description"));
        material.setTags(request.getParameter("tags"));

        String message;
        try {
            // Add the material using your service logic
            EducationalMaterial savedMaterial = educatorService.addMaterial(material);
            message = "Material '" + savedMaterial.getTitle() + "' created successfully!";
        } catch (Exception e) {
            message = "Failed to create material: " + e.getMessage();
        }

        // Return back to the CreateEducationalMaterial page with the message
        ModelAndView mv = new ModelAndView("CreateEducationalMaterial");
        mv.addObject("message", message);
        return mv;
    }
    @GetMapping("/viewmaterials")
    public ModelAndView viewMaterials() {
        ModelAndView mv = new ModelAndView("viewmaterials");
        List<EducationalMaterial> materialList = educatorService.viewmaterials();
        
        // Log retrieved materials for debugging
        System.out.println("Retrieved materials in Controller: " + materialList);

        mv.addObject("materialList", materialList);
        return mv;
    }
    @Controller
    public class WebinarController {
        @GetMapping("/ConductWebinar")
        public String showConductWebinarPage() {
            return "ConductWebinar"; // Name of your JSP file without .jsp
        }
    }
   
 // Show the "Conduct Webinar" form
    @GetMapping("/showConductWebinarForm")
    public String showConductWebinarForm(Model model) {
        return "ConductWebinar"; // JSP page for conducting webinar
    }

    // Handle the webinar form submission
    @PostMapping("/conductWebinar")
    public ModelAndView conductWebinar(HttpServletRequest request) {
        // Create a new Webinar object and populate its fields
        Webinar webinar = new Webinar();
        webinar.setTitle(request.getParameter("title"));
        webinar.setDescription(request.getParameter("description"));
        webinar.setDate(request.getParameter("date"));
        webinar.setTime(request.getParameter("time"));
        webinar.setLink(request.getParameter("link"));

        String message;
        try {
            // Add the webinar using your service logic
            Webinar savedWebinar = educatorService.addWebinar(webinar);
            message = "Webinar '" + savedWebinar.getTitle() + "' created successfully!";
        } catch (Exception e) {
            message = "Failed to create webinar: " + e.getMessage();
        }

        // Return back to the ConductWebinar page with the message
        ModelAndView mv = new ModelAndView("ConductWebinar");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("/viewWebinars")
    public String viewWebinars(Model model) {
        List<Webinar> webinarList = educatorService.getAllWebinars();  // Fetch all webinars
        model.addAttribute("webinars", webinarList);  // Pass the webinars to the view
        return "viewWebinars";  // JSP page name to render
    }

    @GetMapping("/viewWebinars/{id}")
    public String viewWebinarDetails(@PathVariable("id") Long id, Model model) {
        Webinar webinar = educatorService.getWebinarById(id);  // Using educatorService to fetch webinar by ID
        if (webinar != null) {
            model.addAttribute("webinar", webinar);  // Adding webinar to the model
            return "viewWebinarDetails";  // Return the view (JSP)
        } else {
            return "redirect:/viewWebinars";  // Redirect to the webinar list if not found
        }
    }

 // Show the "Add Quiz" form (keep using addquizes.jsp)
    public void QuizController(EducatorService educatorService) {
        this.educatorService = educatorService;
    }

    @GetMapping("addquizes")
    public String showAddQuizForm() {
        return "addquizes"; // Return to the JSP form for adding quizzes
    }
    @PostMapping("/savequizdetails")
    public String saveQuizDetails(
        @RequestParam("title") String title,
        @RequestParam("description") String description,
        @RequestParam("question1") String question1,
        @RequestParam("option1-1") String option1,
        @RequestParam("option1-2") String option2,
        @RequestParam("option1-3") String option3,
        @RequestParam("option1-4") String option4,
        @RequestParam("correctAnswer1") String correctAnswer1,
        Model model
    ) {
        // Logic to handle saving the quiz
        List<String> options = new ArrayList<>();
        options.add(option1);
        options.add(option2);
        options.add(option3);
        options.add(option4);

        Quiz quiz = new Quiz();
        quiz.setTitle(title);
        quiz.setDescription(description);
        quiz.addQuestion(question1, options, correctAnswer1);

        educatorService.addQuiz(quiz);

        // Add success message to the model
        model.addAttribute("message", "Quiz saved successfully!");

        // Return to the same form page (no redirection)
        return "addquiz";  // You can change this view name to your actual quiz form page (JSP or HTML)
    }
    @GetMapping("/deleteviewmaterials")
    public String deleteviewMaterials(Model model) {
        List<EducationalMaterial> materials = educatorService.viewmaterials(); // Fetch all materials
        model.addAttribute("materialList", materials); // Add list to model
        return "deleteviewmaterials"; // Return the JSP page to display the list
    }

 // Mapping the delete material method
    @PostMapping("/deleteMaterial")
    public ModelAndView deleteMaterial(@RequestParam("id") Long materialId, Model model) {
        String message;
        try {
            // Call service method to delete the material by ID
            educatorService.deleteMaterial(materialId);
            message = "Material deleted successfully!";
        } catch (Exception e) {
            message = "Failed to delete material: " + e.getMessage();
        }

        // Fetch updated list of materials to display
        List<EducationalMaterial> materialList = educatorService.viewmaterials();
        ModelAndView mv = new ModelAndView("viewmaterials");
        mv.addObject("materialList", materialList);
        mv.addObject("message", message);
        return mv;
    }
    @GetMapping("/EducatorHome")
    public ModelAndView educatorHome() {
        // Return the "EducatorHome" view
        return new ModelAndView("EducatorHome");
    }
    // Method to view all webinars
    @GetMapping("/deleteviewWebinars")
    public String deleteviewWebinars(Model model) {
        List<Webinar> webinars = educatorService.getAllWebinars();
        model.addAttribute("webinars", webinars);
        return "deleteviewWebinars"; // JSP page to display the webinars
    }

    // Method to delete a specific webinar by ID
    @PostMapping("/deleteWebinar")
    public String deleteWebinar(@RequestParam("id") Long id, Model model) {
        boolean isDeleted = educatorService.deleteWebinarById(id);

        if (isDeleted) {
            model.addAttribute("message", "Webinar deleted successfully!");
        } else {
            model.addAttribute("message", "Error deleting webinar. Please try again.");
        }

        return "redirect:/viewWebinars"; // Redirect to the view page
    }
    
}



