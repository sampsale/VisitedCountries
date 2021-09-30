package VisitedCountries.domain;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import com.sun.istack.NotNull;

@Entity
@Table(name="country")
public class Country {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "countryid")
	public Long countryId;
	@NotNull
	@Size(min=2, max=100)
	@Column(name = "countryname")
	public String countryName;
	@Column(name = "iso")
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
