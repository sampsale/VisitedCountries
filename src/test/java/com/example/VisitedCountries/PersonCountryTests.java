package com.example.VisitedCountries;
import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import VisitedCountries.domain.Country;
import VisitedCountries.domain.CountryRepository;
import VisitedCountries.domain.Person;
import VisitedCountries.domain.PersonCountry;
import VisitedCountries.domain.PersonCountryRepository;

@ExtendWith(SpringExtension.class)
@DataJpaTest
@ContextConfiguration(classes=VisitedCountries.VisitedCountriesApplication.class)
@AutoConfigureTestDatabase(replace = Replace.NONE)



public class PersonCountryTests {
	@Autowired
	PersonCountryRepository repository;
	CountryRepository crepository;

	@Test
	public void findAllVisitsShouldReturn0() {
		System.out.println("TESTING: FindAll:" +  repository.findAll());
		Assertions.assertThat(repository.findAll()).hasSize(0);
	}
	@Test
	public void findAVisitShouldReturn0() {
		Person person = new Person("Testi", "Testinen");
		List <Country> germany = crepository.findByCountryName("Germany");
		PersonCountry visit = new PersonCountry(person, germany.get(0), "070795");
		Assertions.assertThat(visit.getCountry().equals("Germany"));
	}
	
}
