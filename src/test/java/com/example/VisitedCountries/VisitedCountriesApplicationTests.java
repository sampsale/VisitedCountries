package com.example.VisitedCountries;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import VisitedCountries.web.VisitedController;

@SpringBootTest
class VisitedCountriesApplicationTests {
	@Autowired 
	VisitedController visitedController;
	
	@Test
	void contextLoads() {
		assertNotNull(visitedController);
	}

}
