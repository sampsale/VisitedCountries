package VisitedCountries.web;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import VisitedCountries.domain.CountryRepository;
import VisitedCountries.domain.Person;

import VisitedCountries.domain.PersonCountry;
import VisitedCountries.domain.PersonCountryRepository;
import VisitedCountries.domain.PersonRepository;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VisitedController {
	// main pagelle
	
	@Autowired
	private PersonRepository prepository;
	
	@Autowired
	private CountryRepository crepository; 
	
	@Autowired
	private PersonCountryRepository pcrepository;
	
	// main page
	// list visits
		@RequestMapping(value= {"/visitlist", "/"})
		public String welcome(Model model) {
			model.addAttribute("visits", pcrepository.findAll());
			return "visitlist";
	}
	// add visit
		@RequestMapping(value = {"/addvisit", "/add"})
		public String addVisit(Model model) {
			model.addAttribute("visit", new PersonCountry());	
			model.addAttribute("countries", crepository.findAll());
			model.addAttribute("persons", prepository.findAll());
			return "addvisit";
		}
	// save visit
		@RequestMapping(value = {"/savevisit"}, method = RequestMethod.POST)
		public String save(PersonCountry visit, BindingResult bindingresult) {
			if (bindingresult.hasErrors()) {
				return "addvisit";
			}
			pcrepository.save(visit);
			return "redirect:visitlist";
		}
	// add new visitor and validate first name
		@RequestMapping(value = {"/savevisitor"}, method = RequestMethod.POST)
		public String save(@Valid Person visitor, BindingResult bindingResult) {
			if (bindingResult.hasErrors()) {
				return "redirect:visitors";
			}
			prepository.save(visitor);
			return "redirect:visitors";
		}
		
	// delete visit
		@PreAuthorize("hasAuthority('ROLE_ADMIN')")
		@RequestMapping (value = "/deletevisit/{visitId}", method = RequestMethod.GET)
		public String deleteVisit(@PathVariable("visitId") Long visitId, Model model) {
		pcrepository.deleteById(visitId);
		return "redirect:../visitlist";
		}
	// go to visit editpage
		@RequestMapping(value="editvisit/{visitId}")
		public String editVisit(@PathVariable("visitId") Long visitId, Model model) {
			model.addAttribute("visit", pcrepository.findById(visitId));
			model.addAttribute("countries", crepository.findAll());
			model.addAttribute("visitors", prepository.findAll());
			System.out.print(pcrepository.findById(visitId).toString());
			return "editvisit";
		}
	// save visit edit 
		@PreAuthorize("hasAuthority('ROLE_ADMIN')")
		@RequestMapping(value="/savevisitedit")
		public String saveVisitEdit(@Valid PersonCountry visit, Model model, BindingResult bindingResult) {
			if (bindingResult.hasErrors()) {
				return "visitlist";
			}
			pcrepository.save(visit);
			return "redirect:visitlist";
		}
		
		

	// go to visitor control page
		@RequestMapping(value = "/visitors")
		public String visitors(Model model) {
			model.addAttribute("visitor", new Person());
			model.addAttribute("visitors", prepository.findAll());
			return "visitors";
		}
	// go to visitor editpage
		@RequestMapping(value = "editvisitor/{personId}")
		public String editVisitor(@PathVariable("personId") Long personId, Model model) {
			model.addAttribute("person", prepository.findById(personId));
			return "editvisitor";
		}
		
	// save visitor edit & validate
		@PreAuthorize("hasAuthority('ROLE_ADMIN')")
		@RequestMapping(value="savevisitoredit")
		public String saveEdit(@Valid Person visitor, Model model, BindingResult bindingResult) {
			if (bindingResult.hasErrors()) {
				return "editvisitor";
			}
			prepository.save(visitor);
			return "redirect:visitors";
		}
	// delete visitor 
		@PreAuthorize("hasAuthority('ROLE_ADMIN')")
		@RequestMapping (value = "/deletevisitor/{personId}", method = RequestMethod.GET)
		public String deleteVisitor(@PathVariable("personId") Long personId, Model model) {
			
			prepository.deleteById(personId);
			return "redirect:../visitors";
		}
	
		
}

