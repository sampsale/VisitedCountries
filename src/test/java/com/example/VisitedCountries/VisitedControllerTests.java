package com.example.VisitedCountries;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import VisitedCountries.web.VisitedController;

@SpringBootTest
@ContextConfiguration(classes=VisitedCountries.VisitedCountriesApplication.class)
public class VisitedControllerTests {
	@Autowired 
	VisitedController controller;

	@Test
	void controllerLoads() {
		assertNotNull(controller);
	}
	
	
}
