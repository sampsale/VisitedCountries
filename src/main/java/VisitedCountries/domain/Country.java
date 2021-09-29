package VisitedCountries.domain;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
public class Country {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long countryId;
	@NotNull
	@Size(min=2, max=100)
	public String countryName;
	public String iso;
	
	@OneToMany(mappedBy="country", cascade = CascadeType.REMOVE)
	Set<PersonCountry> countries;

	public Country() {
		
	}

	public Country(@Size(min = 2, max = 100) String name, String iso) {
		super();
		this.countryName = name;
		this.iso = iso;
	}

	public Long getCountryId() {
		return this.countryId;
	}

	public void setCountryId(Long countryId) {
		this.countryId = countryId;
	}

	public String getName() {
		return countryName;
	}

	public void setName(String name) {
		this.countryName = name;
	}

	public String getIso() {
		return iso;
	}

	public void setIso(String iso) {
		this.iso = iso;
	}

	@Override
	public String toString() {
		return "Country [countryId=" + countryId + ", countryName=" + countryName + ", iso=" + iso ;
	}
	
	
}
