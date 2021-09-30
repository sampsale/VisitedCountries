package VisitedCountries.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="personcountry")
public class PersonCountry {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	public String date;
	@ManyToOne
    @JoinColumn(name = "personid")
    public Person person;
    @ManyToOne
    @JoinColumn(name = "countryid")
    public Country country;
    
    public PersonCountry() {
    	
    }
    

	public PersonCountry(Person person, Country country, String date) {
		super();
		this.date = date;
		this.person = person;
		this.country = country;
		this.date = date;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Country getCountry() {
		return country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}


	@Override
	public String toString() {
		return "PersonCountry [id=" + id + ", date=" + date + ", person=" + person + ", country=" + country + "]";
	}
    
    
}
