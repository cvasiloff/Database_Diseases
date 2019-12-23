--Select diseases and list the names of their symptoms
select di.DISEASE_NAME "Disease Name", sy.SYMPTOM_NAME "Symptom Name" 
from DISEASE di, SYMPTOMS sy 
where di.SYMPTOM_ID = sy.SYMPTOM_ID;

--Selects disesases and gives number of symptoms;
select DISEASE_NAME "Disease Name", count(SYMPTOM_ID) "Number of Symptoms" 
from DISEASE
group by DISEASE_NAME;

--Selects diseases and shows how many diseases are in each country based on population
select sa.COUNTRY_NAME "Country Name", co.POPULATION_SIZE "Size of Population",
count(co.DISEASE_NAME) "Number of Diseases"
from SOUTH_AMERICA sa, COUNTRY co 
where sa.COUNTRY_CODE = co.COUNTRY_CODE 
group by sa.COUNTRY_NAME
order by co.POPULATION_SIZE desc;



create database cvasiloff5771_dbProject;

use database cvasiloff5771_dbProject;

create table SOUTH_AMERICA(
	COUNTRY_NAME varchar(20) not null,
	COUNTRY_CODE varchar(3) primary key  not null,
	TOURISIM_RATE int(9) not null
);

create table COUNTRY(
	COUNTRY_ID bigInt(100) primary key not null auto_increment,
	COUNTRY_CODE varchar(3) not null,
	DISEASE_NAME varchar(20) not null,
	GOV_FUNDS int(9) not null,
	POPULATION_SIZE int(9) not null
);

create table DISEASE(
	DISEASE_ID bigInt(100) primary key not null auto_increment,
	DISEASE_NAME varchar(20) not null,
	SYMPTOM_ID bigInt(100),
	VACCINE enum("Y","N") default "N"
);

create table SYMPTOMS(
	SYMPTOM_ID bigInt(100) primary key not null auto_increment,
	SYMPTOM_NAME varchar(100) not null
);

alter table COUNTRY add foreign key(COUNTRY_CODE) references SOUTH_AMERICA(COUNTRY_CODE);
alter table COUNTRY add foreign key(DISEASE_NAME) references DISEASE(DISEASE_NAME);
alter table DISEASE add foreign key(SYMPTOM_ID) references SYMPTOM(SYMPTOM_ID);
alter table DISEASE add foreign key(COUNTRY_CODE) references COUNTRY(COUNTRY_CODE);


insert into COUNTRY
(COUNTRY_CODE, POPULATION_SIZE, GOV_FUNDS, DISEASE_NAME)
values 
("ARG", 45101781, 6.83, "Hepatitis A"), ("ARG", 45101781, 6.83, "Hepatitis B"), ("ARG", 45101781, 6.83, "Malaria"),
("ARG", 45101781, 6.83, "Rabies"), ("ARG", 45101781, 6.83, "Yellow Fever"), ("ARG", 45101781, 6.83, "Zika"),
("ARG", 45101781, 6.83, "Typhoid"),

("BOL", 11379861, 6.41, "Hepatitis A"), ("BOL", 11379861, 6.41, "Hepatitis B"), ("BOL", 11379861, 6.41, "Typhoid"),
("BOL", 11379861, 6.41, "Malaria"), ("BOL", 11379861, 6.41, "Rabies"), ("BOL", 11379861, 6.41, "Yellow Fever"),

("BRA", 212392717, 8.91, "Hepatitis A"), ("BRA", 212392717, 8.91, "Hepatitis B"), ("BRA", 212392717, 8.91, "Typhoid"),
("BRA", 212392717, 8.91, "Malaria"), ("BRA", 212392717, 8.91, "Rabies"), ("BRA", 212392717, 8.91, "Yellow Fever"),
("BRA", 212392717, 8.91, "Zika"),

("CHL", 18050000, 6, "Hepatitis A"), ("CHL", 18050000, 6, "Hepatitis B"), ("CHL", 18050000, 6, "Typhoid"),
("CHL", 18050000, 6, "Malaria"), ("CHL", 18050000, 6, "Rabies"), ("CHL", 18050000, 6, "Yellow Fever"),
("CHL", 18050000, 6, "Heart Disease"),

("COL", 49849818, 6.19, "Hepatitis A"), ("COL", 49849818, 6.19, "Hepatitis B"), ("COL", 49849818, 6.19, "Typhoid"),
("COL", 49849818, 6.19, "Malaria"), ("COL", 49849818, 6.19, "Rabies"), ("COL", 49849818, 6.19, "Yellow Fever"),
("COL", 49849818, 6.19, "Zika"),

("ECU", 17100444, 8.54, "Hepatitis A"), ("ECU", 17100444, 8.54, "Hepatitis B"), ("ECU", 17100444, 8.54, "Typhoid"),
("ECU", 17100444, 8.54, "Malaria"), ("ECU", 17100444, 8.54, "Rabies"), ("ECU", 17100444, 8.54, "Yellow Fever"),
("ECU", 17100444, 8.54, "Tuberculosis"),

("GUY", 786508, 4.48, "Hepatitis A"), ("GUY", 786508, 4.48, "Hepatitis B"), ("GUY", 786508, 4.48, "Typhoid"),
("GUY", 786508, 4.48, "Malaria"), ("GUY", 786508, 4.48, "Rabies"), ("GUY", 786508, 4.48, "Yellow Fever"),
("GUY", 786508, 4.48, "Heart Disease"), ("GUY", 786508, 4.48, "Respiratory Infection"),

("PER", 32933835, 5.26, "Hepatitis A"), ("PER", 32933835, 5.26, "Hepatitis B"), ("PER", 32933835, 5.26, "Typhoid"),
("PER", 32933835, 5.26, "Malaria"), ("PER", 32933835, 5.26, "Rabies"), ("PER", 32933835, 5.26, "Yellow Fever"),
("PER", 32933835, 5.26, "Zika"),

("PRY", 6981981, 7.82, "Hepatitis A"), ("PRY", 6981981, 7.82, "Hepatitis B"), ("PRY", 6981981, 7.82, "Typhoid"),
("PRY", 6981981, 7.82, "Malaria"), ("PRY", 6981981, 7.82, "Rabies"), ("PRY", 6981981, 7.82, "Yellow Fever"),
("PRY", 6981981, 7.82, "Zika"),

("SUR", 573085, 6.55, "Hepatitis A"), ("SUR", 573085, 6.55, "Hepatitis B"), ("SUR", 573085, 6.55, "Typhoid"),
("SUR", 573085, 6.55, "Malaria"), ("SUR", 573085, 6.55, "Rabies"), ("SUR", 573085, 6.55, "Yellow Fever"),
("SUR", 573085, 6.55, "Zika"),

("URY", 3482156, 9.22, "Hepatitis A"), ("URY", 3482156, 9.22, "Hepatitis B"), ("URY", 3482156, 9.22, "Typhoid"),
("URY", 3482156, 9.22, "Malaria"), ("URY", 3482156, 9.22, "Rabies"), ("URY", 3482156, 9.22, "Yellow Fever"),
("URY", 3482156, 9.22, "Respiratory Infection"), ("URY", 3482156, 9.22, "Heart Disease"),

("VEN", 32779868, 3.16, "Hepatitis A"), ("VEN", 32779868, 3.16, "Hepatitis B"), ("VEN", 32779868, 3.16, "Typhoid"),
("VEN", 32779868, 3.16, "Malaria"), ("VEN", 32779868, 3.16, "Rabies"), ("VEN", 32779868, 3.16, "Yellow Fever"),
("VEN", 32779868, 3.16, "Zika")
;

insert into SOUTH_AMERICA 
(COUNTRY_NAME, TOURISIM_RATE, COUNTRY_CODE)
values 
("Argentina", 6720000, "ARG"), ("Bolivia", 1134000, "BOL"), ("Brazil", 6589000, "BRA"),
("Columbia", 4113000, "COL"), ("Ecuador", 1608000, "ECU"), ("Guyana", 247000, "GUY"),
("Peru", 4032000, "PER"), ("Paraguay", 1584000, "PRY"), ("Suriname", 278000, "SUR"),
("Uruguay", 3647000, "URY"), ("Venezuela", 427000, "VEN"), ("Chile", 18050000, "CHL")
;

insert into DISEASE
(DISEASE_NAME, VACCINE, SYMPTOM_ID)
values
("Hepatitis A", "Y", 5), ("Hepatitis A", "Y", 8), ("Hepatitis A", "Y", 11),
("Hepatitis A", "Y", 26), ("Hepatitis A", "Y", 14), ("Hepatitis A", "Y", 17),
("Hepatitis A", "Y", 29), ("Hepatitis A", "Y", 23), ("Hepatitis A", "Y", 98),
("Hepatitis A", "Y", 32),

("Hepatitis B", "Y", 26), ("Hepatitis B", "Y", 29), ("Hepatitis B", "Y", 17),
("Hepatitis B", "Y", 23), ("Hepatitis B", "Y", 8), ("Hepatitis B", "Y", 11),
("Hepatitis B", "Y", 5), ("Hepatitis B", "Y", 32),

("Typhoid", "Y", 26), ("Typhoid", "Y", 164), ("Typhoid", "Y", 5),
("Typhoid", "Y", 17), ("Typhoid", "Y", 38), ("Typhoid", "Y", 14),
("Typhoid", "Y", 44), ("Typhoid", "Y", 152), ("Typhoid", "Y", 98),

("Malaria", "Y", 38), ("Malaria", "Y", 17), ("Malaria", "Y", 41),
("Malaria", "Y", 44), ("Malaria", "Y", 8), ("Malaria", "Y", 11),
("Malaria", "Y", 26), ("Malaria", "Y", 35), ("Malaria", "Y", 101),

("Rabies", "Y", 50), ("Rabies", "Y", 53), ("Rabies", "Y", 56),
("Rabies", "Y", 59), ("Rabies", "Y", 62), ("Rabies", "Y", 65),
("Rabies", "Y", 17), ("Rabies", "Y", 68), ("Rabies", "Y", 71),

("Yellow Fever", "Y", 17), ("Yellow Fever", "Y", 44), ("Yellow Fever", "Y", 161),
("Yellow Fever", "Y", 164), ("Yellow Fever", "Y", 8), ("Yellow Fever", "Y", 11),
("Yellow Fever", "Y", 14), ("Yellow Fever", "Y", 74), ("Yellow Fever", "Y", 32),

("Heart Disease", "Y", 80), ("Heart Disease", "Y", 83), ("Heart Disease", "Y", 86),
("Heart Disease", "Y", 5),

("Tuberculosis", "Y", 92), ("Tuberculosis", "Y", 95), ("Tuberculosis", "Y", 98),
("Tuberculosis", "Y", 5), ("Tuberculosis", "Y", 17), ("Tuberculosis", "Y", 101),
("Tuberculosis", "Y", 38), ("Tuberculosis", "Y", 110), ("Tuberculosis", "Y", 83),
("Tuberculosis", "Y", 14),

("HIV", "N", 26), ("HIV", "N", 119), ("HIV", "N", 47),
("HIV", "N", 5), ("HIV", "N", 17), ("HIV", "N", 14),
("HIV", "N", 101), ("HIV", "N", 11), ("HIV", "N", 41),
("HIV", "N", 8), ("HIV", "N", 116), ("HIV", "N", 107),
("HIV", "N", 152), ("HIV", "N", 110),

("AIDS", "N", 26), ("AIDS", "N", 119), ("AIDS", "N", 47),
("AIDS", "N", 5), ("AIDS", "N", 17), ("AIDS", "N", 14),
("AIDS", "N", 101), ("AIDS", "N", 11), ("AIDS", "N", 41),
("AIDS", "N", 8), ("AIDS", "N", 116), ("AIDS", "N", 107),
("AIDS", "N", 152), ("AIDS", "N", 110),

("Respiratory Infection", "Y", 125), ("Respiratory Infection", "Y", 128),
("Respiratory Infection", "Y", 131), ("Respiratory Infection", "Y", 134),
("Respiratory Infection", "Y", 119), ("Respiratory Infection", "Y", 140),
("Respiratory Infection", "Y", 110),

("Lung Cancer", "N", 92), ("Lung Cancer", "N", 80), ("Lung Cancer", "N", 140),
("Lung Cancer", "N", 98), ("Lung Cancer", "N", 14), ("Lung Cancer", "N", 83),
("Lung Cancer", "N", 110), ("Lung Cancer", "N", 5),

("Throat Cancer", "N", 140), ("Throat Cancer", "N", 119), ("Throat Cancer", "N", 158),
("Throat Cancer", "N", 134), ("Throat Cancer", "N", 110), ("Throat Cancer", "N", 98),

("Liver Cancer", "N", 98), ("Liver Cancer", "N", 26), ("Liver Cancer", "N", 8),
("Liver Cancer", "N", 11), ("Liver Cancer", "N", 5), ("Liver Cancer", "N", 32),
("Liver Cancer", "N", 143),

("Influenza", "Y", 17), ("Influenza", "Y", 134), ("Influenza", "Y", 128),
("Influenza", "Y", 5), ("Influenza", "Y", 44), ("Influenza", "Y", 134),
("Influenza", "Y", 83), ("Influenza", "Y", 164), ("Influenza", "Y", 110),
("Influenza", "Y", 146), ("Influenza", "Y", 8),

("Ebola", "N", 17), ("Ebola", "N", 44), ("Ebola", "N", 164),
("Ebola", "N", 5), ("Ebola", "N", 35), ("Ebola", "N", 11),
("Ebola", "N", 26), ("Ebola", "N", 92), ("Ebola", "N", 146),
("Ebola", "N", 152), ("Ebola", "N", 74),

("Cholera", "Y", 26), ("Cholera", "Y", 11), ("Cholera", "Y", 146),

("Smallpox", "Y", 164), ("Smallpox", "Y", 152), ("Smallpox", "Y", 158),
("Smallpox", "Y", 155), ("Smallpox", "Y", 5), ("Smallpox", "Y", 17),
("Smallpox", "Y", 11),

("Zika", "N", 23), ("Zika", "N", 5), ("Zika", "N", 17),
("Zika", "N", 41), ("Zika", "N", 74), ("Zika", "N", 44),

("Lyme Disease", "N", 164), ("Lyme Disease", "N", 23), ("Lyme Disease", "N", 5),
("Lyme Disease", "N", 41), ("Lyme Disease", "N", 44), ("Lyme Disease", "N", 152),

("Swine Flu", "Y", 17), ("Swine Flu", "Y", 38), ("Swine Flu", "Y", 134),
("Swine Flu", "Y", 128), ("Swine Flu", "Y", 164), ("Swine Flu", "Y", 44),
("Swine Flu", "Y", 74)
;

insert into SYMPTOMS
(SYMPTOM_NAME)
values
("Fatigue"), ("Nausea"), ("Vomiting"), ("Loss of appetite"),
("Fever"), ("Itchiness"), ("Joint Pain"), ("Abdominal Pain"),
("Dark Urine"), ("Yellow Skin"), ("Diarrhea"), ("Shivering"),
("Sweating"), ("Headaches"), ("Dry Cough"), ("Irritability"),
("Aggressiveness"), ("Muscle Spasms"), ("Seizures"), ("Anxiety"),
("Excess salivation"), ("Dilated Pupils"), ("Hallucinations"), ("Red Eyes"),
("Bleeding"), ("Chest Discomfort"), ("Shortness of Breath"), ("High blood pressure"),
("Irregular Heartbeat"), ("Coughing up Blood"), ("Chest Pain"), ("Weight Loss"),
("Night Sweats"), ("Sores"), ("Pneumonia"), ("Swollen lymph nodes"),
("Ulcers in mouth"), ("Ulcers on genitals"), ("Difficulty Swallowing"), ("Dark Splotches under the skin"),
("Nasal Congestion"), ("Runny Nose"), ("Sneezing"), ("Sore Throat"),
("Nasal Drip"), ("Hoarseness"), ("Chalky Stools"), ("Dehydration"),
("Low Blood Pressure"), ("Skin Rash"), ("Blistering"), ("Small Bumps"),
("Sensitivity to Light"), ("Body aches")
;
