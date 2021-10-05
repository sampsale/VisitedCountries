package VisitedCountries;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import VisitedCountries.domain.Country;
import VisitedCountries.domain.Person;
import VisitedCountries.domain.PersonCountry;
import VisitedCountries.domain.PersonRepository;
import VisitedCountries.domain.User;
import VisitedCountries.domain.UserRepository;
import VisitedCountries.domain.CountryRepository;
import VisitedCountries.domain.PersonCountryRepository;

@SpringBootApplication
public class VisitedCountriesApplication {

	public static void main(String[] args) {
		SpringApplication.run(VisitedCountriesApplication.class, args);
	}
//	@Bean
//	public CommandLineRunner bookDemo(PersonRepository prepository, CountryRepository crepository, PersonCountryRepository pcrepository, UserRepository urepository) {
//		return (args)-> {
//			System.out.println("Pistetään pari testiä");
//			
//			crepository.save(new Country("Germany", "Ge"));
//			crepository.save(new Country("Finland", "Fi"));
//			crepository.save(new Country("Greece", "Ge"));
//						
//			prepository.save(new Person("Sampsa", "Leikas"));
//			prepository.save(new Person("Tomi", "Turtia"));
//			System.out.println(prepository.findByfirstName("Sampsa"));
//			System.out.println(crepository.findBycountryName("Germany"));
//			
//			pcrepository.save(new PersonCountry(prepository.findByfirstName("Tomi").get(0), crepository.findBycountryName("Germany").get(0), "19.9.1995"));
//			pcrepository.save(new PersonCountry(prepository.findByfirstName("Sampsa").get(0), crepository.findBycountryName("Greece").get(0), "7.7.2000"));
//			
//			System.out.println("Tulostetaan");
//			for (PersonCountry pcountry: pcrepository.findAll()) {
//				System.out.println(pcountry.toString());
//			}
//			User user1 = new User("user", "$2a$06$3jYRJrg0ghaaypjZ/.g4SethoeA51ph3UD4kZi9oPkeMTpjKU5uo6", "ROLE_USER");
//			User user2 = new User("admin", "$2a$10$0MMwY.IQqpsVc1jC8u7IJ.2rT8b0Cd3b3sfIBGV2zfgnPGtT4r0.C", "ROLE_ADMIN");
//			urepository.save(user1);
//			urepository.save(user2);
//			
//		};
//	}
}
