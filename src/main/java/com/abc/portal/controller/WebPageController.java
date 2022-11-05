/*
 * WebPageController 
 * This is my WebPageController class
 *
 * Date:12th May 2022
 * 
 *
 */
package com.abc.portal.controller;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abc.portal.dao.JobsAppliedRepository;
import com.abc.portal.dao.JobRepository;
import com.abc.portal.dao.UserRepository;
import com.abc.portal.dto.JobsApplied;
import com.abc.portal.dto.Email;
import com.abc.portal.dto.Jobsp;
import com.abc.portal.dto.User;
import com.abc.portal.service.EmailService;
import com.abc.portal.service.JobService;
import com.abc.portal.service.MyUserService;

@Controller

public class WebPageController {

	@Autowired
	MyUserService myservice;

	@Autowired
	EmailService emailservice;

	@Autowired
	JobRepository jobrepo;

	@Autowired
	JobsAppliedRepository jobapplyrepo;

	@Autowired
	UserRepository userrepo;

	@Autowired
	JobService jobservice;

	// Home page
	@GetMapping(value = "/")
	public String myHomePage() {
		System.out.println("home");
		return "home";

	}

	@GetMapping(value = "/user")
	public ModelAndView myuserPage(Principal principal, Model model) {

		final String currentUser = principal.getName();

		User us = myservice.transUser(currentUser);

		String username = principal.getName();
		System.out.println("Logged in  user is" + username);

		model.addAttribute("username", username);
		return new ModelAndView("userpage", "queer", us);

	}

	@GetMapping(value = "/register")
	public String myRegisterPage(@ModelAttribute("vajresh") User us) {
		System.out.println("registration");

		return "registration";

	}

	@GetMapping(value = "/login")
	public String loginpage() {
		System.out.println("login");

		return "loginPage";

	}

	@PostMapping(value = "/myreg")
	public String addRegisterPage(@ModelAttribute("vajresh") User us) {
		System.out.println("registration successfull");
		myservice.addUser(us);
		return "redirect:/login";

	}

	@GetMapping(value = "/thankyou")
	public String thankyou() {
		return "thankYou";
	}

	@GetMapping(value = "/admin")
	public String myadminPage(Principal principal, Model model) {

		String username = principal.getName();
		System.out.println("Logged in  user is" + username);

		model.addAttribute("username", username);

		return "adminpage";

	}

	@GetMapping(value = "/show")
	public ModelAndView dislearner() {
		List<User> AllUsr = myservice.showAllUser();
		System.out.println(AllUsr);
		return new ModelAndView("ShowDetails", "testv", AllUsr);
	}

	// update
	@GetMapping(value = "/update/{searid}")
	public ModelAndView updatePage(@PathVariable("searid") Long id) {
		User l = myservice.SearchUser(id);
		System.out.println("working");

		return new ModelAndView("UpdateUser", "updateu", l);

	}

	@GetMapping(value = "/update/dataupdate")
	public String updateData(@RequestParam("userId") Long id, @RequestParam("userName") String UName,
			@RequestParam("firstName") String FName, @RequestParam("lastName") String LName,
			@RequestParam("password") String password, @RequestParam("mailid") String Email,
			@RequestParam("userContact") String Contact, @RequestParam("userAddress") String Address,
			@RequestParam("role") String role) {

		System.out.println(id + " " + FName);
		User us = new User();
		us.setUserId(id);
		us.setUserName(UName);
		us.setFirstName(FName);
		us.setLastName(LName);
		us.setPassword(password);
		us.setMailid(Email);
		us.setUserContact(Contact);
		us.setUserAddress(Address);
		us.setRole(role);
		myservice.updateUser(us);
		return "redirect:/show";

	}

	// update USER
	@GetMapping(value = "us/update/{searid}")
	public ModelAndView updatePages(@PathVariable("searid") Long id) {
		User l = myservice.SearchUser(id);
		System.out.println("working");

		return new ModelAndView("UpdateUser", "updateu", l);

	}

	@GetMapping(value = "us/update/dataupdate")
	public String updateDatau(@RequestParam("userId") Long id, @RequestParam("userName") String UName,
			@RequestParam("firstName") String FName, @RequestParam("lastName") String LName,
			@RequestParam("password") String password, @RequestParam("mailid") String Email,
			@RequestParam("userContact") String Contact, @RequestParam("userAddress") String Address,
			@RequestParam("role") String role) {

		System.out.println(id + " " + FName);
		User us = new User();
		us.setUserId(id);
		us.setUserName(UName);
		us.setFirstName(FName);
		us.setLastName(LName);
		us.setPassword(password);
		us.setMailid(Email);
		us.setUserContact(Contact);
		us.setUserAddress(Address);
		us.setRole(role);
		myservice.updateUser(us);
		return "redirect:/user";

	}

	// Delete
	@GetMapping(value = "/delete/{id}")
	public ModelAndView delete(@PathVariable long id) {
		myservice.delete(id);
		return new ModelAndView("redirect:/show");
	}

	// Search
	@GetMapping(value = "/search")
	public String membersearch(@ModelAttribute("searchd") User userId) {
		return "search";
	}

	@PostMapping(value = "/sear")
	public ModelAndView membesearch(@ModelAttribute("searchd") User username) {

		String searchname = username.getUserName();
		User mm = myservice.SearchUser(searchname);
		System.out.println(mm);
		return new ModelAndView("SearchResult", "arves", mm);
	}

	

	@GetMapping(value = "/accessdenied")
	public String error() {
		// System.out.println("hiii");
		return "accessdenied";
	}

	// post job
	@GetMapping(value = "/admin/jobpost")
	public String adminpostjob(@ModelAttribute("haseul") Jobsp job) {
		System.out.println("job");
		return "postjob";
	}

	@PostMapping(value = "/jobposted")
	public String addjob(@Valid @ModelAttribute("haseul") Jobsp job, BindingResult results) {
		if (results.hasErrors()) {
			return "postjob";
		} else {
			jobservice.addjob(job);
			System.out.println("job posted");
			return "redirect:/viewjobsadmin";
		}

	}

	// view job for ADMIN
	@GetMapping(value = "/viewjobsadmin")
	public ModelAndView viewJobadmin() {

		List<Jobsp> allJobs = jobservice.showAllJobs();
		System.out.println("Jobs avilable are " + allJobs);
		return new ModelAndView("adminJobslist", "jobl", allJobs);
	}

	// view Jobs for users
	@GetMapping(value = "/viewjobs")
	public ModelAndView viewJobs() {
		List<Jobsp> allJobs = jobservice.showAllJobs();
		System.out.println("Jobs avilable are " + allJobs);
		return new ModelAndView("viewJob", "jobl", allJobs);
	}

	// jobs details for user
	@GetMapping(value = "/descjobu/{job_Id}")
	public String jobsDetailsUser(@PathVariable int job_Id, ModelMap model) {
		Jobsp jb = jobrepo.getById(job_Id);                 // pass values to render view
		model.addAttribute("apply", jb);
		return "applyJob";

	}

	// apply job
	@GetMapping(value = "/descjob/{job_Id}")
	public String appliedjob(@PathVariable int job_Id, Principal prri, JobsApplied apply) {

		String name = prri.getName();
		User usr = userrepo.findByUserName(name);
		System.out.println("User viewing job is " + usr);

		Long uid = usr.getUserId();
		apply.setUserId(uid);

		Jobsp job = jobrepo.getById(job_Id);
		String title = job.getJ_title();
		int id = job.getJob_Id();
		apply.setJobId(id);
		jobapplyrepo.save(apply);
		System.out.println("Job Title is " + " " + title + " " + " id is" + " " + id);
		System.out.println("Job avilable are " + " " + job);
		return "Thankyoujobapplied";
	}
	
	// jobs details for ADMIN
		@GetMapping(value = "/descjobadmin/{job_Id}")
		public String jobsDetailsAdmin(@PathVariable int job_Id, ModelMap model) {
			Jobsp jb = jobrepo.getById(job_Id);
			model.addAttribute("apply", jb);
			return "jobDetail";
		}	
	
		// Delete job
		@GetMapping(value = "/deletejob/{id}")
		public ModelAndView deleteJobAdmin(@PathVariable int id) {
			jobservice.deletejob(id);
			return new ModelAndView("redirect:/viewjobsadmin");
		}
		
		
		
	// Email
	@GetMapping(value = "/admin/sendmail")
	public String senfmail(@ModelAttribute("emails") Email email) {

		return "sendemail";
	}

	@PostMapping(value = "/mailSent")
	public String sentEmail(@Valid  @ModelAttribute("emails") Email email, BindingResult result) {
		String recivers_email = email.getReciever_email();
		String subject = email.getSubject();
		String body = email.getBody();
		if (result.hasErrors()) {
			return "sendemail";
		} else {
			String state = emailservice.sendEmail(email);
			System.out.println("To: " + recivers_email);
			System.out.println("Subject: " + subject);
			System.out.println("Body: " + body);
			System.out.println("State: " + state);
			emailservice.emailS(email);
			return "emailthnx";
		}

	}
}

//       
//
//       
//       @GetMapping(value="/descjob/{j_Id}")
//       public String jobsDetailsUser(@PathVariable Long j_Id, ModelMap model ) {
//    	   Jobsp jb = jobrepo.getById(j_Id);
//    	   model.addAttribute("apply", jb);
//           return "applyJob";
//    	   
//       }
//       
//       //@PostMapping(value="/applied")
//       @RequestMapping(value="/applied", method=RequestMethod.POST)
//       public String appliedJobs(AppliesJobs applied, Principal name, Jobsp jobesj) {
//    	   
//    	   String uname = name.getName();
//    	   User u = userrepo.findByUserName(uname);
//    	     //user id  	   
//    	   Long id =  u.getUserId();
//    	   applied.setUserId(id);
//    	   System.out.println("User id in the registered job are " + id);
//    	   
//    	   //job id 
//    	   
//    	   Long ji_d = jobesj.getJ_Id();
//    	   
//    	   System.out.println("job id gotten =" + ji_d);
//    	   
//    	   applied.setJobId(ji_d);
//    	   System.out.println("job id saved as" + ji_d);
//    	   
//    	   System.out.println("the id of the loged in user is " + id + " job id is " + ji_d);
//    	   //jobservice.addAppliedUser(applied);
//    	   appliedrepo.save(applied);
//    	   System.out.println("Job applied");
//		   return "userpage";
//       }

//@Autowired
//JavaMailSender javaMailSender;
//
//@RequestMapping("/sendmail")
//public String helloSpringBoot(){
//  
//SimpleMailMessage message = new SimpleMailMessage();
// 
//message.setFrom("springboot950@gmail.com");
//message.setTo("9tanya18@gmail.com");
//message.setSubject("Subject : Sample Email Subject");
//message.setText("Body : This is sample mail mail Body.");
// 
//javaMailSender.send(message);
// 
//System.out.println("Mail successfully sent..");
// 
//return "adminpage";
//}

//User page after login as USER
//@GetMapping(value = "/user")
//public String myuserPage(Principal principal, Model model ) {
//	
//	String username= principal.getName();
//	System.out.println("Logged in  user is" +username);
//	
//	model.addAttribute("username", username);
//  return "userpage";
//	
//}

////view job for USER
//@GetMapping(value="/viewjobs")
//public ModelAndView viewJobUser() {
//	   myservice.showJobs();
//	   List<Jobsp> allJobs = myservice.showJobs();
//	   System.out.println("Jobs avilable are " + allJobs);
//	   return new ModelAndView("viewJob", "jobl", allJobs);
//}

//
////job details for user
//@GetMapping(value="/descjob/{job_Id}")
//public String viewJobDetails(@PathVariable int job_Id, ModelMap model) {
//	   Jobsp job = jobrepo.getById(job_Id);
//	   String title = job.getJ_title();
//	   int id = job.getJob_Id();
//	   System.out.println("Job Title is " +" " + title +" " + " id is" + " " +id);
//	   System.out.println("Job avilable are " + " " + job);
//	   model.addAttribute("apply",job);
//	   return "applyJob";
//}
