package VisitedCountries.domain;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
public class Person {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long personId;	
	@NotNull
	@Size(min=2, max=100)
	public String firstName;
	public String lastName;
	
	@OneToMany(mappedBy="person", cascade = CascadeType.REMOVE)
	Set<PersonCountry> countries;
	
	public Person() {
		
	}

	public Person(@Size(min = 2, max = 100) String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
	
	public Long getPersonId() {
		return personId;
	}

	public void setPersonId(Long personId) {
		this.personId = personId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Override
	public String toString() {
		return "Person [personId=" + personId + ", firstName=" + firstName + ", lastName=" + lastName;
	}
	
}
