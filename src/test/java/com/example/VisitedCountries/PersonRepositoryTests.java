package com.example.VisitedCountries;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import VisitedCountries.domain.Person;
import VisitedCountries.domain.PersonRepository;


@ExtendWith(SpringExtension.class)
@DataJpaTest
@SpringBootTest(classes = PersonRepository.class)

public class PersonRepositoryTests {
	@Autowired
	private PersonRepository repository;
	
	
	@Test
	public void createNewPerson() {
		Person person = new Person("Tomi","Turtia");
		repository.save(person);
		assertThat(person.getPersonId()).isNotNull();
	}
	
}
