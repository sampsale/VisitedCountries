SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS country; 
DROP TABLE IF EXISTS person; 
DROP TABLE IF EXISTS personcountry; 
DROP TABLE IF EXISTS user; 
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE user (
	id BIGINT NOT NULL AUTO_INCREMENT,
	username	VARCHAR(100),
	password	VARCHAR(100),
	role VARCHAR(100),
	PRIMARY KEY (id)
);

CREATE TABLE country (
	countryid BIGINT NOT NULL AUTO_INCREMENT,
	countryname	VARCHAR(100),
	iso	VARCHAR(2),
	PRIMARY KEY (countryid)
);

CREATE TABLE person (
	personid BIGINT NOT NULL AUTO_INCREMENT,
	firstname VARCHAR(100),
	lastname VARCHAR(100),
	PRIMARY KEY (personid)
);

CREATE TABLE personcountry (
	id BIGINT NOT NULL AUTO_INCREMENT,
	date VARCHAR(100),
	PRIMARY KEY (id),
	countryid BIGINT NOT NULL,
	personid BIGINT NOT NULL,
	FOREIGN KEY (countryid) REFERENCES country (countryid),
	FOREIGN KEY (personid) REFERENCES person (personid)
	
);

INSERT INTO user (password, role, username) VALUES ('$2a$10$0MMwY.IQqpsVc1jC8u7IJ.2rT8b0Cd3b3sfIBGV2zfgnPGtT4r0.C', 'ROLE_ADMIN', 'admin');
INSERT INTO user (password, role, username) VALUES ('$2a$06$3jYRJrg0ghaaypjZ/.g4SethoeA51ph3UD4kZi9oPkeMTpjKU5uo6', 'ROLE_USER', 'user');


INSERT INTO person (firstname, lastname) VALUES ('Sampsa', 'Leikas');
INSERT INTO person (firstname, lastname) VALUES ('Julius', 'Sajaniemi');
INSERT INTO person (firstname, lastname) VALUES ('Arto', 'Rinne');
INSERT INTO person (firstname, lastname) VALUES ('Matti', 'Meikäläinen');

	INSERT INTO country (countryname, iso) VALUES ('Afghanistan', 'AF');
	INSERT INTO country (countryname, iso) VALUES ('Albania', 'AL');
	INSERT INTO country (countryname, iso) VALUES ('Algeria', 'DZ');
	INSERT INTO country (countryname, iso) VALUES ('American Samoa', 'AS');
	INSERT INTO country (countryname, iso) VALUES ('Andorra', 'AD');
	INSERT INTO country (countryname, iso) VALUES ('Angola', 'AO');
	INSERT INTO country (countryname, iso) VALUES ('Anguilla', 'AI');
	INSERT INTO country (countryname, iso) VALUES ('Antarctica', 'AQ');
	INSERT INTO country (countryname, iso) VALUES ('Antigua and Barbuda', 'AG');
	INSERT INTO country (countryname, iso) VALUES ('Argentina', 'AR');
	INSERT INTO country (countryname, iso) VALUES ('Armenia', 'AM');
	INSERT INTO country (countryname, iso) VALUES ('Aruba', 'AW');
	INSERT INTO country (countryname, iso) VALUES ('Australia', 'AU');
	INSERT INTO country (countryname, iso) VALUES ('Austria', 'AT');
	INSERT INTO country (countryname, iso) VALUES ('Azerbaijan', 'AZ');
	INSERT INTO country (countryname, iso) VALUES ('Bahamas', 'BS');
	INSERT INTO country (countryname, iso) VALUES ('Bahrain', 'BH');
	INSERT INTO country (countryname, iso) VALUES ('Bangladesh', 'BD');
	INSERT INTO country (countryname, iso) VALUES ('Barbados', 'BB');
	INSERT INTO country (countryname, iso) VALUES ('Belarus', 'BY');
	INSERT INTO country (countryname, iso) VALUES ('Belgium', 'BE');
	INSERT INTO country (countryname, iso) VALUES ('Belize', 'BZ');
	INSERT INTO country (countryname, iso) VALUES ('Benin', 'BJ');
	INSERT INTO country (countryname, iso) VALUES ('Bermuda', 'BM');
	INSERT INTO country (countryname, iso) VALUES ('Bhutan', 'BT');
	INSERT INTO country (countryname, iso) VALUES ('Bosnia and Herzegovina', 'BA');
	INSERT INTO country (countryname, iso) VALUES ('Botswana', 'BW');
	INSERT INTO country (countryname, iso) VALUES ('Bouvet Island', 'BV');
	INSERT INTO country (countryname, iso) VALUES ('Brazil', 'BR');
	INSERT INTO country (countryname, iso) VALUES ('British Indian Ocean Territory', 'IO');
	INSERT INTO country (countryname, iso) VALUES ('Brunei Darussalam', 'BN');
	INSERT INTO country (countryname, iso) VALUES ('Bulgaria', 'BG');
	INSERT INTO country (countryname, iso) VALUES ('Burkina Faso', 'BF');
	INSERT INTO country (countryname, iso) VALUES ('Burundi', 'BI');
	INSERT INTO country (countryname, iso) VALUES ('Cambodia', 'KH');
	INSERT INTO country (countryname, iso) VALUES ('Cameroon', 'CM');
	INSERT INTO country (countryname, iso) VALUES ('Canada', 'CA');
	INSERT INTO country (countryname, iso) VALUES ('Cape Verde', 'CV');
	INSERT INTO country (countryname, iso) VALUES ('Cayman Islands', 'KY');
	INSERT INTO country (countryname, iso) VALUES ('Central African Republic', 'CF');
	INSERT INTO country (countryname, iso) VALUES ('Chad', 'TD');
	INSERT INTO country (countryname, iso) VALUES ('Chile', 'CL');
	INSERT INTO country (countryname, iso) VALUES ('China', 'CN');
	INSERT INTO country (countryname, iso) VALUES ('Christmas Island', 'CX');
	INSERT INTO country (countryname, iso) VALUES ('Cocos (Keeling) Islands', 'CC');
	INSERT INTO country (countryname, iso) VALUES ('Colombia', 'CO');
	INSERT INTO country (countryname, iso) VALUES ('Comoros', 'KM');
	INSERT INTO country (countryname, iso) VALUES ('Congo', 'CG');
	INSERT INTO country (countryname, iso) VALUES ('Cook Islands', 'CK');
	INSERT INTO country (countryname, iso) VALUES ('Costa Rica', 'CR');
	INSERT INTO country (countryname, iso) VALUES ('Croatia', 'HR');
	INSERT INTO country (countryname, iso) VALUES ('Cuba', 'CU');
	INSERT INTO country (countryname, iso) VALUES ('Cyprus', 'CY');
	INSERT INTO country (countryname, iso) VALUES ('Czech Republic', 'CZ');
	INSERT INTO country (countryname, iso) VALUES ('Denmark', 'DK');
	INSERT INTO country (countryname, iso) VALUES ('Djibouti', 'DJ');
	INSERT INTO country (countryname, iso) VALUES ('Dominica', 'DM');
	INSERT INTO country (countryname, iso) VALUES ('Dominican Republic', 'DO');
	INSERT INTO country (countryname, iso) VALUES ('Ecuador', 'EC');
	INSERT INTO country (countryname, iso) VALUES ('Egypt', 'EG');
	INSERT INTO country (countryname, iso) VALUES ('El Salvador', 'SV');
	INSERT INTO country (countryname, iso) VALUES ('Equatorial Guinea', 'GQ');
	INSERT INTO country (countryname, iso) VALUES ('Eritrea', 'ER');
	INSERT INTO country (countryname, iso) VALUES ('Estonia', 'EE');
	INSERT INTO country (countryname, iso) VALUES ('Ethiopia', 'ET');
	INSERT INTO country (countryname, iso) VALUES ('Falkland Islands (Malvinas)' ,'FK');
	INSERT INTO country (countryname, iso) VALUES ('Faroe Islands', 'FO');
	INSERT INTO country (countryname, iso) VALUES ('Fiji', 'FJ');
	INSERT INTO country (countryname, iso) VALUES ('Finland', 'FI');
	INSERT INTO country (countryname, iso) VALUES ('France', 'FR');
	INSERT INTO country (countryname, iso) VALUES ('French Guiana', 'GF');
	INSERT INTO country (countryname, iso) VALUES ('French Polynesia', 'PF');
	INSERT INTO country (countryname, iso) VALUES ('French Southern Territories', 'TF');
	INSERT INTO country (countryname, iso) VALUES ('Gabon', 'GA');
	INSERT INTO country (countryname, iso) VALUES ('Gambia', 'GM');
	INSERT INTO country (countryname, iso) VALUES ('Georgia', 'GE');
	INSERT INTO country (countryname, iso) VALUES ('Germany', 'DE');
	INSERT INTO country (countryname, iso) VALUES ('Ghana', 'GH');
	INSERT INTO country (countryname, iso) VALUES ('Gibraltar', 'GI');
	INSERT INTO country (countryname, iso) VALUES ('Greece', 'GR');
	INSERT INTO country (countryname, iso) VALUES ('Greenland', 'GL');
	INSERT INTO country (countryname, iso) VALUES ('Grenada', 'GD');
	INSERT INTO country (countryname, iso) VALUES ('Guadeloupe', 'GP');
	INSERT INTO country (countryname, iso) VALUES ('Guam', 'GU');
	INSERT INTO country (countryname, iso) VALUES ('Guatemala', 'GT');
	INSERT INTO country (countryname, iso) VALUES ('Guernsey', 'GG');
	INSERT INTO country (countryname, iso) VALUES ('Guinea', 'GN');
	INSERT INTO country (countryname, iso) VALUES ('Guinea-Bissau', 'GW');
	INSERT INTO country (countryname, iso) VALUES ('Guyana', 'GY');
	INSERT INTO country (countryname, iso) VALUES ('Haiti', 'HT');
	INSERT INTO country (countryname, iso) VALUES ('Heard Island and McDonald Islands', 'HM');
	INSERT INTO country (countryname, iso) VALUES ('Holy See (Vatican City State)' ,'VA');
	INSERT INTO country (countryname, iso) VALUES ('Honduras', 'HN');
	INSERT INTO country (countryname, iso) VALUES ('Hong Kong', 'HK');
	INSERT INTO country (countryname, iso) VALUES ('Hungary', 'HU');
	INSERT INTO country (countryname, iso) VALUES ('Iceland', 'IS');
	INSERT INTO country (countryname, iso) VALUES ('India', 'IN');
	INSERT INTO country (countryname, iso) VALUES ('Indonesia', 'ID');
	INSERT INTO country (countryname, iso) VALUES ('Iraq', 'IQ');
	INSERT INTO country (countryname, iso) VALUES ('Ireland', 'IE');
	INSERT INTO country (countryname, iso) VALUES ('Isle of Man', 'IM');
	INSERT INTO country (countryname, iso) VALUES ('Israel', 'IL');
	INSERT INTO country (countryname, iso) VALUES ('Italy', 'IT');
	INSERT INTO country (countryname, iso) VALUES ('Jamaica', 'JM');
	INSERT INTO country (countryname, iso) VALUES ('Japan', 'JP');
	INSERT INTO country (countryname, iso) VALUES ('Jersey', 'JE');
	INSERT INTO country (countryname, iso) VALUES ('Jordan', 'JO');
	INSERT INTO country (countryname, iso) VALUES ('Kazakhstan', 'KZ');
	INSERT INTO country (countryname, iso) VALUES ('Kenya', 'KE');
	INSERT INTO country (countryname, iso) VALUES ('Kiribati', 'KI');
	INSERT INTO country (countryname, iso) VALUES ('Kuwait', 'KW');
	INSERT INTO country (countryname, iso) VALUES ('Kyrgyzstan', 'KG');
	INSERT INTO country (countryname, iso) VALUES ('Lao Peoples Democratic Republic', 'LA');
	INSERT INTO country (countryname, iso) VALUES ('Latvia', 'LV');
	INSERT INTO country (countryname, iso) VALUES ('Lebanon', 'LB');
	INSERT INTO country (countryname, iso) VALUES ('Lesotho', 'LS');
	INSERT INTO country (countryname, iso) VALUES ('Liberia', 'LR');
	INSERT INTO country (countryname, iso) VALUES ('Libya', 'LY');
	INSERT INTO country (countryname, iso) VALUES ('Liechtenstein', 'LI');
	INSERT INTO country (countryname, iso) VALUES ('Lithuania', 'LT');
	INSERT INTO country (countryname, iso) VALUES ('Luxembourg', 'LU');
	INSERT INTO country (countryname, iso) VALUES ('Macao', 'MO');
	INSERT INTO country (countryname, iso) VALUES ('Madagascar', 'MG');
	INSERT INTO country (countryname, iso) VALUES ('Malawi', 'MW');
	INSERT INTO country (countryname, iso) VALUES ('Malaysia', 'MY');
	INSERT INTO country (countryname, iso) VALUES ('Maldives', 'MV');
	INSERT INTO country (countryname, iso) VALUES ('Mali', 'ML');
	INSERT INTO country (countryname, iso) VALUES ('Malta', 'MT');
	INSERT INTO country (countryname, iso) VALUES ('Marshall Islands', 'MH');
	INSERT INTO country (countryname, iso) VALUES ('Martinique', 'MQ');
	INSERT INTO country (countryname, iso) VALUES ('Mauritania', 'MR');
	INSERT INTO country (countryname, iso) VALUES ('Mauritius', 'MU');
	INSERT INTO country (countryname, iso) VALUES ('Mayotte', 'YT');
	INSERT INTO country (countryname, iso) VALUES ('Mexico', 'MX');
	INSERT INTO country (countryname, iso) VALUES ('Monaco', 'MC');
	INSERT INTO country (countryname, iso) VALUES ('Mongolia', 'MN');
	INSERT INTO country (countryname, iso) VALUES ('Montenegro', 'ME');
	INSERT INTO country (countryname, iso) VALUES ('Montserrat', 'MS');
	INSERT INTO country (countryname, iso) VALUES ('Morocco', 'MA');
	INSERT INTO country (countryname, iso) VALUES ('Mozambique', 'MZ');
	INSERT INTO country (countryname, iso) VALUES ('Myanmar', 'MM');
	INSERT INTO country (countryname, iso) VALUES ('Namibia', 'NA');
	INSERT INTO country (countryname, iso) VALUES ('Nauru', 'NR');
	INSERT INTO country (countryname, iso) VALUES ('Nepal', 'NP');
	INSERT INTO country (countryname, iso) VALUES ('Netherlands', 'NL');
	INSERT INTO country (countryname, iso) VALUES ('New Caledonia', 'NC');
	INSERT INTO country (countryname, iso) VALUES ('New Zealand', 'NZ');
	INSERT INTO country (countryname, iso) VALUES ('Nicaragua', 'NI');
	INSERT INTO country (countryname, iso) VALUES ('Niger', 'NE');
	INSERT INTO country (countryname, iso) VALUES ('Nigeria', 'NG');
	INSERT INTO country (countryname, iso) VALUES ('Niue', 'NU');
	INSERT INTO country (countryname, iso) VALUES ('Norfolk Island', 'NF');
	INSERT INTO country (countryname, iso) VALUES ('Northern Mariana Islands', 'MP');
	INSERT INTO country (countryname, iso) VALUES ('Norway', 'NO');
	INSERT INTO country (countryname, iso) VALUES ('Oman', 'OM');
	INSERT INTO country (countryname, iso) VALUES ('Pakistan', 'PK');
	INSERT INTO country (countryname, iso) VALUES ('Palau', 'PW');
	INSERT INTO country (countryname, iso) VALUES ('Panama', 'PA');
	INSERT INTO country (countryname, iso) VALUES ('Papua New Guinea', 'PG');
	INSERT INTO country (countryname, iso) VALUES ('Paraguay', 'PY');
	INSERT INTO country (countryname, iso) VALUES ('Peru', 'PE');
	INSERT INTO country (countryname, iso) VALUES ('Philippines', 'PH');
	INSERT INTO country (countryname, iso) VALUES ('Pitcairn', 'PN');
	INSERT INTO country (countryname, iso) VALUES ('Poland', 'PL');
	INSERT INTO country (countryname, iso) VALUES ('Portugal', 'PT');
	INSERT INTO country (countryname, iso) VALUES ('Puerto Rico', 'PR');
	INSERT INTO country (countryname, iso) VALUES ('Qatar', 'QA');
	INSERT INTO country (countryname, iso) VALUES ('Romania', 'RO');
	INSERT INTO country (countryname, iso) VALUES ('Russian Federation', 'RU');
	INSERT INTO country (countryname, iso) VALUES ('Rwanda', 'RW');
	INSERT INTO country (countryname, iso) VALUES ('Saint Kitts and Nevis', 'KN');
	INSERT INTO country (countryname, iso) VALUES ('Saint Lucia', 'LC');
	INSERT INTO country (countryname, iso) VALUES ('Saint Martin (French part)' ,'MF');
	INSERT INTO country (countryname, iso) VALUES ('Saint Pierre and Miquelon', 'PM');
	INSERT INTO country (countryname, iso) VALUES ('Saint Vincent and the Grenadines', 'VC');
	INSERT INTO country (countryname, iso) VALUES ('Samoa', 'WS');
	INSERT INTO country (countryname, iso) VALUES ('San Marino', 'SM');
	INSERT INTO country (countryname, iso) VALUES ('Sao Tome and Principe', 'ST');
	INSERT INTO country (countryname, iso) VALUES ('Saudi Arabia', 'SA');
	INSERT INTO country (countryname, iso) VALUES ('Senegal', 'SN');
	INSERT INTO country (countryname, iso) VALUES ('Serbia', 'RS');
	INSERT INTO country (countryname, iso) VALUES ('Seychelles', 'SC');
	INSERT INTO country (countryname, iso) VALUES ('Sierra Leone', 'SL');
	INSERT INTO country (countryname, iso) VALUES ('Singapore', 'SG');
	INSERT INTO country (countryname, iso) VALUES ('Sint Maarten (Dutch part)' ,'SX');
	INSERT INTO country (countryname, iso) VALUES ('Slovakia', 'SK');
	INSERT INTO country (countryname, iso) VALUES ('Slovenia', 'SI');
	INSERT INTO country (countryname, iso) VALUES ('Solomon Islands', 'SB');
	INSERT INTO country (countryname, iso) VALUES ('Somalia', 'SO');
	INSERT INTO country (countryname, iso) VALUES ('South Africa', 'ZA');
	INSERT INTO country (countryname, iso) VALUES ('South Georgia and the South Sandwich Islands', 'GS');
	INSERT INTO country (countryname, iso) VALUES ('South Sudan', 'SS');
	INSERT INTO country (countryname, iso) VALUES ('Spain', 'ES');
	INSERT INTO country (countryname, iso) VALUES ('Sri Lanka', 'LK');
	INSERT INTO country (countryname, iso) VALUES ('Sudan', 'SD');
	INSERT INTO country (countryname, iso) VALUES ('Suricountryname', 'SR');
	INSERT INTO country (countryname, iso) VALUES ('Svalbard and Jan Mayen', 'SJ');
	INSERT INTO country (countryname, iso) VALUES ('Swaziland', 'SZ');
	INSERT INTO country (countryname, iso) VALUES ('Sweden', 'SE');
	INSERT INTO country (countryname, iso) VALUES ('Switzerland', 'CH');
	INSERT INTO country (countryname, iso) VALUES ('Syrian Arab Republic', 'SY');
	INSERT INTO country (countryname, iso) VALUES ('Tajikistan', 'TJ');
	INSERT INTO country (countryname, iso) VALUES ('Thailand', 'TH');
	INSERT INTO country (countryname, iso) VALUES ('Timor-Leste', 'TL');
	INSERT INTO country (countryname, iso) VALUES ('Togo', 'TG');
	INSERT INTO country (countryname, iso) VALUES ('Tokelau', 'TK');
	INSERT INTO country (countryname, iso) VALUES ('Tonga', 'TO');
	INSERT INTO country (countryname, iso) VALUES ('Trinidad and Tobago', 'TT');
	INSERT INTO country (countryname, iso) VALUES ('Tunisia', 'TN');
	INSERT INTO country (countryname, iso) VALUES ('Turkey', 'TR');
	INSERT INTO country (countryname, iso) VALUES ('Turkmenistan', 'TM');
	INSERT INTO country (countryname, iso) VALUES ('Turks and Caicos Islands', 'TC');
	INSERT INTO country (countryname, iso) VALUES ('Tuvalu', 'TV');
	INSERT INTO country (countryname, iso) VALUES ('Uganda', 'UG');
	INSERT INTO country (countryname, iso) VALUES ('Ukraine', 'UA');
	INSERT INTO country (countryname, iso) VALUES ('United Arab Emirates', 'AE');
	INSERT INTO country (countryname, iso) VALUES ('United Kingdom', 'GB');
	INSERT INTO country (countryname, iso) VALUES ('United States', 'US');
	INSERT INTO country (countryname, iso) VALUES ('United States Minor Outlying Islands', 'UM');
	INSERT INTO country (countryname, iso) VALUES ('Uruguay', 'UY');
	INSERT INTO country (countryname, iso) VALUES ('Uzbekistan', 'UZ');
	INSERT INTO country (countryname, iso) VALUES ('Vanuatu', 'VU');
	INSERT INTO country (countryname, iso) VALUES ('Viet Nam', 'VN');
	INSERT INTO country (countryname, iso) VALUES ('Wallis and Futuna', 'WF');
	INSERT INTO country (countryname, iso) VALUES ('Western Sahara', 'EH');
	INSERT INTO country (countryname, iso) VALUES ('Yemen', 'YE');
	INSERT INTO country (countryname, iso) VALUES ('Zambia', 'ZM');
	INSERT INTO country (countryname, iso) VALUES ('Zimbabwe', 'ZW');




