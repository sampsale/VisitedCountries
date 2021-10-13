package com.example.VisitedCountries;

import org.assertj.core.api.Assertions;
import java.util.List;

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

@ExtendWith(SpringExtension.class)
@DataJpaTest
@ContextConfiguration(classes=VisitedCountries.VisitedCountriesApplication.class)
@AutoConfigureTestDatabase(replace = Replace.NONE)
public class CountryRepositoryTests {
	@Autowired
	CountryRepository repository;
	
	
	@Test
	public void findByCountryName() {
		List<Country> countries= repository.findByCountryName("Germany");
		System.out.println("TESTING: FindByCountry: " + countries);
		Assertions.assertThat(countries.get(0).getName()).isEqualTo("Germany");
	}
	@Test 
	public void findAllCountriesReturnSize228() {
		System.out.println("TESTING: FindAll:" +  repository.findAll());
		Assertions.assertThat(repository.findAll()).hasSize(228);
	}
	
}
