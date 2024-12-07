package com.klef.jfsd.springboot.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
@Controller
public class ClientController 
{
@GetMapping("/")
public String index()
{
	
	return "index";
}
@RequestMapping("/AdminLogin")
public String AdminLogin() {
    return "AdminLogin";  
}
@RequestMapping("/admindashboard")
public String admindashboard() {
    return "admindashboard";  
}
@RequestMapping("/EducatorDashboard")
public String EducatorDashboard() {
    return "EducatorDashboard";  
}
@RequestMapping("/CreateEducationalMaterial")
public String CreateEducationalMaterial() {
    return "CreateEducationalMaterial";  
}


@RequestMapping("/HostWebinar")
public String HostWebinar() {
    return "HostWebinar";  
}
@RequestMapping("/CitizenProfile")
public String CitizenProfile() {
    return "CitizenProfile";  
}
@RequestMapping("/FacilitateDiscussion")
public String FacilitateDiscussion() {
    return "FacilitateDiscussion";  
}

@RequestMapping("/ProvideFeedback")
public String ProvideFeedback() {
    return "ProvideFeedback";  
}
@RequestMapping("/AssessLearningOutcomes")
public String AssessLearningOutcomes() {
    return "AssessLearningOutcomes";  
}

@RequestMapping("/index2")
public String showIndex2() {
    return "index2";  
}
@RequestMapping("/index3")
public String showIndex3() {
    return "index3";  
}
@RequestMapping("/index4")
public String showIndex4() {
    return "index4";  
}
@RequestMapping("/EducatorRegister")
public String educatorregister() {
    return "educatorregister";  
}
@RequestMapping("/educatorlogin")
public String educatorlogin() {
    return "educatorlogin";  
}
@RequestMapping("/index5")
public String showIndex5() {
    return "index5";  
}
@GetMapping("index7")
public String index7()
{
	return "contactus";
}
@GetMapping("index6")
public String index6()
{
	return "About";
}


@RequestMapping("/legalexpertlogin")
public String legalexpertlogin() {
    return "legalexpertlogin";  
}
@RequestMapping("/LegalExpertRegister")
public String LegalExpertRegister() {
    return "LegalExpertRegister";  
}

@GetMapping("explore")
public String explore()
{
	
	return "explore";
}
@GetMapping("register")
public String register()
{
	
	return "register";
}
@GetMapping("login")
public String login()
{
	
	return "login";
}
@GetMapping("citizendashboard")
public ModelAndView citizendashboard()
{
	ModelAndView mv=new ModelAndView();
	mv.setViewName("citizendashboard");
	return mv;
}
@GetMapping("citizen")
public String citizen()
{
	
	return "citizen";
}
@GetMapping("citizen1")
public String citizen1()
{
	
	return "citizen1";
}
@GetMapping("citizen2")
public String citizen2()
{
	
	return "citizen2";
}
@GetMapping("citizen3")
public String citizen3()
{
	
	return "citizen3";
}
@GetMapping("citizen4")
public String citizen4()
{
	
	return "citizen4";
}
@GetMapping("citizen5")
public String citizen5()
{
	
	return "citizen5";
}
@GetMapping("citizenlogout")
public String citizenlogout()
{
	
	return "login";
}
@GetMapping("preamble")
public String preamble()
{
	
	return "preamble";
}

@GetMapping("fundamentalrights")
public String fundamentalrights()
{
	
	return "fundamentalrights";
}
@GetMapping("directiveprinciples")
public String directiveprinciples ()
{
	
	return "directiveprinciples";
}

@GetMapping("governmentstructure")
public String governmentstructure ()
{
	
	return "governmentstructure";
}
 
@GetMapping("amendments")
public String amendments()
{
	
	return "amendments";
}
@GetMapping("preamblediscussionforum")
public String preamblediscussionforum()
{
	
	return "preamblediscussionforum";
}
@GetMapping("fundamentalrightsdiscussionforum")
public String fundamentalrightsdiscussionforum()
{
	
	return "fundamentalrightsdiscussionforum";
}

@GetMapping("directiveprinciplesdiscussionforum")
public String directiveprinciplesdiscussionforum()
{
	
	return "directiveprinciplesdiscussionforum";
}
@GetMapping("amendmentsdiscussionforum")
public String amendmentsdiscussionforum()
{
	
	return "amendmentsdiscussionforum";
}
@GetMapping("federalstructurediscussionforum")
public String federalstructurediscussionforum()
{
	
	return "federalstructurediscussionforum";
}
@GetMapping("preamblequiz")
public String preamblequiz()
{
	
	return "preamblequiz";
}
@GetMapping("fundamentalrightsquiz")
public String fundamentalrightsquiz ()
{
	
	return "fundamentalrightsquiz";
}
@GetMapping("WebinarPreamble")
public String WebinarPreamble ()
{
	
	return "WebinarPreamble";
}
@GetMapping("WebinaronFundamentalRights")
public String WebinaronFundamentalRights ()
{
	
	return "WebinaronFundamentalRights";
}
@GetMapping("WebinaronDirectivePrinciplesofStatePolicy")
public String WebinaronDirectivePrinciplesofStatePolicy ()
{
	
	return "WebinaronDirectivePrinciplesofStatePolicy";
}
@GetMapping("WebinaronAmendmentstotheConstitution")
public String WebinaronAmendmentstotheConstitution ()
{
	
	return "WebinaronAmendmentstotheConstitution";
}
@GetMapping("WebinaronFederalStructureofIndia")
public String WebinaronFederalStructureofIndia ()
{
	
	return "WebinaronFederalStructureofIndia";
}
@GetMapping("DirectivePrinciplesQuiz")
public String DirectivePrinciplesQuiz()
{
	
	return "DirectivePrinciplesQuiz";
}
@GetMapping("AmendmentsQuiz")
public String AmendmentsQuiz()
{
	
	return "AmendmentsQuiz";
}
@GetMapping("FederalStructureQuiz")
public String FederalStructureQuiz()
{
	
	return "FederalStructureQuiz";
}
@RequestMapping("contact")
public String Contactus()
{
	return "contactus";
}
@GetMapping("legalupdates")
public String legalupdates()
{
	
	return "legalupdates";
}
@GetMapping("legalexpertprofile")
public String legalexpertprofile()
{
	
	return "legalexpertprofile";
}

@Autowired
private JavaMailSender mailSender;

@PostMapping("sendemail")
public ModelAndView sendEmail(HttpServletRequest request) throws Exception {
    String name = request.getParameter("name");
    String toemail = request.getParameter("email");
    String subject = request.getParameter("subject");
    String msg = request.getParameter("message");

    MimeMessage mimeMessage = mailSender.createMimeMessage();
    MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

   
    helper.setTo(toemail);
    helper.setSubject(subject);
    helper.setFrom("tejasri1865@gmail.com");

    String htmlContent =
        "<h3>Contact Form Details</h3>" +
        "<p><strong>Name:</strong> " + name + "</p>" +
        "<p><strong>Email:</strong> " + toemail + "</p>" +
        "<p><strong>Subject:</strong> " + subject + "</p>" +
        "<p><strong>Message:</strong> " + msg + "</p>" ;
        

    helper.setText(htmlContent, true);
    mailSender.send(mimeMessage);

    ModelAndView mv = new ModelAndView("contactus");
    mv.addObject("message", "Email Sent Successfully");
    return mv;
}
@GetMapping("reports")
public String reports()
{
	
	return "reports";
}

@GetMapping("analyzecases")
public String analyzecases()
{
	
	return "analyzecases";
}
}
