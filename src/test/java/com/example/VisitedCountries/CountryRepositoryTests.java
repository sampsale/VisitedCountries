package com.example.VisitedCountries;

import org.assertj.core.api.Assertions;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import VisitedCountries.domain.Country;
import VisitedCountries.domain.CountryRepository;

@ExtendWith(SpringExtension.class)
@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@ContextConfiguration(classes=VisitedCountries.domain.CountryRepository.class)
public class CountryRepositoryTests {
	@Autowired
	private CountryRepository repository;
	
	
	@Test
	public void findByCountryName() {
		List<Country> countries= repository.findBycountryName("Germany");
		System.out.println("TESTING: FindByAuthor: " + countries);
		System.out.println("TESTING: FindAll:" +  repository.findAll());
		Assertions.assertThat(countries.get(0).getName()).isEqualTo("Germany");
	}
	
	
}
