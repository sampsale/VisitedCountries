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

import VisitedCountries.domain.Person;
import VisitedCountries.domain.PersonRepository;

@ExtendWith(SpringExtension.class)
@DataJpaTest
@ContextConfiguration(classes=VisitedCountries.VisitedCountriesApplication.class)
@AutoConfigureTestDatabase(replace = Replace.NONE)

public class PersonRepositoryTests {
	@Autowired
	PersonRepository repository;
	
	@Test
	public void findByFirstName() {
		List<Person> people = repository.findByfirstName("Sampsa");
		System.out.println("TESTING: FindByName: " + people);
		Assertions.assertThat(people.get(0).getFirstName()).isEqualTo("Sampsa");
	}
	
	@Test
	public void findAllShouldReturn4() {
		System.out.println("TESTING: FindAll:" +  repository.findAll());
		Assertions.assertThat(repository.findAll()).hasSize(4);
	}
	
}